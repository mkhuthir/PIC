// Muthanna Alwahash
// Jan 2024

#include "mcc_generated_files/system/system.h"

// disable warnings about unused functions
#pragma warning disable 520
#pragma warning disable 2053

void WaitKeyPress()
{
    while(S1_GetValue());         // Wait until S1 key is pressed
    __delay_ms(50);
    while(!S1_GetValue());        // Wait until S1 key is released
    __delay_ms(50);
}

// Main code
void main(void)
{
    // Setup and initializations
    SYSTEM_Initialize();
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();
        
    while(1){
        
        printf("\n\r I2C Scanner.... \n\r");

        D2_SetHigh();           // All Dx LEDs On.
        D3_SetHigh();
        D4_SetHigh();
        D5_SetHigh();
        
        WaitKeyPress();
        
        D2_SetLow();            // All Dx LEDs Off.
        D3_SetLow();
        D4_SetLow();
        D5_SetLow();
        
        WaitKeyPress();
    }
        
}
