// Muthanna Alwahash
// Jan 2024

#include "mcc_generated_files/system/system.h"

int main(void)
{
    SYSTEM_Initialize();
    
    IO_RA4_SetHigh();
                
    while(1)
    {
        IO_RA4_Toggle();
    
        printf("hello");
        
        __delay_ms(300);
    }    
}