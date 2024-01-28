// Muthanna Alwahash
// Jan 2024

/**
 * UART Generated Driver Interface Header File
 * 
 * @file uart_types.h
 * 
 * @defgroup uart_types UART_TYPES
 * 
 * @brief This file contains APIs for UART module.
 *
 * @version UART Driver Version 3.0.0
*/

#ifndef UART_TYPES_H
#define	UART_TYPES_H

/**
  Section: Included Files
*/
#include <stdbool.h>
#include <stdint.h>

#ifdef	__cplusplus
extern "C" {
#endif

   
/**
  Section: Data Type Definitions
*/ 
      
/**
@ingroup uartdriver
@enum UART_STANDARD_BAUDS
@brief This Enum can be used to set UART standard
baud-rates using \ref UARTx_BRGSet function e.g. \ref UART1_BRGSet.
*/
enum UART_STANDARD_BAUDS{
UART_110 = 0,
UART_300 = 1,
UART_600 = 2,
UART_1200 = 3,
UART_2400 = 4,
UART_4800 = 5,
UART_9600 = 6,
UART_14400 = 7,
UART_19200 = 8,
UART_38400 = 9,
UART_57600 = 10,
UART_115200 = 11,
UART_230400 = 12,
UART_460800 = 13,
UART_921600 = 14,
};


#ifdef	__cplusplus
}
#endif

#endif	/* UART_TYPES_H */

