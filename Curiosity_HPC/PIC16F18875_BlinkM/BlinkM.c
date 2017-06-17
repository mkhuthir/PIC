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

bool I2C_Write(char *pData, char len)
{    
    static I2C1_TRANSACTION_REQUEST_BLOCK trb;              // TRB
    I2C1_MESSAGE_STATUS status = I2C1_MESSAGE_PENDING;      // initial status is pending
    uint8_t timeOut=0;                                      // used to count retries

    I2C1_MasterWriteTRBBuild(&trb, pData, len, Slave_Adr);  // build a Write TRB parameters > (TRB, data, length, address)

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

void GoToRGB(char R, char G, char B)
{
    char buffer[4]={'n',0,0,0};
    buffer[1]=R;
    buffer[2]=G;
    buffer[3]=B;
    I2C_Write(buffer,4);
};

//---------------------------------------------------------------------------------------------

void FadeToRGB(char R, char G, char B)
{
    char buffer[4]={'c',0,0,0};
    buffer[1]=R;
    buffer[2]=G;
    buffer[3]=B;
    I2C_Write(buffer,4);
}

//---------------------------------------------------------------------------------------------

void FadeToHSB(char H, char S, char B)
{
    char buffer[4]={'h',0,0,0};
    buffer[1]=H;
    buffer[2]=S;
    buffer[3]=B;
    I2C_Write(buffer,4);
}

//---------------------------------------------------------------------------------------------

void FadeToRndRGB(char R, char G, char B)
{
    char buffer[4]={'C',0,0,0};
    buffer[1]=R;
    buffer[2]=G;
    buffer[3]=B;
    I2C_Write(buffer,4);
}

//---------------------------------------------------------------------------------------------

void FadeToRndHSB(char H, char S, char B)
{
    char buffer[4]={'H',0,0,0};
    buffer[1]=H;
    buffer[2]=S;
    buffer[3]=B;
    I2C_Write(buffer,4);
}

//---------------------------------------------------------------------------------------------

void PlayLightScript(char n, char r, char p)
{
    char buffer[4]={'p',0,0,0};
    buffer[1]=n;
    buffer[2]=r;
    buffer[3]=p;
    I2C_Write(buffer,4);
}

//---------------------------------------------------------------------------------------------

void StopScript()
{
    char buffer[1]={'o'};
    I2C_Write(buffer,1);
}

//---------------------------------------------------------------------------------------------