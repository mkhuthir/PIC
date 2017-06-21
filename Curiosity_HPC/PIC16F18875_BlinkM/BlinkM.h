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

#define Slave_Adr 0x09      // Slave device I2C address

// BlinkM ships with a default I2C address of 0x09. Feel free to change this address so it doesn?t
// collide with any other I2C devices present on the I2C bus.
// The BlinkM address can be changed if the current address is unknown. The ?Set BlinkM
// Address? (?A?) command can be sent to the I2C ?general call? (i.e. broadcast) address. The
// general call address is 0x00. This allows changing of a BlinkM?s address without knowledge
// of its prior address. Be sure to only have one BlinkM powered up on the I2C bus when using
// general call.
// Note: While I2C addresses are 7-bits long and thus can range from 0 to 127, some
// environments use a "left-shifted" display of I2C addresses. These shifted addresses range
// from 0-254, but only exist for even address values (0,2,4,6,...). The left-shifted version came
// about because the address gets shift left by one bit upon transmission. (Left-shifting by one
// bit is the same as multiplying by 2)   Like Arduino, BlinkM uses the non-shifted 0-127 format of
// I2C addresses. The default BlinkM address of 9 (0x09) looks like address 18 (0x12) when used
// with the left-shifted style of addressing.

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
bool I2C_Write(char *pData, char nD);           // Writes nD bytes
bool I2C_Read (char *pCmnd, char nC,            // Writes nC bytes then reads nD bytes
               char *pData, char nD);  

// BlinkM Functions
void GoToRGB(char R, char G, char B);           // 'n' Sets the BlinkM to a particular RGB color immediately.
void FadeToRGB(char R, char G, char B);         // 'c' Fades from the current color to the specified RGB color.
void FadeToHSB(char H, char S, char B);         // 'h' Fades from the current color to the specified HSB color.
void FadeToRndRGB(char R, char G, char B);      // 'C' Fades from the current color to a random RGB color
void FadeToRndHSB(char H, char S, char B);      // 'H' Fades from the current color to a random HSB color
void PlayLightScript(char n, char r, char p);   // 'p' Plays the specified light script immediately, stopping any currently playing script.
void StopScript();                              // 'o' Stops any currently playing script.
void SetFadeSpeed(char f);                      // 'f' Sets the rate at which color fading happens.
void SetTimeAdjust(char t);                     // 't' Adjusts the playback speed of a light script.
void GetCurrentRGB(char* data);                 // 'g' Returns the current color in RGB format.
void WriteScriptLine(char n, char p, char d,    // 'W' This command writes a light script line.
                     char c, 
                     char a1, char a2, char a3);                   
void ReadScriptLine(char n, char p, char* data);// 'R' Reads a script line and returns the script line?s values.
void SetScriptLength(char n, char l, char r);   // 'L' Sets the length of a written script. 
void SetBlinkMAdr(char a);                      // 'A' Sets the I2C address of a BlinkM.
void GetBlinkMAdr(char* data);                  // 'a' Returns the I2C address.
void GetBlinkMVer(char* data);                  // 'Z' Returns the BlinkM firmware version.
void SetStartup(char m, char n,                 // 'B' Sets the startup (or ?boot?) action for BlinkM.
                char r, char f, char t);


#endif
