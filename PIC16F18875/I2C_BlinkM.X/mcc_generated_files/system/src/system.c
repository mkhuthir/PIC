// Muthanna Alwahash
// Jan 2024

/**
 * System Driver Source File
 * 
 * @file system.c
 * 
 * @ingroup systemdriver
 * 
 * @brief This file contains the API implementation for the System Driver.
 *
 * @version Driver Version 2.0.2
*/

#include "../system.h"


void SYSTEM_Initialize(void)
{
    CLOCK_Initialize();
    PIN_MANAGER_Initialize();
    EUSART_Initialize();
    I2C1_Initialize();
    INTERRUPT_Initialize();
}

