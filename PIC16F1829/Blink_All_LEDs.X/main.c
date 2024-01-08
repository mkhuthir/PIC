

#include "mcc_generated_files/mcc.h"


void main(void)
{
    // initialize the device
    SYSTEM_Initialize();

    // When using interrupts, you need to set the Global and Peripheral Interrupt Enable bits
    // Use the following macros to:

    // Enable the Global Interrupts
    //INTERRUPT_GlobalInterruptEnable();

    // Enable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptEnable();

    // Disable the Global Interrupts
    //INTERRUPT_GlobalInterruptDisable();

    // Disable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptDisable();
    
    LED_DS1_SetLow();
    LED_DS2_SetHigh();
    LED_DS3_SetLow();
    LED_DS4_SetHigh();
    
    while (1)
    {
        LED_DS1_Toggle();
        LED_DS2_Toggle();
        LED_DS3_Toggle();
        LED_DS4_Toggle();
        
        __delay_ms(1000);
    }
}
