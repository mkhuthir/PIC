// Muthanna A. Attyah (June 2017)
// Please feel free to copy and use code.

#include "device_initialize.h"

// Main application
void main(void)
{
    SYSTEM_Initialize();    // Initialize the device

    IO_RA0_SetHigh();       // LED1 ON
    IO_RA1_SetLow();        // LED2 OFF
   
    while (1)
    {
        IO_RA0_Toggle();    // Toggle LED1
        IO_RA1_Toggle();    // Toggle LED2
        for (adc_result_t i=ADC_GetConversion(channel_AN2);i>0;i--) __delay_ms(4); // Read POT and delay based on it
        
    }
}
