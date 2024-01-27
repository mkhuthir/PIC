// Muthanna Alwahash
// Jan 2024

/**
 * Interrupt Manager Generated Driver File
 *
 * @file interrupt.c
 * 
 * @ingroup interrupt 
 * 
 * @brief This file contains the API implementation for the Interrupt Manager driver.
 * 
 * @version Interrupt Manager Driver Version 2.0.5
*/

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
    else if(INTCONbits.PEIE == 1)
    {
        if(PIE3bits.BCL1IE == 1 && PIR3bits.BCL1IF == 1)
        {
            I2C1_ERROR_ISR();
        } 
        else if(PIE3bits.SSP1IE == 1 && PIR3bits.SSP1IF == 1)
        {
            I2C1_ISR();
        } 
        else
        {
            //Unhandled Interrupt
        }
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
