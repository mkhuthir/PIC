
#include "mcc_generated_files/mcc.h"

void main(void)
{
 
    SYSTEM_Initialize();

    IO_RA4_SetHigh();
    IO_RA5_SetLow();
    IO_RA6_SetHigh();
    IO_RA7_SetHigh();
}
