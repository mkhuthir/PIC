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
#define _IS31FL3731_H

#ifndef MCC_H
#include "mcc_generated_files/mcc.h"
#endif

#define Enable  true
#define Disable false

//-------------------------------------------------------------------------------------
// IS31FL3731 Address
#define Slave_Add           0x74    // Slave device address  (AD connected to GND by default)
#define RETRY_MAX           100     // Maximum retries before return with a fail status.



// IS31FL3731 pages
#define Page_1              0x00    // Page 1: Frame 1 storage for LED,Blink,PWM
#define Page_2              0x01    // Page 2: Frame 2 storage for LED,Blink,PWM
#define Page_3              0x02    // Page 3: Frame 3 storage for LED,Blink,PWM
#define Page_4              0x03    // Page 4: Frame 4 storage for LED,Blink,PWM
#define Page_5              0x04    // Page 5: Frame 5 storage for LED,Blink,PWM
#define Page_6              0x05    // Page 6: Frame 6 storage for LED,Blink,PWM
#define Page_7              0x06    // Page 7: Frame 7 storage for LED,Blink,PWM
#define Page_8              0x07    // Page 8: Frame 8 storage for LED,Blink,PWM
#define Page_9              0x0B    // Page 9: Functions Registers

// IS31FL3731 registers
#define Reg_Command         0xFD    // Command Register

// Frame Registers (Applicable to Page One to Page Eight)
#define Fram_REG_LED        0x00    // RW - 00h ~ 11h - LED Control: Stores ON or OFF state for each LED
#define Fram_REG_Blink      0x12    // RW - 12h ~ 23h - Blink Control: Controls the blink function for each LED
#define Fram_REG_PWM        0x24    // RW - 24h ~ B3h - PWM: PWM duty cycle for each LED

// Function Registers (Applicable to Page Nine)
#define Func_REG_Config     0x00    // RW - Configuration: Configure the operation mode
#define Func_REG_PicDisp    0x01    // RW - Picture Display: Set the display frame in Picture Mode
#define Func_REG_AutoPly1   0x02    // RW - Auto Play Control Register 1: Set the way of display in Auto Frame Play Mode 
#define Func_REG_AutoPly2   0x03    // RW - Auto Play Control Register 2: Set the delay time in Auto Frame Play Mode 
#define Func_REG_Rsvrd      0x04    // RW - Reserved
#define Func_REG_DicpOpt    0x05    // RW - Display Option: Set the display option
#define Func_REG_AudSync    0x06    // RW - Audio Synchronization: Set audio synchronization function 
#define Func_REG_FramStat   0x07    // R  - Frame State: Store the frame display information 
#define Func_REG_BrthCnt1   0x08    // RW - Breath Control Register 1: Set fade in and fade out time for breath function
#define Func_REG_BrthCnt2   0x09    // RW - Breath Control Register 2: Set the breath function
#define Func_REG_Shut       0x0A    // RW - Shutdown: Set software shutdown mode 
#define Func_REG_AudAGC     0x0B    // RW - AGC Control: Set the AGC function and the audio gain. 
#define Func_REG_AudADC     0x0C    // RW - Audio ADC Rate: Set the ADC sample rate of the input signal 
 


//-------------------------------------------------------------------------------------
// Function Macros
//-------------------------------------------------------------------------------------
#define HWShut()    SDB_Setlow();                           // Hardware shutdown
#define HWNoShut()    SDB_SetHigh();                          // Hardware no shutdown
#define SWShut()    WriteReg(Page_9, Func_REG_Shut, 0x00);  // Software shutdown
#define SWNoShut()  WriteReg(Page_9, Func_REG_Shut, 0x01);  // Software no shutdown

//-------------------------------------------------------------------------------------
// functions
//-------------------------------------------------------------------------------------
bool SelectPage(uint8_t page);              // Select one of the nine pages before reading/writing a register in a page.
bool ReadReg(uint8_t page, uint8_t reg, uint8_t *pData);  // Reads 1 byte from IS31FL3731 using SMBus protocol
bool WriteReg(uint8_t page, uint8_t reg, uint8_t data);   // Writes 1 byte to IS31FL3731 using SMBus protocol
void InitDisp(void);    // initilize display

//-------------------------------------------------------------------------------------

#endif
