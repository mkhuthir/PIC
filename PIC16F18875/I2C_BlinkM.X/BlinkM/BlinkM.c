// BlinkM Library
// Muthanna Alwahash (June 2017 - Jan 2024)
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

#include "../mcc_generated_files/system/system.h"
#include "BlinkM.h"

//---------------------------------------------------------------------------------------------
// Writes DataLen number of bytes to I2C device with I2C address=Slave_Adr using Microchip MSSP I2C1 driver.

bool I2C_Write(uint8_t *Data, uint8_t DataLen)
{    
    while (!I2C1_Write(Slave_Adr, Data, DataLen));
    while(I2C1_IsBusy());
    return true;
}

//---------------------------------------------------------------------------------------------
// Sends CmndLen bytes command and Reads DataLen number of bytes from I2C device with
// I2C address=Slave_Adr using Microchip MSSP I2C1 driver.

bool I2C_Read(uint8_t *Cmnd, uint8_t CmndLen, uint8_t*Data, uint8_t DataLen)
{    
    while (!I2C1_WriteRead(Slave_Adr, Cmnd, CmndLen, Data, DataLen));    
    while(I2C1_IsBusy());
    return true;
}

//---------------------------------------------------------------------------------------------
// Sets the BlinkM to a particular RGB color immediately.The command takes
// three argument bytes, one each for setting the levels of the red, green, and blue channels.
// Each value ranges from 0-255 (0x00-0xFF in hexadecimal), with 0 being off and 255 being
// maximum brightness.

void GoToRGB(uint8_t R, uint8_t G, uint8_t B)
{
    uint8_t data[4]={'n',R,G,B};
    I2C_Write(data,4);
};

//---------------------------------------------------------------------------------------------
// Fades from the current color to the specified RGB color.The command takes three argument
// bytes, one each for setting the levels of the red, green, and blue channels. Each value 
// ranges from 0-255 (0x00-0xFF in hexadecimal), with 0 being off and 255 being maximum brightness.
// The rate at which the fading occurs is controlled by the SetFadeSpeed() command. 

void FadeToRGB(uint8_t R, uint8_t G, uint8_t B)
{
    uint8_t data[4]={'c',R,G,B};
    I2C_Write(data,4);
}

//---------------------------------------------------------------------------------------------
// Fades from the current color to the specified HSB color.The command takes
// three bytes as arguments. The first argument byte is the hue (or raw color), with mapping from 0-255.
// The second argument is the saturation, or vividness, of the color. A saturation of 0 means a
// very light/white color and a saturation of 255 means a very vivid color. The third argument is
// the brightness of the resulting color, where 0 is totally dark and 255 means maximally bright. 
// The rate at which the fading occurs is controlled by the SetFadeSpeed() command. 

void FadeToHSB(uint8_t H, uint8_t S, uint8_t B)
{
    uint8_t data[4]={'h',0,0,0};
    data[1]=H;
    data[2]=S;
    data[3]=B;
    I2C_Write(data,4);
}

//---------------------------------------------------------------------------------------------
// Fades from the current color to a random color. It takes 3 bytes as arguments,
// one for each R,G,B channel. Each argument is the range or amount of randomness for each
// of the R,G,B channels from which to deviate from the current color.
// A setting of 0 for a channel means to not change it at all.

void FadeToRndRGB(uint8_t R, uint8_t G, uint8_t B)
{
    uint8_t data[4]={'C',R,G,B};
    I2C_Write(data,4);
}

//---------------------------------------------------------------------------------------------
// Fades from the current color to a random color. It takes 3 bytes as arguments,
// one for each H,S, B value. Each argument is the range or degree of randomness to deviate
// from the current H,S,B color. A setting of 0 for a channel means to not change it at all.
// *Note* that this command only works after a previous FadeToHSB() command has been used to set an
// initial hue.

void FadeToRndHSB(uint8_t H, uint8_t S, uint8_t B)
{
    uint8_t data[4]={'H',H,S,B};
    I2C_Write(data,4);
}

//---------------------------------------------------------------------------------------------
// Plays the specified light script immediately, stopping any currently playing script. 
// The command takes three bytes as arguments. The first byte is the script id of the script
// to play. The second argument is the number of repeats to play the script.
// A repeats value of 0 means play the script forever. The last argument is the script line
// number to start playing from. A value of 0 means play the script from the start.
// To adjust the playback speed of a script that is running, adjust the fade speed (SetFadeSpeed()
// and time adjust (SetTimeAdjust() to taste. Altering these values can greatly alter the lighting
// effect for the built-in light scripts. See data sheet for list of scripts IDs.

void PlayLightScript(uint8_t n, uint8_t r, uint8_t p)
{
    uint8_t data[4]={'p',n,r,p};
    I2C_Write(data,4);
}

//---------------------------------------------------------------------------------------------
// Stops any currently playing script. If no script is playing, this command has no
// effect. It takes no arguments and returns no value.

void StopScript(void)
{
    uint8_t data[1]={'o'};
    I2C_Write(data,1);
}

//---------------------------------------------------------------------------------------------
// Sets the rate at which color fading happens. It takes one argument that is the
// fade speed from 1-255. The slowest fading occurs when the fade speed is 1. To change
// colors instantly, set the fade speed to 255. A value of 0 is invalid and is reserved for a future
// Smart Fade feature.

void SetFadeSpeed(uint8_t f)
{
    uint8_t data[2]={'f',f};
    I2C_Write(data,2);
}

//---------------------------------------------------------------------------------------------
// Adjusts the playback speed of a light script. It takes one byte as an argument,
// a signed number between -128 and 127. The argument is treated as an additive adjustment to
// all durations of the script being played. A value of 0 resets the playback speed to the default.
// This command does not return a value.

void SetTimeAdjust(int8_t t)
{
    uint8_t data[2]={'t',(uint8_t)t};
    I2C_Write(data,2);
}

//---------------------------------------------------------------------------------------------
// Returns the current color in RGB format. The command takes no argument bytes but returns
// 3 bytes representing the current values of the red, green and blue channels.
// *Note* If the BlinkM is currently fading between colors, this command returns the instantaneous
// current color value, not the destination color.

void GetCurrentRGB(uint8_t *data)
{
    uint8_t cmnd[1]={'g'};
    I2C_Read(cmnd,1,data,3);
}

//---------------------------------------------------------------------------------------------
// This command writes a light script line. The first argument is which script id to write to.
// Currently, only script id 0 can be written to. The second argument is which line in the script to
// change, and can range from 0-49. The third argument is the duration in ticks for that
// command to last. The next four arguments are the BlinkM command and its arguments. Any
// command with less than 3 arguments should fill out the remaining arguments slots with zeros.
// This command takes approximately 20 milliseconds to complete, due to EEPROM write time.
// Once all the lines of the desired script are written, set the script length with the SetScriptLength
// command. This command does not return a value.

void WriteScriptLine(uint8_t n, uint8_t p, uint8_t d, uint8_t c, uint8_t a1, uint8_t a2, uint8_t a3)
{
    uint8_t data[8]={'W',n,p,d,c,a1,a2,a3};
    I2C_Write(data,8);
    __delay_ms(20);         //wait for EEPROM to finish write
}

//---------------------------------------------------------------------------------------------
// Reads a script line and returns the script lines values. The first argument is the
// script id to read from. Script id 0 is the EEPROM script that can be written to, Script ids >0 refer
// to the built-in ROM scripts. The second argument is the number of the script line to read back.
// There are 5 bytes of return values: d = duration in ticks, c = command, a1,2,3 = arguments for
// command. If an invalid script id or script line number is given, all return values are zeros.
        
void ReadScriptLine(uint8_t n, uint8_t p, uint8_t* data)
{
    uint8_t cmnd[3]={'R',n,p};
    I2C_Read(cmnd,3,data,5);
}

//---------------------------------------------------------------------------------------------
// Sets the length of a written script. The first argument is the script id to set,
// currently only script id of 0 is valid. The second argument is the length of the script, and the
// third argument is the number of repeats for the script. This command takes approximately 15
// milliseconds to complete, due to EEPROM write times.
// This command does not return a value.
    
void SetScriptLength(uint8_t n, uint8_t l, uint8_t r)
{
    uint8_t data[4]={'L',n,l,r};
    I2C_Write(data,4);
    __delay_ms(15);         //wait for EEPROM to finish write

}

//---------------------------------------------------------------------------------------------
// Sets the I2C address of a BlinkM. It takes four arguments. The first and last
// argument are the new address, and the second and third arguments are {0xd0,0x0d}. These
// two arguments are used as a check against inadvertent address changing. This command can
// be used with the I2C general call broadcast address to change the address of a BlinkM if the
// previous address is not known. When using general call, only have one BlinkM powered up on
// the bus at a time or they will all change their address. This command takes approximately 15
// milliseconds to complete, due to EEPROM write time and I2C stack reset.
// See data sheet for more details about how BlinkM handles I2C addresses.
// This command does not return a value.
        
void SetBlinkMAdr(uint8_t a)
{
    uint8_t data[5]={'A',a,0xD0,0x0D,a};
    I2C_Write(data,5);
    __delay_ms(15);         //wait for EEPROM to finish write

}

//---------------------------------------------------------------------------------------------
// Returns the I2C address.

void GetBlinkMAdr(uint8_t* data)
{
    uint8_t cmnd[1]={'a'};
    I2C_Read(cmnd,1,data,1);
}

//---------------------------------------------------------------------------------------------
// Returns the BlinkM firmware version. The first byte is the major version, the second byte is the
// minor version.

void GetBlinkMVer(uint8_t* data)
{
    uint8_t cmnd[1]={'Z'};
    I2C_Read(cmnd,1,data,2);
}

//---------------------------------------------------------------------------------------------
// Sets the startup (or boot) action for BlinkM. The command takes four
// arguments. The first argument m is the startup mode: 0 means do nothing, 1 means play a
// script. The second argument n is which script id to play. The third argument f is the number
// of repetitions to play that script id. The fourth (f) and fifth (t) arguments are the fade speed
// and time adjust, respectively, to use with the script. This command takes about 20
// milliseconds to complete, due to EEPROM write time.
// Note: when turning off playing a script by setting the first argument m to 0, the other
// arguments are saved but not loaded on startup and instead set to zero. This is most
// noticeable with the fade speed value. Thus if a {B,0,...} is issued to disable startup script
// playing, be sure to issue a {f, 20} command after BlinkM startup or color fading will not
// work.
// This command does not return a value.
        
void SetStartup(uint8_t m, uint8_t n, uint8_t r, uint8_t f, int8_t t)
{
    uint8_t data[6]={'B',m,n,r,f,(uint8_t)t};
    I2C_Write(data,6);
    __delay_ms(20);         //wait for EEPROM to finish write
}

//---------------------------------------------------------------------------------------------
