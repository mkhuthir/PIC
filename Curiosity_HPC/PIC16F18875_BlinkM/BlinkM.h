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

// BlinkM ROM light scripts
enum script_id 
{
    eeprom_def         =0, // default startup white?red?green?blue?off (can be reprogrammed)
    RGB                ,   // red?green?blue
    white_flash        ,   // white?off
    red_flash          ,   // red?off
    green_flash        ,   // green?off
    blue_flash         ,   // blue?off
    cyan_flash         ,   // cyan?off
    magenta_flash      ,   // magenta?off
    yellow_flash       ,   // yellow?off
    black              ,   // off
    hue_cycle          ,   // red?yellow?green?cyan?blue?purple
    mood_light_random  ,   // hue?random hue
    virtual_candle     ,   // random yellows
    water_reflections  ,   // random blues
    old_neon           ,   // random orangeish reds
    the_seasons_spring ,   // colors?summer?fall?winter
    thunderstorm_random,   // blues & purples?white flashes
    stop_light         ,   // red?green?yellow
    morse_code_SOS         // S.O.S morse in white

};

// I2C Functions
bool I2C_Write(char *pData, char n);
bool I2C_Read(char *pData, char n);

// BlinkM Functions
void GoToRGB(char R, char G, char B);           // sets the BlinkM to a particular RGB color immediately.
void FadeToRGB(char R, char G, char B);         // Fades from the current color to the specified RGB color.
void FadeToHSB(char H, char S, char B);         // Fades from the current color to the specified HSB color.
void FadeToRndRGB(char R, char G, char B);      // Fades from the current color to a random RGB color
void FadeToRndHSB(char H, char S, char B);      // Fades from the current color to a random HSB color
void PlayLightScript(char n, char r, char p);   // Plays the specified light script immediately, stopping any currently playing script.
void StopScript();                              // Stops any currently playing script.
void SetFadeSpeed(char f);                      // Sets the rate at which color fading happens.
void SetTimeAdjust(char t);                     // Adjusts the playback speed of a light script.
void GetCurrentRGB();                           // Returns the current color in RGB format.
void WriteScriptLine(char n, char p, char d,    // This command writes a light script line.
                     char c, 
                     char a1, char a2, char a3);                   
void ReadScriptLine(char n, char l, char r);    // Sets the length of a written script.
void SetScriptLine();
void SetBlinkMAdr();
void GetBlinkMAdr();
void GetBlinkMVer();
void SetStartup();



#endif
