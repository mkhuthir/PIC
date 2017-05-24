// EMC1001 Library
// Muthanna A. Attyah (April 2017)
// Please feel free to copy and use code.
// Device datasheet http://ww1.microchip.com/downloads/en/DeviceDoc/20005411A.pdf

#ifndef EMC1001_H
#include "EMC1001.h"
#endif

//-------------------------------------------------------------------------------------
// Reads 1 byte from EMC1001 using SMBus protocol
//-------------------------------------------------------------------------------------
bool EMC1001_Read(uint8_t reg, uint8_t *pData)
{
    uint8_t timeOut=0;                                             // will ne used to count retries

    I2C2_MESSAGE_STATUS status = I2C2_MESSAGE_PENDING;              // initial value of status is pending
    static I2C2_TRANSACTION_REQUEST_BLOCK trb[2];                   // TRB is 2 bytes

    I2C2_MasterWriteTRBBuild(&trb[0], &reg, 1, EMC1001_ADDRESS);    // build a Write TRB byte to send Reg. Address (paramters: TRB, data, length, address)
    I2C2_MasterReadTRBBuild(&trb[1], pData, 1, EMC1001_ADDRESS);    // build a Read TRB byte to read data from Reg.(paramters: TRB, data, length, address)

    while(status != I2C2_MESSAGE_FAIL)
    {
        I2C2_MasterTRBInsert(2, &trb[0], &status);                  // send the full TRB paramters>(length, data, status)

        while(status == I2C2_MESSAGE_PENDING);                      // wait for the message to be sent or status has changed.

        if (status == I2C2_MESSAGE_COMPLETE) break;                 //exit loop if status is complete

        // if status is  I2C2_MESSAGE_ADDRESS_NO_ACK, or I2C2_DATA_NO_ACK, The device may be busy and needs more time for the last write
        // so we can retry writing the data, this is why we use a while loop here

        if (timeOut == RETRY_MAX)   // check for max retry
            break;
        else
            timeOut++;

    }
    return (status == I2C2_MESSAGE_COMPLETE);
}

//-------------------------------------------------------------------------------------
// Writes 1 byte to EMC1001 using SMBus protocol
//-------------------------------------------------------------------------------------
bool EMC1001_Write(uint8_t reg, uint8_t data)
{
    static I2C2_TRANSACTION_REQUEST_BLOCK trb;                      // TRB
    I2C2_MESSAGE_STATUS status = I2C2_MESSAGE_PENDING;              // initial value of status is pending
    uint8_t timeOut=0;                                              // will be used to count retries
    uint8_t buffer[2];                                              // buffer to store TRB
    buffer[0] = reg; buffer[1] = data;                              // TRB=RegAddress,DataByte

    I2C2_MasterWriteTRBBuild(&trb, buffer, 2, EMC1001_ADDRESS);     // build a Write TRB 2 bytes. Address (paramters: TRB, data, length, address)

    while(status != I2C2_MESSAGE_FAIL)
    {
        I2C2_MasterTRBInsert(1, &trb, &status);                     // send the full TRB paramters>(length, data, status)
        while(status == I2C2_MESSAGE_PENDING);                      // wait for the message to be sent or status has changed.

        if (status == I2C2_MESSAGE_COMPLETE) break;                 //exit loop if status is complete

        // if status is  I2C2_MESSAGE_ADDRESS_NO_ACK, or I2C2_DATA_NO_ACK, The device may be busy and needs more time for the last write
        // so we can retry writing the data, this is why we use a while loop here

        if (timeOut == RETRY_MAX)   // check for max retry
            break;
        else
            timeOut++;
    }

    return (status == I2C2_MESSAGE_COMPLETE);
}

//-------------------------------------------------------------------------------------
// Set the Conversion Rate
// acceptable values are 0x00 to 0x09 default is 0x04.
// 0x00=0.0625 C/Sec 0x01=0.125 C/Sec 0x02=0.25 C/Sec ..... 0x09=32 C/Sec
//-------------------------------------------------------------------------------------

bool EMC1001_SetConversionRate(uint8_t data)
{
    if(data>=0x00 && data<=0x09)      // acceptable values 0x00 to 0x09. default is 0x04 (1 C/Sec)
        return EMC1001_Write(Reg_Cnv_Rate,data);
    else
        return false;
}

//-------------------------------------------------------------------------------------
// Set the Temperature High Limit (2 bytes)
//-------------------------------------------------------------------------------------

bool EMC1001_SetTempHighLimit(uint8_t HB,uint8_t LB)   // HB can be -64°C to +127°C, LB can be 00,25,50, or 75 representing the fraction .xx °C
{
    EMC1001_Write(Reg_THL_HB,HB);   // default is 0b01010101 (+85°C)
    if (LB!=0) LB=(LB/25)<<6;       // LB is for fractions and only 2 bits are used (bits 6 & 7) 00=.0 01=.25 10=.50 11=.75
    EMC1001_Write(Reg_THL_LB,LB);   // default is 0b00000000 (.00°C)
    return true;
}

//-------------------------------------------------------------------------------------
// Set the Temperature Low Limit (2 bytes)
//-------------------------------------------------------------------------------------

bool EMC1001_SetTempLowLimit(uint8_t HB,uint8_t LB)    // HB can be -64°C to +127°C, LB can be 00,25,50, or 75 representing the fraction .xx °C
{
    EMC1001_Write(Reg_TLL_HB,HB);   // default is 0b00000000 (00°C)
    if (LB!=0) LB=(LB/25)<<6;       // LB is for fractions and only 2 bits are used (bits 6 & 7) 00=.00 01=.25 10=.50 11=.75
    EMC1001_Write(Reg_TLL_LB,LB);   // default is 0b00000000 (.00°C)
    return true;
}

//-------------------------------------------------------------------------------------
// Set the THERM Limit
//-------------------------------------------------------------------------------------

bool EMC1001_SetThermLimit(uint8_t data)
{
    return EMC1001_Write(Reg_THM_LMT,data); // default limit is 0b01010101 (+85°C)
}

//-------------------------------------------------------------------------------------
// Set the THERM Hysteresis
//-------------------------------------------------------------------------------------

bool EMC1001_SetThermHysteresis(uint8_t data)
{
    return EMC1001_Write(Reg_THM_HYS,data); // default is 0b00001010 (+10°C)
}

//-------------------------------------------------------------------------------------
// initiates a conversion and comparison cycle when in standby mode.
//-------------------------------------------------------------------------------------

bool EMC1001_OneShot(void)
{
    return EMC1001_Write(Reg_One_Sht,0xFF); // write any value to initiate a conversion.
}

//-------------------------------------------------------------------------------------
// Enable/Disable SMBus Timeout
//-------------------------------------------------------------------------------------

bool EMC1001_SMBusTimeout(bool enable)  //Default is disabled.
{
    if (enable) 
        return EMC1001_Write(Reg_SMB_TO,0b10000000);
    else 
        return EMC1001_Write(Reg_SMB_TO,0b00000000);
}
//-------------------------------------------------------------------------------------
// When MASK is disabled ALERT is enabled; any out-of-limit condition will assert the signaled pin (default)
//-------------------------------------------------------------------------------------

bool EMC1001_MASK1(bool enable)                  // default is disabled
{
    uint8_t data;
    EMC1001_Read(Reg_Config,&data);

    if (enable) 
        return EMC1001_Write(Reg_Config,data|0b10000000); // Set bit 6
    else 
        return EMC1001_Write(Reg_Config,data&0b01111111); // Clear bit 6
}

//-------------------------------------------------------------------------------------
// Enable/Disable Standby Mode
//-------------------------------------------------------------------------------------

bool EMC1001_StandbyMode(bool enable)                  // default is disabled
{
    uint8_t data;
    EMC1001_Read(Reg_Config,&data);

    if (enable) 
        return EMC1001_Write(Reg_Config,data|0b01000000); // Set bit 6
    else 
        return EMC1001_Write(Reg_Config,data&0b10111111); // Clear bit 6
}

//-------------------------------------------------------------------------------------
// When enabled the ALERT/THERM2 pin acts as the THERM2 signal and Bit 7 is ignored. otherwise pin acts as the ALERT (SMBALERT#) signal (default)
//-------------------------------------------------------------------------------------

bool EMC1001_THERM2(bool enable)                  // default is disabled
{
    uint8_t data;
    EMC1001_Read(Reg_Config,&data);

    if (enable) 
        return EMC1001_Write(Reg_Config,data|0b00100000); // Set bit 6
    else 
        return EMC1001_Write(Reg_Config,data&0b11011111); // Clear bit 6
}

//-------------------------------------------------------------------------------------
// Prints EMC1001 information read from its registers
//-------------------------------------------------------------------------------------
void EMC1001_PrintInfo(void)
{
    uint8_t data;
    float cr=0;
    int8_t  temp;
    uint8_t templo;

    if (EMC1001_Read(Reg_Prd_ID,&data)) printf("Product ID:\t\tEMC1001%s\n", data ? "-1" : "");
    if (EMC1001_Read(Reg_Mnf_ID,&data)) printf("Manufacturer ID:\t0x%X\n", data);
    if (EMC1001_Read(Reg_Rev_No,&data)) printf("Revision :\t\t%d\n", data);
    if (EMC1001_Read(Reg_STATUS,&data)) printf("Status Reg: \t\t0x%X (BUSY=%d THIGH=%d TLOW=%d THRM=%d)\n",data,data>>7,data>>6&1,data>>5&1,data&1);
    if (EMC1001_Read(Reg_Config,&data)) printf("Configuration Reg: \t0x%X (MASK1=%d RUN/STOP=%d ALERT/THERM2=%d)\n",data,data>>7,data>>6&1,data>>5&1);
    if (EMC1001_Read(Reg_Cnv_Rate, &data)){
        if (data<0x0A ) cr=(0x01<<data)*0.0625;         // conversion rate register value can be 0-9
        printf("Conversion rate:\t0x%x (%.4f conversions per second)\n",data,cr);
    }
    if (EMC1001_Read(Reg_SMB_TO,&data)) printf("SMBus TimeOut:\t\t%s\n", data>>7 ? "Enabled":"Disabled");
    if (EMC1001_Read(Reg_THL_HB, (uint8_t*)&temp)) {    // get msb
        EMC1001_Read(Reg_THL_LB, &templo);              // get lsb
        templo = templo >> 6;                           // only 2 msb bits used 0.25C increments
        printf("Temperature high limit:\t%d.%d C\n", temp, templo*25);
    }
    if (EMC1001_Read(Reg_TLL_HB, (uint8_t*)&temp)) {    // get msb
        EMC1001_Read(Reg_TLL_LB, &templo);              // get lsb
        templo = templo >> 6;                           // only 2 msb bits used 0.25C increments
        printf("Temperature low limit:\t%d.%d C\n", temp, templo*25);
    }
    if (EMC1001_Read(Reg_THM_LMT, &data)) printf("Thermal limit:\t\t%d C\n", data);
    if (EMC1001_Read(Reg_THM_HYS, &data)) printf("Thermal hysteresis:\t%d C\n\n", data);
}

//-------------------------------------------------------------------------------------
// Prints current temprture value read from EMC1001
//-------------------------------------------------------------------------------------
void EMC1001_PrintTemp(void)
{
    int8_t  temp;
    uint8_t templo;

    if (EMC1001_Read(Reg_TMP_HB, (uint8_t*)&temp)) {    // get msb
        EMC1001_Read(Reg_TMP_LB, &templo);              // get lsb
        templo = templo >> 6;                           // only 2 msb bits used 0.25C increments
        if (temp < 0) templo = 3-templo;                // complement to 1 if temp is negative
        printf("Current Temperature:\t%d.%d C\n", temp, templo*25);
    }

}
