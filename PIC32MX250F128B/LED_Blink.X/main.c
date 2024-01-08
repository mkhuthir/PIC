// Muthanna A. Attyah Mar 2017
// Using PIC32MX250128B on Microstick II DevBoard

#include "mcc_generated_files/mcc.h"

 

int main(void)
{
  
    SYSTEM_Initialize();
    int i;
    
    while (1)
    {
        IO_RA0_Toggle();
        
        i=300000;       //delay
        while(i--){};
    }
    
}
