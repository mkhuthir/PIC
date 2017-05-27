

#include "mcc_generated_files/mcc.h"


void main(void)
{
    uint16_t Value;
    
    // Initialize the device
    SYSTEM_Initialize();

    
    // Execution Loop
    while (1)
    {
        Value = ADC_GetConversion(channel_AN3);
        LATC=Value>>12;
    }
}
