// IS31FL3731 Library
// Muthanna A. Attyah (May 2017)
// Please feel free to copy and use code.
// Device datasheet https://download.mikroe.com/documents/datasheets/is31fl3731-datasheet.pdf

#include "mcc_generated_files/mcc.h"
#include "IS31FL3731.h"

// Main code
void main(void)
{
    // Setup and initializations
    SYSTEM_Initialize();
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();

    // LEDs initializations
    LED2_SetHigh();     // Not Used
    LED3_SetHigh();     // Not used
    LED4_SetHigh();     // Not used
    LED5_SetHigh();     // Not used
    
    // IS31FL3731 initializations
          
    InitIS31FL3731();
    
    // Execution loop
            
    while(1){}
    
}
