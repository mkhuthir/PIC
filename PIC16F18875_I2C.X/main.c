// (C) Muthanna A. Attyah Mar 2017
// Using PIC16F18875 on Curiosity HPC DevBoard
//

#include "mcc_generated_files/mcc.h"

void main(void)
{
    
    SYSTEM_Initialize();
    
     #define SLAVE_I2C_GENERIC_RETRY_MAX     100
 
        // initialize the module
        I2C1_Initialize();
        INTERRUPT_GlobalInterruptEnable();
        INTERRUPT_PeripheralInterruptEnable();
        
        // 
        uint8_t         slaveDeviceAddress = 0x09;
        uint8_t         writeBuffer[4];
        uint16_t        timeOut;

        I2C1_MESSAGE_STATUS status = I2C1_MESSAGE_PENDING;

            writeBuffer[0] = 0x6E;
            writeBuffer[1] = 0xFF;
            writeBuffer[2] = 0x00;
            writeBuffer[3] = 0x00;
            
            // Now it is possible that the slave device will be slow.
            // As a work around on these slaves, the application can
            // retry sending the transaction
            timeOut = 0;
            while(status != I2C1_MESSAGE_FAIL)
            {
                // write one byte to EEPROM (3 is the number of bytes to write)
                I2C1_MasterWrite(  writeBuffer,
                                        4,
                                        slaveDeviceAddress,
                                        &status);

                // wait for the message to be sent or status has changed.
                while(status == I2C1_MESSAGE_PENDING);

                if (status == I2C1_MESSAGE_COMPLETE)
                    break;

                // if status is  I2C1_MESSAGE_ADDRESS_NO_ACK,
                //               or I2C1_DATA_NO_ACK,
                // The device may be busy and needs more time for the last
                // write so we can retry writing the data, this is why we
                // use a while loop here

                // check for max retry and skip this byte
                if (timeOut == SLAVE_I2C_GENERIC_RETRY_MAX)
                    break;
                else
                    timeOut++;
            }

            if (status == I2C1_MESSAGE_FAIL)
            {
                LED_D4_SetHigh();
            }
           

        }
    
    

