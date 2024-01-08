#include "mcc_generated_files/mcc.h"

void main(void)
{
    // initialize the device
    SYSTEM_Initialize();

    LED_D4_SetHigh();
    LED_D5_SetHigh();
    LED_D6_SetHigh();
    LED_D7_SetHigh();
    
    // execution loop
    while (1)
    {
        LED_D4_Toggle();
        LED_D5_Toggle();
        LED_D6_Toggle();
        LED_D7_Toggle();
        
        if (S1_GetValue()==0) LED_D4_Toggle(); // Change status of LED D4 if S1 is pressed.
        
        __delay_ms(500);
    }
}
/**
 End of File
*/