// Muthanna A. Attyah (June 2017)
// Please feel free to copy and use code.

#ifndef DEVICE_INITIALIZE_H
#define	DEVICE_INITIALIZE_H

#include "pins.h"
#include "adc.h"
#include <xc.h>
#include <stdint.h>
#include <stdbool.h>


#define _XTAL_FREQ 8000000

void SYSTEM_Initialize(void);
void OSCILLATOR_Initialize(void);

#endif

