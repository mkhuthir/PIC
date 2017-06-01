// IS31FL3731 Library
// Muthanna A. Attyah (May 2017)
// Please feel free to copy and use code.
// Device datasheet https://download.mikroe.com/documents/datasheets/is31fl3731-datasheet.pdf

#ifndef _IS31FL3731_H
#define _IS31FL3731_H

#ifndef MCC_H
#include "mcc_generated_files/mcc.h"
#endif

//-------------------------------------------------------------------------------------
// IS31FL3731 Address
#define IS31FL3731_ADDRESS  0x74    // slave device address  (AD connected to GND by default)
#define RETRY_MAX           100     // Maximum retries before return with a fail status.

// IS31FL3731 registers

//-------------------------------------------------------------------------------------
// functions
//-------------------------------------------------------------------------------------
bool IS31FL3731_Read(uint8_t reg, uint8_t *pData); // Reads 1 byte from IS31FL3731 using SMBus protocol
bool IS31FL3731_Write(uint8_t reg, uint8_t data);  // Writes 1 byte to IS31FL3731 using SMBus protocol

//-------------------------------------------------------------------------------------

#endif
