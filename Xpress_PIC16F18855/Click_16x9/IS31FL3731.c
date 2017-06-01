// IS31FL3731 Library
// Muthanna A. Attyah (May 2017)
// Please feel free to copy and use code.
// Device datasheet https://download.mikroe.com/documents/datasheets/is31fl3731-datasheet.pdf 

#ifndef _IS31FL3731_H
#include "IS31FL3731.h"
#endif

//-------------------------------------------------------------------------------------
// Reads 1 byte from IS31FL3731 using SMBus protocol
//-------------------------------------------------------------------------------------
bool IS31FL3731_Read(uint8_t reg, uint8_t *pData)
{
    uint8_t timeOut=0;                                             // will ne used to count retries

    I2C1_MESSAGE_STATUS status = I2C1_MESSAGE_PENDING;              // initial value of status is pending
    static I2C1_TRANSACTION_REQUEST_BLOCK trb[2];                   // TRB is 2 bytes

    I2C1_MasterWriteTRBBuild(&trb[0], &reg, 1, IS31FL3731_ADDRESS);    // build a Write TRB byte to send Reg. Address (paramters: TRB, data, length, address)
    I2C1_MasterReadTRBBuild(&trb[1], pData, 1, IS31FL3731_ADDRESS);    // build a Read TRB byte to read data from Reg.(paramters: TRB, data, length, address)

    while(status != I2C1_MESSAGE_FAIL)
    {
        I2C1_MasterTRBInsert(2, &trb[0], &status);                  // send the full TRB paramters>(length, data, status)
        while(status == I2C1_MESSAGE_PENDING);                      // wait for the message to be sent or status has changed.

        if (status == I2C1_MESSAGE_COMPLETE) break;                 //exit loop if status is complete

        // if status is  I2C1_MESSAGE_ADDRESS_NO_ACK, or I2C1_DATA_NO_ACK, The device may be busy and needs more time for the last write
        // so we can retry writing the data, this is why we use a while loop here

        if (timeOut == RETRY_MAX)   // check for max retry
            break;
        else
            timeOut++;

    }
    return (status == I2C1_MESSAGE_COMPLETE);
}

//-------------------------------------------------------------------------------------
// Writes 1 byte to IS31FL3731 using SMBus protocol
//-------------------------------------------------------------------------------------
bool IS31FL3731_Write(uint8_t reg, uint8_t data)
{
    static I2C1_TRANSACTION_REQUEST_BLOCK trb;                      // TRB
    I2C1_MESSAGE_STATUS status = I2C1_MESSAGE_PENDING;              // initial value of status is pending
    uint8_t timeOut=0;                                              // will be used to count retries
    uint8_t buffer[2];                                              // buffer to store TRB
    buffer[0] = reg; buffer[1] = data;                              // TRB=RegAddress,DataByte

    I2C1_MasterWriteTRBBuild(&trb, buffer, 2, IS31FL3731_ADDRESS);     // build a Write TRB 2 bytes. Address (paramters: TRB, data, length, address)

    while(status != I2C1_MESSAGE_FAIL)
    {
        I2C1_MasterTRBInsert(1, &trb, &status);                     // send the full TRB paramters>(length, data, status)
        while(status == I2C1_MESSAGE_PENDING);                      // wait for the message to be sent or status has changed.

        if (status == I2C1_MESSAGE_COMPLETE) break;                 //exit loop if status is complete

        // if status is  I2C1_MESSAGE_ADDRESS_NO_ACK, or I2C1_DATA_NO_ACK, The device may be busy and needs more time for the last write
        // so we can retry writing the data, this is why we use a while loop here

        if (timeOut == RETRY_MAX)   // check for max retry
            break;
        else
            timeOut++;
    }

    return (status == I2C1_MESSAGE_COMPLETE);
}
