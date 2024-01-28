// Muthanna Alwahash
// Jan 2024

/**
 * EUSART Generated Driver API Header File
 * 
 * @file eusart.h
 * 
 * @defgroup eusart EUSART
 * 
 * @brief This file contains API prototypes and other datatypes for EUSART module.
 *
 * @version EUSART Driver Version 3.0.0
*/

#ifndef EUSART_H
#define EUSART_H

/**
  Section: Included Files
 */

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include "../system/system.h"
#include "uart_drv_interface.h"

#ifdef __cplusplus  // Provide C++ Compatibility

    extern "C" {

#endif


#define UART1_interface UART1


#define UART1_Initialize     EUSART_Initialize
#define UART1_Deinitialize   EUSART_Deinitialize
#define UART1_Write          EUSART_Write
#define UART1_Read           EUSART_Read
#define UART1__IsRxReady     EUSART_IsRxReady
#define UART1_IsTxReady      EUSART_IsTxReady
#define UART1_IsTxDone       EUSART_IsTxDone

#define UART1_TransmitEnable       EUSART_TransmitEnable
#define UART1_TransmitDisable      EUSART_TransmitDisable
#define UART1_AutoBaudSet          EUSART_AutoBaudSet
#define UART1_AutoBaudQuery        EUSART_AutoBaudQuery
#define UART1_BRGCountSet                (NULL)
#define UART1_BRGCountGet                (NULL)
#define UART1_BaudRateSet                (NULL)
#define UART1_BaudRateGet                (NULL)
#define UART1__AutoBaudEventEnableGet    (NULL)
#define UART1_ErrorGet             EUSART_ErrorGet

#define UART1_TxCompleteCallbackRegister     (NULL)
#define UART1_RxCompleteCallbackRegister      (NULL)
#define UART1_TxCollisionCallbackRegister  (NULL)
#define UART1_FramingErrorCallbackRegister EUSART_FramingErrorCallbackRegister
#define UART1_OverrunErrorCallbackRegister EUSART_OverrunErrorCallbackRegister
#define UART1_ParityErrorCallbackRegister  (NULL)
#define UART1_EventCallbackRegister        (NULL)


/**
 @ingroup eusart
 @struct eusart_status_t
 @breif This is a structre defined for errors in reception of data.
 */
typedef union {
    struct {
        uint8_t perr : 1;     /**<This is a bit field for Parity Error status*/
        uint8_t ferr : 1;     /**<This is a bit field for Framing Error status*/
        uint8_t oerr : 1;     /**<This is a bit field for Overfrun Error status*/
        uint8_t reserved : 5; /**<Reserved*/
    };
    size_t status;            /**<Group byte for status errors*/
}eusart_status_t;



/**
 Section: Data Type Definitions
 */

/**
 * @ingroup eusart
 * @brief External object for eusart_interface.
 */
extern const uart_drv_interface_t UART1;

/**
 * @ingroup eusart
 * @brief This API initializes the EUSART driver.
 *        This routine initializes the EUSART module.
 *        This routine must be called before any other EUSART routine is called.
 *        This routine should only be called once during system initialization.
 * @param None.
 * @return None.
 */
void EUSART_Initialize(void);

/**
 * @ingroup eusart
 * @brief This API Deinitializes the EUSART driver.
 *        This routine disables the EUSART module.
 * @param None.
 * @return None.
 */
void EUSART_Deinitialize(void);

/**
 * @ingroup eusart
 * @brief This API enables the EUSART module.     
 * @param None.
 * @return None.
 */
inline void EUSART_Enable(void);

/**
 * @ingroup eusart
 * @brief This API disables the EUSART module.
 * @param None.
 * @return None.
 */
inline void EUSART_Disable(void);

/**
 * @ingroup eusart
 * @brief This API enables the EUSART transmitter.
 *        EUSART should also be enable to send bytes over TX pin.
 * @param None.
 * @return None.
 */
inline void EUSART_TransmitEnable(void);

/**
 * @ingroup eusart
 * @brief This API disables the EUSART transmitter.
 * @param None.
 * @return None.
 */
inline void EUSART_TransmitDisable(void);

/**
 * @ingroup eusart
 * @brief This API enables the EUSART Receiver.
 *        EUSART should also be enable to receive bytes over RX pin.
 * @param None.
 * @return None.
 */
inline void EUSART_ReceiveEnable(void);

/**
 * @ingroup eusart
 * @brief This API disables the EUSART Receiver.
 * @param None.
 * @return None.
 */
inline void EUSART_ReceiveDisable(void);


/**
 * @ingroup eusart
 * @brief This API enables the EUSART send break control.
 * @param None.
 * @return None.
 */
inline void EUSART_SendBreakControlEnable(void);

/**
 * @ingroup eusart
 * @brief This API disables the EUSART send break control.
 * @param None.
 * @return None.
 */
inline void EUSART_SendBreakControlDisable(void);

/**
 * @ingroup eusart
 * @brief This API enables the EUSART AutoBaud Detection.
 * @param bool enable.
 * @return None.
 */
inline void EUSART_AutoBaudSet(bool enable);

/**
 * @ingroup eusart
 * @brief This API reads the EUSART AutoBaud Detection Complete bit.
 * @param None.
 * @return bool.
 */
inline bool EUSART_AutoBaudQuery(void);

/**
 * @ingroup eusart
 * @brief This API reads the EUSART AutoBaud Detection overflow bit.
 * @param None.
 * @return None.
 */
inline bool EUSART_IsAutoBaudDetectOverflow(void);

/**
 * @ingroup eusart
 * @brief This API Reset the EUSART AutoBaud Detection Overflow bit.
 * @param None.
 * @return None.
 */
inline void EUSART_AutoBaudDetectOverflowReset(void);

/**
 * @ingroup eusart
 * @brief This API checks if EUSART receiver has received data and ready to be read.
 * @param None.
 * @retval true if EUSART receiver FIFO has a data
 * @retval false EUSART receiver FIFO is empty
 */
bool EUSART_IsRxReady(void);

/**
 * @ingroup eusart
 * @brief This function checks if EUSART transmitter is ready to accept a data byte.
 * @param None.
 * @retval true if EUSART transmitter FIFO has atleast 1 byte space
 * @retval false if EUSART transmitter FIFO is full
 */
bool EUSART_IsTxReady(void);

/**
 * @ingroup eusart
 * @brief This function return the status of transmit shift register (TSR).
 * @param None.
 * @retval true if Data completely shifted out from the TSR
 * @retval false if Data is present in Transmit FIFO and/or in TSR
 */
bool EUSART_IsTxDone(void);

/**
 * @ingroup eusart
 * @brief This function gets the error status of the last read byte.
 * @param None.
 * @return Status of the last read byte. See eusart_status_t struct for more details.
 */
size_t EUSART_ErrorGet(void);

/**
 * @ingroup eusart
 * @brief This function reads the 8 bits from receiver FIFO register.
 * @pre The transfer status should be checked to see if the receiver is not empty
 *      before calling this function. EUSART_IsRxReady() should be checked in if () before calling this API.
 * @param None.
 * @return 8-bit data from RX FIFO register.
 */
uint8_t EUSART_Read(void);

/**
 * @ingroup eusart
 * @brief This function writes a byte of data to the transmitter FIFO register.
 * @pre The transfer status should be checked to see if the transmitter is ready to accept a byte
 *      before calling this function. EUSART_IsTxReady() should be checked in if() before calling this API.
 * @param txData  - Data byte to write to the TX FIFO.
 * @return None.
 */
void EUSART_Write(uint8_t txData);

/**
 * @ingroup eusart
 * @brief This API registers the function to be called upon framing error.
 * @param callbackHandler - a function pointer which will be called upon framing error condition.
 * @return None.
 */
void EUSART_FramingErrorCallbackRegister(void (* callbackHandler)(void));

/**
 * @ingroup eusart
 * @brief This API registers the function to be called upon overrun error.
 * @param callbackHandler - a function pointer which will be called upon overrun error condition.
 * @return None.
 */
void EUSART_OverrunErrorCallbackRegister(void (* callbackHandler)(void));

#ifdef __cplusplus  // Provide C++ Compatibility

    }

#endif

#endif  // EUSART_H
