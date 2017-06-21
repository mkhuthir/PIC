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
// Writes nD number of bytes to I2C device with I2C address=Slave_Adr using Microchip MSSP I2C1 driver.

bool I2C_Write(char *pData, char nD)
{    
    static I2C1_TRANSACTION_REQUEST_BLOCK trb;              // TRB
    I2C1_MESSAGE_STATUS status = I2C1_MESSAGE_PENDING;      // initial status is pending
    uint8_t timeOut=0;                                      // used to count retries

    I2C1_MasterWriteTRBBuild(&trb, pData, nD, Slave_Adr);   // build a Write TRB

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
// Sends nC bytes command and Reads nD number of bytes from I2C device with
// I2C address=Slave_Adr using Microchip MSSP I2C1 driver.

bool I2C_Read(char *pCmnd, char nC, char*pData, char nD)
{    
    static I2C1_TRANSACTION_REQUEST_BLOCK trb[2];           // TRB
    I2C1_MESSAGE_STATUS status = I2C1_MESSAGE_PENDING;      // initial status is pending
    uint8_t timeOut=0;                                      // used to count retries

    I2C1_MasterWriteTRBBuild(&trb[0], pCmnd, nC, Slave_Adr); // build a Write TRB
    I2C1_MasterReadTRBBuild (&trb[1], pData, nD, Slave_Adr); // build a Read TRB
    
    while(status != I2C1_MESSAGE_FAIL)                      // if status is  I2C1_MESSAGE_ADDRESS_NO_ACK, or I2C1_DATA_NO_ACK,
    {                                                       // The device may be busy and needs more time for the last write.
        I2C1_MasterTRBInsert(2, &trb[0], &status);          // send the full TRB parameters > (length, data, status)
        while(status == I2C1_MESSAGE_PENDING);              // wait for the message to be sent or status has changed.
        if (status == I2C1_MESSAGE_COMPLETE) break;         // exit loop if status is complete
        if (timeOut == 30) break;                           // check if max retry=30 is reached
        else timeOut++;                                     // try again
    }
    return (status == I2C1_MESSAGE_COMPLETE);               // return the status
}

//---------------------------------------------------------------------------------------------
// Sets the BlinkM to a particular RGB color immediately.The command takes
// three argument bytes, one each for setting the levels of the red, green, and blue channels.
// Each value ranges from 0-255 (0x00-0xFF in hexadecimal), with 0 being off and 255 being
// maximum brightness.

void GoToRGB(char R, char G, char B)
{
    char data[4]={'n',0,0,0};
    data[1]=R;
    data[2]=G;
    data[3]=B;
    I2C_Write(data,4);
};

//---------------------------------------------------------------------------------------------
// Fades from the current color to the specified RGB color.The command takes three argument
// bytes, one each for setting the levels of the red, green, and blue channels. Each value 
// ranges from 0-255 (0x00-0xFF in hexadecimal), with 0 being off and 255 being maximum brightness.
// The rate at which the fading occurs is controlled by the SetFadeSpeed() command. 

void FadeToRGB(char R, char G, char B)
{
    char data[4]={'c',0,0,0};
    data[1]=R;
    data[2]=G;
    data[3]=B;
    I2C_Write(data,4);
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
    char data[4]={'h',0,0,0};
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

void FadeToRndRGB(char R, char G, char B)
{
    char data[4]={'C',0,0,0};
    data[1]=R;
    data[2]=G;
    data[3]=B;
    I2C_Write(data,4);
}

//---------------------------------------------------------------------------------------------
// Fades from the current color to a random color. It takes 3 bytes as arguments,
// one for each H,S, B value. Each argument is the range or degree of randomness to deviate
// from the current H,S,B color. A setting of 0 for a channel means to not change it at all.
// *Note* that this command only works after a previous FadeToHSB() command has been used to set an
// initial hue.

void FadeToRndHSB(char H, char S, char B)
{
    char data[4]={'H',0,0,0};
    data[1]=H;
    data[2]=S;
    data[3]=B;
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

void PlayLightScript(char n, char r, char p)
{
    char data[4]={'p',0,0,0};
    data[1]=n;
    data[2]=r;
    data[3]=p;
    I2C_Write(data,4);
}

//---------------------------------------------------------------------------------------------
// Stops any currently playing script. If no script is playing, this command has no
// effect. It takes no arguments and returns no value.

void StopScript()
{
    char data[1]={'o'};
    I2C_Write(data,1);
}

//---------------------------------------------------------------------------------------------
// Sets the rate at which color fading happens. It takes one argument that is the
// fade speed from 1-255. The slowest fading occurs when the fade speed is 1. To change
// colors instantly, set the fade speed to 255. A value of 0 is invalid and is reserved for a future
// ?Smart Fade? feature.

void SetFadeSpeed(char f)
{
    char data[2]={'f',0};
    data[1]=f;
    I2C_Write(data,2);
}

//---------------------------------------------------------------------------------------------
// Adjusts the playback speed of a light script. It takes one byte as an argument,
// a signed number between -128 and 127. The argument is treated as an additive adjustment to
// all durations of the script being played. A value of 0 resets the playback speed to the default.
// This command does not return a value.

void SetTimeAdjust(char t)
{
    char data[2]={'t',0};
    data[1]=t;
    I2C_Write(data,2);
}

//---------------------------------------------------------------------------------------------
// Returns the current color in RGB format. The command takes no argument bytes but returns
// 3 bytes representing the current values of the red, green and blue channels.
// *Note* If the BlinkM is currently fading between colors, this command returns the instantaneous
// current color value, not the destination color.

void GetCurrentRGB(char *data)
{
    char cmnd[1]={'g'};
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

void WriteScriptLine(char n, char p, char d, char c, char a1, char a2, char a3)
{
    char data[8]={'W',0,0,0,0,0,0,0};
    data[1]=n;
    data[2]=p;
    data[3]=d;
    data[4]=c;
    data[5]=a1;
    data[6]=a2;
    data[7]=a3;
    I2C_Write(data,8);
    __delay_ms(20);         //wait for EEPROM to finish write
}

//---------------------------------------------------------------------------------------------
// Reads a script line and returns the script line?s values. The first argument is the
// script id to read from. Script id 0 is the EEPROM script that can be written to, Script ids >0 refer
// to the built-in ROM scripts. The second argument is the number of the script line to read back.
// There are 5 bytes of return values: d = duration in ticks, c = command, a1,2,3 = arguments for
// command. If an invalid script id or script line number is given, all return values are zeros.
        
void ReadScriptLine(char n, char p, char* data)
{
    char cmnd[3]={'R',0,0};
    cmnd[1]=n;
    cmnd[2]=p;
    I2C_Read(cmnd,3,data,5);
}

//---------------------------------------------------------------------------------------------
// Sets the length of a written script. The first argument is the script id to set,
// currently only script id of 0 is valid. The second argument is the length of the script, and the
// third argument is the number of repeats for the script. This command takes approximately 15
// milliseconds to complete, due to EEPROM write times.
// This command does not return a value.
    
void SetScriptLength(char n, char l, char r)
{
    char data[4]={'L',0,0,0};
    data[1]=n;
    data[1]=l;
    data[1]=r;
    I2C_Write(data,4);
    __delay_ms(15);         //wait for EEPROM to finish write

}

//---------------------------------------------------------------------------------------------
// Sets the I2C address of a BlinkM. It takes four arguments. The first and last
// argument are the new address, and the second and third arguments are {0xd0,0x0d}. These
// two arguments are used as a check against inadvertent address changing. This command can
// be used with the I2C ?general call? broadcast address to change the address of a BlinkM if the
// previous address is not known. When using general call, only have one BlinkM powered up on
// the bus at a time or they will all change their address. This command takes approximately 15
// milliseconds to complete, due to EEPROM write time and I2C stack reset.
// See data sheet for more details about how BlinkM handles I2C addresses.
// This command does not return a value.
        
void SetBlinkMAdr(char a)
{
    char data[5]={'A',0,0xD0,0x0D,0};
    data[1]=a;
    data[4]=a;
    I2C_Write(data,5);
    __delay_ms(15);         //wait for EEPROM to finish write

}

//---------------------------------------------------------------------------------------------
// Returns the I2C address.

void GetBlinkMAdr(char* data)
{
    char cmnd[1]={'a'};
    I2C_Read(cmnd,1,data,1);
}

//---------------------------------------------------------------------------------------------
// Returns the BlinkM firmware version. The first byte is the major version, the second byte is the
// minor version.

void GetBlinkMVer(char* data)
{
    char cmnd[1]={'Z'};
    I2C_Read(cmnd,1,data,2);
    
}

//---------------------------------------------------------------------------------------------
// Sets the startup (or ?boot?) action for BlinkM. The command takes four
// arguments. The first argument ?m? is the startup mode: 0 means do nothing, 1 means play a
// script. The second argument ?n? is which script id to play. The third argument ?f? is the number
// of repetitions to play that script id. The fourth (?f?) and fifth (?t?) arguments are the fade speed
// and time adjust, respectively, to use with the script. This command takes about 20
// milliseconds to complete, due to EEPROM write time.
// Note: when turning off playing a script by setting the first argument ?m? to 0, the other
// arguments are saved but not loaded on startup and instead set to zero. This is most
// noticeable with the fade speed value. Thus if a ?{?B?,0,...}? is issued to disable startup script
// playing, be sure to issue a ?{?f?, 20}? command after BlinkM startup or color fading will not
// work.
// This command does not return a value.
        
void SetStartup(char m, char n, char r, char f, char t)
{
    char data[6]={'B',0,0,0,0,0};
    data[1]=m;
    data[2]=n;
    data[3]=r;
    data[4]=f;
    data[5]=t;
    I2C_Write(data,6);
}

//---------------------------------------------------------------------------------------------
