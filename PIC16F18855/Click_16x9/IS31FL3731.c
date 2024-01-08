// IS31FL3731 Library
// Muthanna A. Attyah (July 2017)
// Please feel free to copy and use code.
// Device data sheet https://download.mikroe.com/documents/datasheets/is31fl3731-datasheet.pdf

// How the Click board is connected to Xpress Board:
/**
IS31FL3731      Click       Xpress
-------------------------------------
SCL             SCL         RC4     - I2C clock
SDA             SDA         RC3     - I2C data
!IN             PWM         RC7     - Audio Input
INT             INT         RC2     - Interrupt output, active low.
SDB             CS          RB2     - Shut down the chip when pulled to low.
GND             GND         GND     - Ground
VCC             3.3V        3.3V    - Power supply
R_Ext           18k         -       - Resistance to confirm LED current
C_Filt          0.1uF       -       - Capacitor used for audio filter
AD              GND         -       - I2C address setting. AD=GND=00 > adderess is 0x74
-------------------------------------
- 4.7K pull up resistors are connected to SCL,SDA, and INT
- 100K pull down resistor is connected to SDB
- R_EXT=18K, C_Flit=0.1uF
- AD jumper is connected to GND
- Vcc Sel=3.3V
**/

#ifndef _IS31FL3731_H
#include "IS31FL3731.h"
#endif

//*************************************************************************************
// Device Communication Functions
//*************************************************************************************

//-------------------------------------------------------------------------------------
// Writes 1 byte to IS31FL3731 using SMBus protocol
//-------------------------------------------------------------------------------------
bool I2C_Write(uint8_t Frame, uint8_t reg, uint8_t data)
{
    
    uint8_t buffer[2];          // buffer to store data
    
    SelectFrame(Frame);         // Select one of the 8 Frames

    buffer[0] = reg;            // register number in the selected frame
    buffer[1] = data;           // data to be written to register

    static I2C1_TRANSACTION_REQUEST_BLOCK trb;                      // TRB
    I2C1_MESSAGE_STATUS status = I2C1_MESSAGE_PENDING;              // initial value of status is pending
    uint8_t timeOut=0;                                              // will be used to count retries

    I2C1_MasterWriteTRBBuild(&trb, buffer, 2, Slave_Adr);      // build a Write TRB 2 bytes. Address (parameters: TRB, data, length, address)

    while(status != I2C1_MESSAGE_FAIL)
    {
        I2C1_MasterTRBInsert(1, &trb, &status);                     // send the full TRB parameters>(length, data, status)
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
// Reads 1 byte from IS31FL3731 using SMBus protocol
//-------------------------------------------------------------------------------------
bool I2C_Read(uint8_t Frame, uint8_t reg, uint8_t *pData)
{
    uint8_t timeOut=0;                                          // will ne used to count retries

    I2C1_MESSAGE_STATUS status = I2C1_MESSAGE_PENDING;          // initial value of status is pending
    static I2C1_TRANSACTION_REQUEST_BLOCK trb[2];               // TRB is 2 bytes

    SelectFrame(Frame);

    I2C1_MasterWriteTRBBuild(&trb[0], &reg, 1, Slave_Adr);      // build a Write TRB byte to send Reg. Address (parameters: TRB, data, length, address)
    I2C1_MasterReadTRBBuild(&trb[1], pData, 1, Slave_Adr);      // build a Read TRB byte to read data from Reg.(parameters: TRB, data, length, address)

    while(status != I2C1_MESSAGE_FAIL)
    {
        I2C1_MasterTRBInsert(2, &trb[0], &status);              // send the full TRB parameters>(length, data, status)
        while(status == I2C1_MESSAGE_PENDING);                  // wait for the message to be sent or status has changed.

        if (status == I2C1_MESSAGE_COMPLETE) break;             //exit loop if status is complete

        // if status is  I2C1_MESSAGE_ADDRESS_NO_ACK, or I2C1_DATA_NO_ACK, The device may be busy and needs more time for the last write
        // so we can retry writing the data, this is why we use a while loop here

        if (timeOut == RETRY_MAX)   // check for max retry
            break;
        else
            timeOut++;

    }
    return (status == I2C1_MESSAGE_COMPLETE);
}



//*************************************************************************************
// Device Control Functions
//*************************************************************************************

//-------------------------------------------------------------------------------------
// initialize device
//-------------------------------------------------------------------------------------
void InitIS31FL3731(void)
{
    HWNoShut();             // Hardware no shut
    
}

//-------------------------------------------------------------------------------------
// Select one of the nine Frames before reading/writing a register in a Frame.
//-------------------------------------------------------------------------------------

bool SelectFrame(uint8_t Frame)
{
    uint8_t buffer[2];          // buffer to store data
    
    buffer[0] = Reg_Command;    // 0xFD
    buffer[1] = Frame;          // Frame no.

    static I2C1_TRANSACTION_REQUEST_BLOCK trb;                      // TRB
    I2C1_MESSAGE_STATUS status = I2C1_MESSAGE_PENDING;              // initial value of status is pending
    uint8_t timeOut=0;                                              // will be used to count retries

    I2C1_MasterWriteTRBBuild(&trb, buffer, 2, Slave_Adr);      // build a Write TRB 2 bytes. Address (parameters: TRB, data, length, address)

    while(status != I2C1_MESSAGE_FAIL)
    {
        I2C1_MasterTRBInsert(1, &trb, &status);                     // send the full TRB parameters>(length, data, status)
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

//*************************************************************************************
// Display Mode Selection Functions
//*************************************************************************************

//-------------------------------------------------------------------------------------
// Select Picture Mode, PFS: Picture frame to display.
//-------------------------------------------------------------------------------------
void PictureMode(uint8_t PFS)
{
    
    I2C_Write(Frame_9, Func_REG_Config, 0x00);    // MODE=00 FS=000
    I2C_Write(Frame_9, Func_REG_PicDisp, PFS);    // Select Frame to display (000=Frame_1 to 111=Frame_8)
}                                      

//-------------------------------------------------------------------------------------
// Select Auto Frame Play mode, FS:Frame Start, CNS:Number of loops, FNS:Number of frames to play.
//-------------------------------------------------------------------------------------
void AutoFramePlayMode(uint8_t FS,uint8_t CNS,uint8_t FNS)
{

}

//-------------------------------------------------------------------------------------
// Select Audio Frame PLay Mode. No parameters
//-------------------------------------------------------------------------------------
void AudioFramePlayMode(void)
{

}

//*************************************************************************************
// Display Control Functions
//*************************************************************************************

//-------------------------------------------------------------------------------------
// Set Display Options; IC:Intensity Control,BE:Blink Enable,BPT:Blink Period Time.
//-------------------------------------------------------------------------------------
void SetDisplayOptions(uint8_t IC,uint8_t BE,uint8_t BPT)
{

}

//-------------------------------------------------------------------------------------
// Breath Control; FOT:Fade Out Time, FIT:Fade In Time, BEN:Breath Enable, ET:Extingush Time.
//-------------------------------------------------------------------------------------
void BreathControl(uint8_t FOT, uint8_t FIT, uint8_t BEN, uint8_t ET)
{

}

//*************************************************************************************
// Audio Mode control Functions
//*************************************************************************************

//-------------------------------------------------------------------------------------
// Set Audio Gain Control; AGCM:Slow or Fast Mode, AGC:Enable or Disable, AGS: Audio Gain Selection
//-------------------------------------------------------------------------------------
void SetAudioAGC(uint8_t AGCM, uint8_t AGC, uint8_t AGS)
{

}

//*************************************************************************************
// Frame Control Functions
//*************************************************************************************

//-------------------------------------------------------------------------------------
// 
//-------------------------------------------------------------------------------------
uint8_t FillFrame(uint8_t Frame)
{


}