
#include "mcc_generated_files/mcc.h"
#include "EMC1001.h"

//Main code
void main(void)
{

    SYSTEM_Initialize();
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();
        
    while (1)
    {
        printf("\x0C");   //Form Feed
        EMC1001_PrintInfo();
        EMC1001_PrintTemp();
        __delay_ms(1000);
    }
}
