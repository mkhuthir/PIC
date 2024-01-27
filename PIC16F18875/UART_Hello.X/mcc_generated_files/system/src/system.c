// Muthanna Alwahash
// Jan 2024

#include "../system.h"

void SYSTEM_Initialize(void)
{
    CLOCK_Initialize();
    PIN_MANAGER_Initialize();
    EUSART_Initialize();
    INTERRUPT_Initialize();
}

