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

#pragma warning disable 520

#ifndef _BlinkM_H
#include "BlinkM.h"
#endif

//---------------------------------------------------------------------------------------------
// Writes n number of bytes to I2C device with I2C address=Slave_Adr using Microchip MSSP I2C1 driver.

bool I2C_Write(char *pData, char n)
{    
    static I2C1_TRANSACTION_REQUEST_BLOCK trb;              // TRB
    I2C1_MESSAGE_STATUS status = I2C1_MESSAGE_PENDING;      // initial status is pending
    uint8_t timeOut=0;                                      // used to count retries

    I2C1_MasterWriteTRBBuild(&trb, pData, n, Slave_Adr);  // build a Write TRB parameters > (TRB, data, length, address)

    while(status != I2C1_MESSAGE_FAIL)                      // if status is  I2C1_MESSAGE_ADDRESS_NO_ACK, or I2C1_DATA_NO_ACK,
    {                                                       // The device may be busy and needs more time for the last write.
        I2C1_MasterTRBInsert(1, &trb, &status);             // send the full TRB parameters > (length, data, status)
        while(status == I2C1_MESSAGE_PENDING);              // wait for the message to be sent or status has changed.
        if (status == I2C1_MESSAGE_COMPLETE) break;         // exit loop if status is complete
        if (timeOut == 30) break;                           // check if max retry=30 is reached
        else timeOut++;                                     // try again
    }
    return (status == I2C1_MESSAGE_COMPLETE);               // return the status
}

//---------------------------------------------------------------------------------------------
// Reads n number of bytes from I2C device with I2C address=Slave_Adr using Microchip MSSP I2C1 driver.

bool I2C_Read(char *pData, char n)
{    

}

//---------------------------------------------------------------------------------------------
// Sets the BlinkM to a particular RGB color immediately.The command takes
// three argument bytes, one each for setting the levels of the red, green, and blue channels.
// Each value ranges from 0-255 (0x00-0xFF in hexadecimal), with 0 being off and 255 being
// maximum brightness.

void GoToRGB(char R, char G, char B)
{
    char buffer[4]={'n',0,0,0};
    buffer[1]=R;
    buffer[2]=G;
    buffer[3]=B;
    I2C_Write(buffer,4);
};

//---------------------------------------------------------------------------------------------
// Fades from the current color to the specified RGB color.The command takes three argument
// bytes, one each for setting the levels of the red, green, and blue channels. Each value 
// ranges from 0-255 (0x00-0xFF in hexadecimal), with 0 being off and 255 being maximum brightness.
// The rate at which the fading occurs is controlled by the SetFadeSpeed() command. 

void FadeToRGB(char R, char G, char B)
{
    char buffer[4]={'c',0,0,0};
    buffer[1]=R;
    buffer[2]=G;
    buffer[3]=B;
    I2C_Write(buffer,4);
}

//---------------------------------------------------------------------------------------------
// Fades from the current color to the specified HSB color.The command takes
// three bytes as arguments. The first argument byte is the hue (or raw color), with mapping from 0-255.
// The second argument is the saturation, or vividness, of the color. A saturation of 0 means a
// very light/white color and a saturation of 255 means a very vivid color. The third argument is
// the brightness of the resulting color, where 0 is totally dark and 255 means maximally bright. 
// The rate at which the fading occurs is controlled by the SetFadeSpeed() command. 

void FadeToHSB(char H, char S, char B)
{
    char buffer[4]={'h',0,0,0};
    buffer[1]=H;
    buffer[2]=S;
    buffer[3]=B;
    I2C_Write(buffer,4);
}

//---------------------------------------------------------------------------------------------
// Fades from the current color to a random color. It takes 3 bytes as arguments,
// one for each R,G,B channel. Each argument is the range or amount of randomness for each
// of the R,G,B channels from which to deviate from the current color.
// A setting of 0 for a channel means to not change it at all.

void FadeToRndRGB(char R, char G, char B)
{
    char buffer[4]={'C',0,0,0};
    buffer[1]=R;
    buffer[2]=G;
    buffer[3]=B;
    I2C_Write(buffer,4);
}

//---------------------------------------------------------------------------------------------
// Fades from the current color to a random color. It takes 3 bytes as arguments,
// one for each H,S, B value. Each argument is the range or degree of randomness to deviate
// from the current H,S,B color. A setting of 0 for a channel means to not change it at all.
// *Note* that this command only works after a previous FadeToHSB() command has been used to set an
// initial hue.

void FadeToRndHSB(char H, char S, char B)
{
    char buffer[4]={'H',0,0,0};
    buffer[1]=H;
    buffer[2]=S;
    buffer[3]=B;
    I2C_Write(buffer,4);
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

void PlayLightScript(char n, char r, char p)
{
    char buffer[4]={'p',0,0,0};
    buffer[1]=n;
    buffer[2]=r;
    buffer[3]=p;
    I2C_Write(buffer,4);
}

//---------------------------------------------------------------------------------------------
// Stops any currently playing script. If no script is playing, this command has no
// effect. It takes no arguments and returns no value.

void StopScript()
{
    char buffer[1]={'o'};
    I2C_Write(buffer,1);
}

//---------------------------------------------------------------------------------------------
// Sets the rate at which color fading happens. It takes one argument that is the
// fade speed from 1-255. The slowest fading occurs when the fade speed is 1. To change
// colors instantly, set the fade speed to 255. A value of 0 is invalid and is reserved for a future
// ?Smart Fade? feature.

void SetFadeSpeed(char f)
{
    char buffer[2]={'f',0};
    buffer[1]=f;
    I2C_Write(buffer,2);
}

//---------------------------------------------------------------------------------------------
// Adjusts the playback speed of a light script. It takes one byte as an argument,
// a signed number between -128 and 127. The argument is treated as an additive adjustment to
// all durations of the script being played. A value of 0 resets the playback speed to the default.
// This command does not return a value.

void SetTimeAdjust(char ti)
{
    char buffer[2]={'t',0};
    buffer[1]=t;
    I2C_Write(buffer,2);
}

//---------------------------------------------------------------------------------------------
// Returns the current color in RGB format. The command takes no argument bytes but returns
// 3 bytes representing the current values of the red, green and blue channels.
// *Note* If the BlinkM is currently fading between colors, this command returns the instantaneous
// current color value, not the destination color.

void GetCurrentRGB()
{
    char buffer[4]={'g',0,0,0};
    I2C_Read(buffer,4);
}

//---------------------------------------------------------------------------------------------
// This command writes a light script line. The first argument is which script id to write to.
// Currently, only script id 0 can be written to. The second argument is which line in the script to
// change, and can range from 0-49. The third argument is the duration in ticks for that
// command to last. The next four arguments are the BlinkM command and its arguments. Any
// command with less than 3 arguments should fill out the remaining arguments slots with zeros.
// This command takes approximately 20 milliseconds to complete, due to EEPROM write time.
// Once all the lines of the desired script are written, set the script length with the ?Set Script
// Length? (?L?) command. This command does not return a value.

void WriteScriptLine(char n, char p, char d, char c, char a1, char a2, char a3)
{
    char buffer[8]={'W',0,0,0,0,0,0,0};
    buffer[1]=n;
    buffer[2]=p;
    buffer[3]=d;
    buffer[4]=c;
    buffer[5]=a1;
    buffer[6]=a2;
    buffer[7]=a3;
    I2C_Write(buffer,8);
    __delay_ms(20);         //wait for EEPROM to finish write
}

//---------------------------------------------------------------------------------------------
// Sets the length of a written script. The first argument is the script id to set,
// currently only script id of 0 is valid. The second argument is the length of the script, and the 
// third argument is the number of repeats for the script. This command takes approximately 15
// milliseconds to complete, due to EEPROM write times.
// This command does not return a value.
void ReadScriptLine(char n, char l, char r)
{
    char buffer[4]={'L',0,0,0};
    buffer[1]=n;
    buffer[2]=l;
    buffer[3]=r;
    I2C_Write(buffer,4);
    __delay_ms(15);         //wait for EEPROM to finish write
}

//---------------------------------------------------------------------------------------------

void SetScriptLine()
{
    char buffer[2]={'f',0};
    buffer[1]=f;
    I2C_Write(buffer,2);
}

//---------------------------------------------------------------------------------------------

void SetBlinkMAdr()
{
    char buffer[2]={'f',0};
    buffer[1]=f;
    I2C_Write(buffer,2);
}

//---------------------------------------------------------------------------------------------

void GetBlinkMAdr()
{
    char buffer[2]={'f',0};
    buffer[1]=f;
    I2C_Write(buffer,2);
}

//---------------------------------------------------------------------------------------------

void GetBlinkMVer()
{
    char buffer[2]={'f',0};
    buffer[1]=f;
    I2C_Write(buffer,2);
}

//---------------------------------------------------------------------------------------------

void SetStartup()
{
    char buffer[2]={'f',0};
    buffer[1]=f;
    I2C_Write(buffer,2);
}

//---------------------------------------------------------------------------------------------
