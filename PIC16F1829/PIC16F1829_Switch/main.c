

#include "mcc_generated_files/mcc.h"


void main(void)
{
    // initialize the device
    SYSTEM_Initialize();

    // execution loop
    while (1)
    {
        LED_DS1_LAT=~IO_RA2_GetValue(); // RA2=0 when switch is pressed.
    }
}
