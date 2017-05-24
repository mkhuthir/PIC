
#include "mcc_generated_files/mcc.h"

//stdio is redirected to USART (TX=RC0) baudrate 19200 8N1

void main(void)
{
    
    
    char data;
    
    SYSTEM_Initialize();    // initialize the device

    
    while (1)
    {
            
        switch(getch()) {
          
            case '1' :
                LED2_Toggle();
                printf("Toggled LED D2\n");
                break;
                
            case '2' :
                LED3_Toggle();
                printf("Toggled LED D3\n");
                break;
                
            case '3' :
                LED4_Toggle();
                printf("Toggled LED D4\n");
                break;
                
            case '4' :
                LED5_Toggle();
                printf("Toggled LED D5\n");
                break;
                
            default :
                printf("\nType 1,2,3, or 4 to toggle LEDs  \n" );
        }    
        
    }
}
