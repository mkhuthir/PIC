// BlinkM Library
// Muthanna Alwahash (June 2017-Jan 2024)
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

// BlinkM I2C Address

#define Slave_Adr 0x09      // Slave device I2C address

// BlinkM ships with a default I2C address of 0x09. Feel free to change this address so it doesn't
// collide with any other I2C devices present on the I2C bus.
// The BlinkM address can be changed if the current address is unknown. The Set BlinkM
// Address (A) command can be sent to the I2C general call (i.e. broadcast) address. The
// general call address is 0x00. This allows changing of a BlinkMs address without knowledge
// of its prior address. Be sure to only have one BlinkM powered up on the I2C bus when using
// general call.
// Note: While I2C addresses are 7-bits long and thus can range from 0 to 127, some
// environments use a "left-shifted" display of I2C addresses. These shifted addresses range
// from 0-254, but only exist for even address values (0,2,4,6,...). The left-shifted version came
// about because the address gets shift left by one bit upon transmission. (Left-shifting by one
// bit is the same as multiplying by 2) Like Arduino, BlinkM uses the non-shifted 0-127 format of
// I2C addresses. The default BlinkM address of 9 (0x09) looks like address 18 (0x12) when used
// with the left-shifted style of addressing.

// BlinkM ROM light scripts
enum script_id 
{
    eeprom_def         =0, // default startup white-red-green-blue-off (can be reprogrammed)
    RGB_seq            ,   // red-green-blue
    white_flash        ,   // white-off
    red_flash          ,   // red-off
    green_flash        ,   // green-off
    blue_flash         ,   // blue-off
    cyan_flash         ,   // cyan-off
    magenta_flash      ,   // magenta-off
    yellow_flash       ,   // yellow-off
    black              ,   // off
    hue_cycle          ,   // red-yellow-green-cyan-blue-purple
    mood_light_random  ,   // hue-random hue
    virtual_candle     ,   // random yellows
    water_reflections  ,   // random blues
    old_neon           ,   // random orangeish reds
    the_seasons_spring ,   // colors-summer-fall-winter
    thunderstorm_random,   // blues & purples-white flashes
    stop_light         ,   // red-green-yellow
    morse_code_SOS         // S.O.S morse in white

};

// I2C Functions
bool I2C_Write(uint8_t *Data, uint8_t DataLen);             // Writes nD bytes
bool I2C_Read (uint8_t *Cmnd, uint8_t CmndLen,              // Writes nC bytes then reads nD bytes
               uint8_t *Data, uint8_t DataLen);  

// BlinkM Functions
void GoToRGB(uint8_t R, uint8_t G, uint8_t B);              // 'n' Sets the BlinkM to a particular RGB color immediately.
void FadeToRGB(uint8_t R, uint8_t G, uint8_t B);            // 'c' Fades from the current color to the specified RGB color.
void FadeToHSB(uint8_t H, uint8_t S, uint8_t B);            // 'h' Fades from the current color to the specified HSB color.
void FadeToRndRGB(uint8_t R, uint8_t G, uint8_t B);         // 'C' Fades from the current color to a random RGB color
void FadeToRndHSB(uint8_t H, uint8_t S, uint8_t B);         // 'H' Fades from the current color to a random HSB color
void PlayLightScript(uint8_t n, uint8_t r, uint8_t p);      // 'p' Plays the specified light script immediately, stopping any currently playing script.
void StopScript(void);                                      // 'o' Stops any currently playing script.
void SetFadeSpeed(uint8_t f);                               // 'f' Sets the rate at which color fading happens.
void SetTimeAdjust(int8_t t);                               // 't' Adjusts the playback speed of a light script.
void GetCurrentRGB(uint8_t* data);                          // 'g' Returns the current color in RGB format.
void WriteScriptLine(uint8_t n, uint8_t p, uint8_t d,       // 'W' This command writes a light script line.
                     uint8_t c, 
                     uint8_t a1, uint8_t a2, uint8_t a3);                   
void ReadScriptLine(uint8_t n, uint8_t p, uint8_t* data);   // 'R' Reads a script line and returns the script lines values.
void SetScriptLength(uint8_t n, uint8_t l, uint8_t r);      // 'L' Sets the length of a written script. 
void SetBlinkMAdr(uint8_t a);                               // 'A' Sets the I2C address of a BlinkM.
void GetBlinkMAdr(uint8_t* data);                           // 'a' Returns the I2C address.
void GetBlinkMVer(uint8_t* data);                           // 'Z' Returns the BlinkM firmware version.
void SetStartup(uint8_t m, uint8_t n,                       // 'B' Sets the startup (or boot) action for BlinkM.
                uint8_t r, uint8_t f, int8_t t);


#endif
