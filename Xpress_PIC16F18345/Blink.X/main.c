
#include "mcc_generated_files/mcc.h"

void main(void)
{
    // initialize the device
    SYSTEM_Initialize();

    IO_RA0_SetLow();
    IO_RA1_SetLow();
    IO_RA2_SetLow();

    IO_RB4_SetLow();
    IO_RB5_SetLow();
    IO_RB6_SetLow();

    IO_RC0_SetLow();
    IO_RC1_SetLow();
    IO_RC2_SetLow();

    // execution loop
    while (1)
    {
        IO_RA0_Toggle();
        IO_RA1_Toggle();
        IO_RA2_Toggle();
        
        IO_RB4_Toggle();
        IO_RB5_Toggle();
        IO_RB6_Toggle();
        
        IO_RC0_Toggle();
        IO_RC1_Toggle();
        IO_RC2_Toggle();
        
        __delay_ms(1000);
    }
}
