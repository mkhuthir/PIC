

#include "mcc_generated_files/mcc.h"


void main(void)
{
    // initialize the device
    SYSTEM_Initialize();

    // execution loop
    while (1)
    {
        DS1_Toggle();
        DS2_Toggle();
        DS3_Toggle();
        DS4_Toggle();
        
        __delay_ms(1000);
    }
}
