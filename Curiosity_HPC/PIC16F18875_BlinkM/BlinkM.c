// IS31FL3731 Library
// Muthanna A. Attyah (May 2017)
// Please feel free to copy and use code.
// Device data sheet https://thingm.com/fileadmin/thingm/downloads/BlinkM_datasheet.pdf

// How the BlinkM is connected to Curiosity HPC Board:
/**
BlankM  Click   Curiosity HPC
-------------------------------------
I2C C   SCL     RC3     - I2C clock
I2C D   SDA     RC4     - I2C data
PWR-    GND     GND     - Ground
PWR+    +5V     +5V     - Power supply
-------------------------------------
 * RC3 & RC4 must have pull-up resistors enabled since BlinkM does not have pull-up resistors on module.
**/

#ifndef _BlinkM_H
#include "BlinkM.h"
#endif
//---------------------------------------------------------------------------------------------
bool I2C_Write(uint8_t *pData, uint8_t len)
{    
    static I2C1_TRANSACTION_REQUEST_BLOCK trb;                      // TRB
    I2C1_MESSAGE_STATUS status = I2C1_MESSAGE_PENDING;              // initial value of status is pending
    uint8_t timeOut=0;                                              // will be used to count retries
    
    //uint8_t buffer[1];                                              // buffer to store TRB
    //buffer[0] = data;                                               // TRB=RegAddress,DataByte

    I2C1_MasterWriteTRBBuild(&trb, pData, len, Slave_Adr);           // build a Write TRB 2 bytes. Address (paramters: TRB, data, length, address)

    while(status != I2C1_MESSAGE_FAIL)
    {
        I2C1_MasterTRBInsert(1, &trb, &status);                     // send the full TRB paramters>(length, data, status)
        while(status == I2C1_MESSAGE_PENDING);                      // wait for the message to be sent or status has changed.

        if (status == I2C1_MESSAGE_COMPLETE) break;                 //exit loop if status is complete

        // if status is  I2C1_MESSAGE_ADDRESS_NO_ACK, or I2C1_DATA_NO_ACK, The device may be busy and needs more time for the last write
        // so we can retry writing the data, this is why we use a while loop here

        if (timeOut == 30)   // check for max retry
            break;
        else
            timeOut++;
    }

    return (status == I2C1_MESSAGE_COMPLETE);
}


//---------------------------------------------------------------------------------------------
void StopScript()
{
    uint8_t buffer[4];
    
    buffer[0]=0x6E; // Goto RGB
    buffer[1]=0x00; // R
    buffer[2]=0xFF; // G
    buffer[3]=0x00; // B
    
    I2C_Write(buffer,4);
}