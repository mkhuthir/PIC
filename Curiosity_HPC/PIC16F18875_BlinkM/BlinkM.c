// IS31FL3731 Library
// Muthanna A. Attyah (May 2017)
// Please feel free to copy and use code.
// Device data sheet https://thingm.com/fileadmin/thingm/downloads/BlinkM_datasheet.pdf

// How the BlinkM is connected to Curiosity HPC Board:
/**
BlankM  Click   Curiosity HPC
-------------------------------------
I2C C   SCL     RC4     - I2C clock
I2C D   SDA     RC3     - I2C data
PWR-    GND     GND     - Ground
PWR+    +5V     +5V     - Power supply
-------------------------------------

**/

#ifndef _BlinkM_H
#include "BlinkM.h"
#endif

bool WriteReg(uint8_t reg, uint8_t data)
{
    
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
