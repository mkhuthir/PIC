// BlinkM Library
// Muthanna A. Attyah (June 2017)
// Please feel free to copy and use code.
// Device data sheet https://thingm.com/fileadmin/thingm/downloads/BlinkM_datasheet.pdf

/** How the BlinkM is connected to Curiosity HPC Board:
 
    BlankM  MikroBus    Curiosity HPC   Remarks
-------------------------------------------------------------------
    I2C C   SCL         RC3             I2C clock
    I2C D   SDA         RC4             I2C data
    PWR-    GND         GND             Ground
    PWR+    +5V         +5V             Power supply
-------------------------------------------------------------------
 
 * RC3 & RC4 must have pull-up resistors enabled since BlinkM does not have pull-up resistors on its module.
 
**/


#ifndef _BlinkM_H
#define _BlinkM_H

#ifndef MCC_H
#include "mcc_generated_files/mcc.h"
#endif

// BlinkM I2C Address
#define Slave_Adr           0x09            // Slave device I2C address

// Macros

// I2C Functions
bool I2C_Write(char *pData, char len);

// BlinkM Functions
void GoToRGB(char R, char G, char B);           // sets the BlinkM to a particular RGB color immediately.
void FadeToRGB(char R, char G, char B);         // fade from the current color to the specified RGB color.
void FadeToHSB(char H, char S, char B);         // fade from the current color to the specified HSB color.
void FadeToRndRGB(char R, char G, char B);      //
void FadeToRndHSB(char H, char S, char B);      //
void PlayLightScript(char n, char r, char p);   //
void StopScript();                              //
void SetFadeSpeed();
void SetTimeAdjust();
void GetCurrentRGB();
void WriteScriptLine();
void ReadScriptLine();
void SetScriptLine();
void SetBlinkMAdr();
void GetBlinkMAdr();
void GetBlinkMVer();
void SetStartup();



#endif
