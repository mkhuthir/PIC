// Muthanna Alwahash
// Jan 2024

#ifndef SYSTEM_H
#define	SYSTEM_H

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>
#include "config_bits.h"
#include "../system/clock.h"
#include "../system/pins.h"
#include "../uart/eusart.h"
#include "../system/interrupt.h"

void SYSTEM_Initialize(void);

#endif //SYSTEM_H
