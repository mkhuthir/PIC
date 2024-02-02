// Muthanna Alwahash
// Jan 2024

/**
 * I2C Generated Driver Types Header File
 *
 * @file i2c_host_types.h
 *
 * @ingroup i2c_host_interface
 *
 * @brief This file contains additional data types for the I2C module.
 *
 * @version I2C Driver Version 2.1.0
 */

#ifndef I2C_HOST_TYPES_H
#define	I2C_HOST_TYPES_H

/**
 * @ingroup i2c_host_interface
 * @enum  i2c_host_error_t
 * @brief Enumeration for the I2C errors
 */
typedef enum
{
    I2C_ERROR_NONE,             /**< No error */
    I2C_ERROR_ADDR_NACK,        /**< Client returned address NACK */
    I2C_ERROR_DATA_NACK,        /**< Client returned data NACK */
    I2C_ERROR_BUS_COLLISION,    /**< Bus Collision error */
} i2c_host_error_t;

/**
 * @ingroup i2c_host_interface
 * @struct i2c_host_transfer_setup_t
 * @brief Structure for the I2C clock change
 */
typedef struct
{
  uint32_t clkSpeed;            /**< I2C Clock Speed */
} i2c_host_transfer_setup_t;

#endif // end of I2C_HOST_TYPES_H