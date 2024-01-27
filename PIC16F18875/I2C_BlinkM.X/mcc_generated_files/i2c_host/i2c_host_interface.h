// Muthanna Alwahash
// Jan 2024

/**
 * I2C Generated Driver Interface Header File
 *
 * @file i2c_host_interface.h
 *
 * @defgroup i2c_host_interface I2C_HOST_INTERFACE
 *
 * @brief This file contains additional data types for the I2C module.
 *
 * @version I2C Driver Version 2.1.0
 */

#ifndef I2C_HOST_INTERFACE_H
#define I2C_HOST_INTERFACE_H

/**
  Section: Included Files
 */
#include <stdbool.h>
#include <stdint.h>
#include <xc.h>
#include "i2c_host_types.h"

/**
 * @ingroup i2c_host_interface
 * @strcut i2c_host_interface_t
 * @brief Structure containing the function pointers of the I2C drivers.
 */
typedef struct
{
    void (*Initialize)(void);
    void (*Deinitialize)(void);
    bool (*Write)(uint16_t address, uint8_t *data, size_t dataLength);
    bool (*Read)(uint16_t address, uint8_t *data, size_t dataLength);
    bool (*WriteRead)(uint16_t address, uint8_t *writeData, size_t writeLength, uint8_t *readData, size_t readLength);
    bool (*TransferSetup)(i2c_host_transfer_setup_t* setup, uint32_t srcClkFreq);
    i2c_host_error_t (*ErrorGet)(void);
    bool (*IsBusy)(void);
    void (*CallbackRegister)(void (*callback)(void));
    void (*Tasks)(void);
} i2c_host_interface_t;

#endif // end of I2C_HOST_INTERFACE_H

