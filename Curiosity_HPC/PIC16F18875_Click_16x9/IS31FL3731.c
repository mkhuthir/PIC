// IS31FL3731 Library
// Muthanna A. Attyah (May 2017)
// Please feel free to copy and use code.
// Device datasheet https://download.mikroe.com/documents/datasheets/is31fl3731-datasheet.pdf 

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

#pragma warning disable 520
#pragma warning disable 343
#pragma warning disable 361
#pragma warning disable 373


//*************************************************************************************
// Device Communication Functions
//*************************************************************************************

//-------------------------------------------------------------------------------------
// Select one of the nine Frames before reading/writing a register in a Frame.
//-------------------------------------------------------------------------------------

bool SelectFrame(uint8_t Frame)
{
    uint8_t buffer[2];
    I2C1_MESSAGE_STATUS status = I2C1_MESSAGE_PENDING;
    
    buffer[0]=Reg_Command;
    buffer[1]=Frame;
    
    I2C1_MasterWrite( buffer, 2, Slave_Adr, &status);
        
        if (status == I2C1_MESSAGE_FAIL)
            while (1)        // Something wrong
            {
                LED_D5_Toggle();
                __delay_ms(100);
            }
        while (status != I2C1_MESSAGE_COMPLETE);
                
}
//-------------------------------------------------------------------------------------
// Writes 1 byte to IS31FL3731 using SMBus protocol
//-------------------------------------------------------------------------------------
bool WriteReg(uint8_t Frame, uint8_t reg, uint8_t data)
{
    SelectFrame(Frame);
    
    uint8_t buffer[2];
    I2C1_MESSAGE_STATUS status = I2C1_MESSAGE_PENDING;
    
    buffer[0]=reg;
    buffer[1]=data;
    
    I2C1_MasterWrite( buffer, 2, Slave_Adr, &status);
        
        if (status == I2C1_MESSAGE_FAIL)
            while (1)        // Something wrong
            {
                LED_D5_Toggle();
                __delay_ms(100);
            }
        while (status != I2C1_MESSAGE_COMPLETE);
    
}

//-------------------------------------------------------------------------------------
// Reads 1 byte from IS31FL3731 using SMBus protocol
//-------------------------------------------------------------------------------------
bool ReadReg(uint8_t Frame, uint8_t reg, uint8_t *pData)
{
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
    SWNoShut();
    PictureMode(Frame_2);
     
    
    
}

//*************************************************************************************
// Display Mode Selection Functions
//*************************************************************************************

//-------------------------------------------------------------------------------------
// Select Picture Mode, PFS: Picture frame to display.
//-------------------------------------------------------------------------------------
void PictureMode(uint8_t PFS)
{
    
    WriteReg(Frame_9, Func_REG_Config, 0x00);    // MODE=00 FS=000
    //WriteReg(Frame_9, Func_REG_PicDisp, PFS);    // Select Frame to display (000=Frame_1 to 111=Frame_8)
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