// Muthanna Alwahash
// Jan 2024

#include "../../system/interrupt.h"
#include "../../system/system.h"
#include "../pins.h"

void (*INT_InterruptHandler)(void);

void  INTERRUPT_Initialize (void)
{
    // Clear the interrupt flag
    // Set the external interrupt edge detect
    EXT_INT_InterruptFlagClear();   
    EXT_INT_risingEdgeSet();
    // Set Default Interrupt Handler
    INT_SetInterruptHandler(INT_DefaultInterruptHandler);
    // EXT_INT_InterruptEnable();

}

/**
 * @ingroup interrupt
 * @brief Services the Interrupt Service Routines (ISR) of enabled interrupts and is called every time an interrupt is triggered.
 * @pre Interrupt Manager is initialized.
 * @param None.
 * @return None.
 */
void __interrupt() INTERRUPT_InterruptManager (void)
{
    // interrupt handler
    if(PIE0bits.IOCIE == 1 && PIR0bits.IOCIF == 1)
    {
        PIN_MANAGER_IOC();
    }
    else
    {
        //Unhandled Interrupt
    }
}

void INT_ISR(void)
{
    EXT_INT_InterruptFlagClear();

    // Callback function gets called everytime this ISR executes
    INT_CallBack();    
}


void INT_CallBack(void)
{
    // Add your custom callback code here
    if(INT_InterruptHandler)
    {
        INT_InterruptHandler();
    }
}

void INT_SetInterruptHandler(void (* InterruptHandler)(void)){
    INT_InterruptHandler = InterruptHandler;
}

void INT_DefaultInterruptHandler(void){
    // add your INT interrupt custom code
    // or set custom function using INT_SetInterruptHandler()
}
