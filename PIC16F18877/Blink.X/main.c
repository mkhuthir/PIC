
#include "mcc_generated_files/mcc.h"

/*
                         Main application
 */
void main(void)
{
    // initialize the device
    SYSTEM_Initialize();

        IO_RC4_SetLow();
        IO_RC5_SetHigh();
        IO_RC6_SetLow();
        IO_RC7_SetHigh();
        
        IO_RD4_SetLow();
        IO_RD5_SetHigh();
        IO_RD6_SetLow();
        IO_RD7_SetHigh();
    
    //execution loop
    while (1)
    {
        IO_RC4_Toggle();
        IO_RC5_Toggle();
        IO_RC6_Toggle();
        IO_RC7_Toggle();
        
        IO_RD4_Toggle();
        IO_RD5_Toggle();
        IO_RD6_Toggle();
        IO_RD7_Toggle();
        
        __delay_ms(1000);
    }
}
