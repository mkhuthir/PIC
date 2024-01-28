// Muthanna Alwahash
// Jan 2024

/**
 * UART Generated Driver Interface Header File
 * 
 * @file uart_drv_interface.h
 * 
 * @defgroup uart_drv_interface UART_DRV_INTERFACE
 * 
 * @brief This file contains APIs for UART module.
 *
 * @version UART Driver Version 3.0.0
*/

#ifndef UART_DRV_INTERFACE_H
#define	UART_DRV_INTERFACE_H

/**
  Section: Included Files
*/
#include <stdbool.h>
#include <stdint.h>
#include "uart_types.h"

#ifdef	__cplusplus
extern "C" {
#endif

   
/**
  Section: Data Type Definitions
*/ 
      
/**
 @ingroup UART
 @struct uart_drv_interface_t
 @brief Structure containing the function pointers of UART driver.
*/
typedef struct {
void (*Initialize)(void);   
void (*Deinitialize)(void);
uint8_t (*Read)(void);
void (*Write)(uint8_t);
bool (*IsRxReady)(void);
bool (*IsTxReady)(void);
bool (*IsTxDone)(void);
void (*TransmitEnable)(void);
void (*TransmitDisable)(void);
void (*AutoBaudSet)(bool enable);
bool (*AutoBaudQuery)(void);
bool (*AutoBaudEventEnableGet)(void);
void (*BRGCountSet)(uint32_t brgValue);
uint32_t (*BRGCountGet)(void);
void (*BaudRateSet)(uint32_t baudRate);
uint32_t (*BaudRateGet)(void);
size_t (*ErrorGet)(void);
void (*TxCompleteCallbackRegister)(void (*CallbackHandler) (void));
void (*RxCompleteCallbackRegister)(void (*CallbackHandler) (void));
void (*TxCollisionCallbackRegister)(void (*CallbackHandler) (void));
void (*FramingErrorCallbackRegister)(void (*CallbackHandler) (void));
void (*OverrunErrorCallbackRegister)(void (*CallbackHandler) (void));
void (*ParityErrorCallbackRegister)(void (*CallbackHandler) (void));
void (*EventCallbackRegister)(void (*CallbackHandler) (void));
}uart_drv_interface_t;


#ifdef	__cplusplus
}
#endif

#endif	/* UART_DRV_INTERFACE_H */

