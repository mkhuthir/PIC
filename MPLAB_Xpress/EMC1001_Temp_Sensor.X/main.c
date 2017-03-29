
#include "mcc_generated_files/mcc.h"
#include "EMC1001.h"

//Main code
void main(void)
{

    SYSTEM_Initialize();
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();
    
    LED2_SetLow(); //Data reading indicator
    LED3_SetLow();  //EMC1001 ALARM1 indicator
    LED4_SetLow();  //EMC1001 ALRAM2 indicator
    LED5_SetLow();
    
    while (1)
    {
        LED2_Toggle();          //LED2 ON when reading data
        printf("\x0C");         //Terminal Form Feed to erase screen
        EMC1001_PrintInfo();
        EMC1001_PrintTemp();
        
        LED3_LAT=EMC1001_ALARM1_GetValue(); //Display ALARM1 on LED3
        LED4_LAT=EMC1001_ALARM2_GetValue(); //Display ALARM2 on LED4
        
        LED2_Toggle();          //LED2 OFF when finish reading data
        
        __delay_ms(500);        //delay 500ms
    }
}
