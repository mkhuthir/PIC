// (c) Muthanna A. Attyah Mar 2017
// using PC16F18875 on Curiosity HPC

#include "mcc_generated_files/mcc.h"


void main(void)
{

    SYSTEM_Initialize();
    
    IO_RA4_SetLow();
    IO_RA5_SetHigh();
    IO_RA6_SetLow();
    IO_RA7_SetHigh();
    
    while (1){
               
        IO_RA4_Toggle();
        IO_RA5_Toggle();
        IO_RA6_Toggle();
        IO_RA7_Toggle();
        __delay_ms(500);
    }

}
