
#ifndef DEVICE_INITIALIZE_H
#define	DEVICE_INITIALIZE_H

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>
#include "adc.h"
#include "pwm.h"
#include "tmr2.h"

#define _XTAL_FREQ 8000000

void SYSTEM_Initialize(void);
void OSCILLATOR_Initialize(void);

#endif

