// (C) Muthanna A. Attyah Mar 2017
// Using PIC16F18875 on Curiosity HPC DevBoard
//

#include "mcc_generated_files/mcc.h"

static	uint16_t    address = (0xC0);

static	uint8_t     State = 0,
                    length = 1,
                    command = 0,
                    data = 0,
                    result[8];

static	I2C1_MESSAGE_STATUS I2C_Wflag, //Write Status Flag
                            I2C_Rflag; //Read Status Flag


void main(void)
{
    
    SYSTEM_Initialize();
    
   
    INTERRUPT_GlobalInterruptEnable();      // Enable Global Interrupts
    INTERRUPT_PeripheralInterruptEnable();  // Enable Peripheral Interrupts
    LED_D4_SetLow();                        // Turn off error LED
  
    // Start a I2C Write operation.
    I2C1_MasterWrite( &command, length, address, &I2C_Wflag);
    
    if (I2C_Wflag == I2C1_MESSAGE_FAIL)
        while (1) LED_D4_SetHigh(); // Error !!
    
    while (I2C_Wflag != I2C1_MESSAGE_COMPLETE); // Wait for communication.
    
    
    // Start a Read operation.
    I2C1_MasterRead(  &data, 1, address, &I2C_Rflag);
    
    if (I2C_Rflag == I2C1_MESSAGE_FAIL)
       while (1) LED_D4_SetHigh(); // Error !!
    
    while (I2C_Rflag != I2C1_MESSAGE_COMPLETE); // Wait for communication.
 
   
    
    while (1)
    {
 
    }
}
