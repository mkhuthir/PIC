
// (C) Muthanna A. Attyah Mar 2017
// Using PIC16F18875 on Curiosity HPC DevBoard

#include "mcc_generated_files/mcc.h"

void main(void)
{
 
    SYSTEM_Initialize();

    IO_RA4_SetHigh();
    IO_RA5_SetHigh();
    IO_RA6_SetHigh();
    IO_RA7_SetHigh();
}
