// Muthanna Alwahash
// Jan 2024


/**
 * EUSART Generated Driver API Header File
 * 
 * @file eusart.c
 * 
 * @ingroup eusart
 * 
 * @brief This is the generated driver implementation file for the EUSART driver using CCL
 *
 * @version EUSART Driver Version 3.0.0
*/

/**
  Section: Included Files
*/
#include "../eusart.h"

/**
  Section: Macro Declarations
*/

/**
  Section: Driver Interface
 */

const uart_drv_interface_t UART1 = {
    .Initialize = &EUSART_Initialize,
    .Deinitialize = &EUSART_Deinitialize,
    .Read = &EUSART_Read,
    .Write = &EUSART_Write,
    .IsRxReady = &EUSART_IsRxReady,
    .IsTxReady = &EUSART_IsTxReady,
    .IsTxDone = &EUSART_IsTxDone,
    .TransmitEnable = &EUSART_TransmitEnable,
    .TransmitDisable = &EUSART_TransmitDisable,
    .AutoBaudSet = &EUSART_AutoBaudSet,
    .AutoBaudQuery = &EUSART_AutoBaudQuery,
    .BRGCountSet = NULL,
    .BRGCountGet = NULL,
    .BaudRateSet = NULL,
    .BaudRateGet = NULL,
    .AutoBaudEventEnableGet = NULL,
    .ErrorGet = &EUSART_ErrorGet,
    .TxCompleteCallbackRegister = NULL,
    .RxCompleteCallbackRegister = NULL,
    .TxCollisionCallbackRegister = NULL,
    .FramingErrorCallbackRegister = &EUSART_FramingErrorCallbackRegister,
    .OverrunErrorCallbackRegister = &EUSART_OverrunErrorCallbackRegister,
    .ParityErrorCallbackRegister = NULL,
    .EventCallbackRegister = NULL,
};

/**
  Section: EUSART variables
*/
volatile eusart_status_t eusartRxLastError;

/**
  Section: EUSART APIs
*/

void (*EUSART_FramingErrorHandler)(void);
void (*EUSART_OverrunErrorHandler)(void);

static void EUSART_DefaultFramingErrorCallback(void);
static void EUSART_DefaultOverrunErrorCallback(void);


/**
  Section: EUSART  APIs
*/

void EUSART_Initialize(void)
{
    // Set the EUSART module to the options selected in the user interface.

    //ABDEN disabled; WUE disabled; BRG16 16bit_generator; SCKP Non-Inverted; 
    BAUD1CON = 0x48; 
    //ADDEN disabled; CREN enabled; SREN disabled; RX9 8-bit; SPEN enabled; 
    RC1STA = 0x90; 
    //TX9D 0x0; BRGH hi_speed; SENDB sync_break_complete; SYNC asynchronous; TXEN enabled; TX9 8-bit; CSRC client; 
    TX1STA = 0x26; 
    //SPBRGL 64; 
    SP1BRGL = 0x40; 
    //SPBRGH 3; 
    SP1BRGH = 0x3; 

    EUSART_FramingErrorCallbackRegister(EUSART_DefaultFramingErrorCallback);
    EUSART_OverrunErrorCallbackRegister(EUSART_DefaultOverrunErrorCallback);
    eusartRxLastError.status = 0;  

}

void EUSART_Deinitialize(void)
{
    BAUD1CON = 0x00;
    RC1STA = 0x00;
    TX1STA = 0x00;
    SP1BRGL = 0x00;
    SP1BRGH = 0x00;
}

inline void EUSART_Enable(void)
{
    RC1STAbits.SPEN = 1;

}

inline void EUSART_Disable(void)
{
    RC1STAbits.SPEN = 0;
}


inline void EUSART_TransmitEnable(void)
{
    TX1STAbits.TXEN = 1;
}

inline void EUSART_TransmitDisable(void)
{
    TX1STAbits.TXEN = 0;
}

inline void EUSART_ReceiveEnable(void)
{
    RC1STAbits.CREN = 1;
}

inline void EUSART_ReceiveDisable(void)
{
    RC1STAbits.CREN = 0;
}

inline void EUSART_SendBreakControlEnable(void)
{
    TX1STAbits.SENDB = 1;
}

inline void EUSART_SendBreakControlDisable(void)
{
    TX1STAbits.SENDB = 0;
}

inline void EUSART_AutoBaudSet(bool enable)
{
    if(enable)
    {
        BAUD1CONbits.ABDEN = 1;
    }
    else
    {
       BAUD1CONbits.ABDEN = 0; 
    }
}

inline bool EUSART_AutoBaudQuery(void)
{
return (bool)(!BAUD1CONbits.ABDEN);
}

inline bool EUSART_IsAutoBaudDetectOverflow(void)
{
    return (bool)BAUD1CONbits.ABDOVF; 
}

inline void EUSART_AutoBaudDetectOverflowReset(void)
{
    BAUD1CONbits.ABDOVF = 0; 
}

bool EUSART_IsRxReady(void)
{
    return (bool)(PIR3bits.RCIF);
}

bool EUSART_IsTxReady(void)
{
    return (bool)(PIR3bits.TXIF && TX1STAbits.TXEN);
}

bool EUSART_IsTxDone(void)
{
    return TX1STAbits.TRMT;
}

size_t EUSART_ErrorGet(void)
{
    return eusartRxLastError.status;
}

uint8_t EUSART_Read(void)
{
    eusartRxLastError.status = 0;
    if(RC1STAbits.OERR)
    {
        eusartRxLastError.oerr = 1;
        if(NULL != EUSART_OverrunErrorHandler)
        {
            EUSART_OverrunErrorHandler();
        }   
    }
    if(RC1STAbits.FERR)
    {
        eusartRxLastError.ferr = 1;
        if(NULL != EUSART_FramingErrorHandler)
        {
            EUSART_FramingErrorHandler();
        }   
    }
    return RC1REG;
}

void EUSART_Write(uint8_t txData)
{
    TX1REG = txData;
}

int getch(void)
{
    while(!(EUSART_IsRxReady()));
    return EUSART_Read();
}

void putch(char txData)
{
    while(!(EUSART_IsTxReady()));
    return EUSART_Write(txData);   
}

static void EUSART_DefaultFramingErrorCallback(void)
{
    
}

static void EUSART_DefaultOverrunErrorCallback(void)
{
    //Continuous Receive must be cleared to clear Overrun Error else Rx will not receive upcoming bytes
    RC1STAbits.CREN = 0;
    RC1STAbits.CREN = 1;
}

void EUSART_FramingErrorCallbackRegister(void (* callbackHandler)(void))
{
    if(NULL != callbackHandler)
    {
        EUSART_FramingErrorHandler = callbackHandler;
    }
}

void EUSART_OverrunErrorCallbackRegister(void (* callbackHandler)(void))
{
    if(NULL != callbackHandler)
    {
        EUSART_OverrunErrorHandler = callbackHandler;
    }    
}

