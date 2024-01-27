// Muthanna Alwahash
// Jan 2024

#include "mcc_generated_files/system/system.h"

int main(void)
{
    SYSTEM_Initialize();
    
    IO_RA4_SetHigh();
    IO_RA5_SetHigh();
    IO_RA6_SetHigh();
    IO_RA7_SetHigh();
            
    while(1)
    {
        IO_RA4_Toggle();
        IO_RA5_Toggle();
        IO_RA6_Toggle();
        IO_RA7_Toggle();
        printf("hello");
        __delay_ms(40);
    }    
}