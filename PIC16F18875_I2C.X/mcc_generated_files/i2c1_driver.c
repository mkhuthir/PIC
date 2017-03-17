/*
    (c) 2016 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/


#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "mcc.h"
#include "i2c1_driver.h"

#pragma warning disable 520        

inline void i2c1_driver_close(void)
{
    SSP1CON1bits.SSPEN = 0;
}

/* Interrupt Control */
inline void mssp1_enableIRQ(void)
{
    PIE3bits.SSP1IE = 1;
}

inline bit mssp1_IRQisEnabled(void)
{
    return PIE3bits.SSP1IE;
}

inline void mssp1_disableIRQ(void)
{
    PIE3bits.SSP1IE = 0;
}

inline void mssp1_clearIRQ(void)
{
    PIR3bits.SSP1IF = 0;
}

inline void mssp1_setIRQ(void)
{
    PIR3bits.SSP1IF = 1;
}

inline void mssp1_waitForEvent(uint16_t *timeout)
{
    //uint16_t to = (timeout!=NULL)?*timeout:100;
    //to <<= 8;

    if(PIR3bits.SSP1IF == 0)
    {
        while(1)// to--)
        {
            if(PIR3bits.SSP1IF) break;
            __delay_us(100);
        }
    }
}

bit i2c1_driver_driver_open(void)
{
    if(!SSP1CON1bits.SSPEN)
    {
        SSP1STAT = 0x00;
        SSP1CON1 = 0x28;
        SSP1CON2 = 0x00;
        SSP1CON3 = 0x00;
        SSP1ADD = 0x3;
        return true;
    }
    else
        return false;
}

bit i2c1_driver_initSlaveHardware(void)
{
    if(!SSP1CON1bits.SSPEN)
    {
/* NOTE on AHEN:
 * If multiple slaves are to be emulated, then AHEN must be set.  It must be set
 * because the driver needs to selectively ACK/NACK the address depending on its
 * ability to handle the address.
*/

/* NOTE on DHEN:
 * DHEN must be set so that the data is not automatically NACK'ed if it is not read
 * from the SSPBUF.  This driver will ALWAYS read the SSPBUF so that it can pass
 * the value to the appropriate slave handler.  Because the data is ALWAYS read
 * the data will always be ACK'd if DHEN is cleared.  If the slave does not want
 * the data byte from the master then it will return false and a NACK will be returned.
 */

/* NOTE on SEN:
 * SEN will be set enabling clock stretching.  This is because we don't know how
 * long the user will take to process data bytes in their callbacks.  If they are fast,
 * we may not need to stretch the clock.  If they are slow, we need to stretch the clock.
 * If we ALWAYS stretch the clock, we will release the clock when the ISR is complete.
 */

/* NOTE on PCIE:
 * PCIE will be set to enable interrupts on STOP.  This will allow us know when
 * the master is finished
 */
        
/* NOTE on SCIE:
 * SCIE will be set to enable interrupts on START.  This will allow us to detect
 * both a START and a RESTART event and prepare to restart communications.
 */
        SSP1CON3bits.AHEN = 1;
        SSP1CON3bits.DHEN = 1;
        SSP1CON2bits.SEN = 1;
        
        SSP1CON1bits.SSPEN = 1;
        return true;
    }
    return false;
}

inline void i2c1_driver_resetBus(void)
{
    
}

inline void i2c1_driver_start(void)
{
    SSP1CON2bits.SEN = 1;
}

inline void i2c1_driver_restart(void)
{
    SSP1CON2bits.RSEN = 1;
}

inline void i2c1_driver_stop(void)
{
    SSP1CON2bits.PEN = 1;
}

inline bit i2c1_driver_isNACK(void)
{
    return SSP1CON2bits.ACKSTAT = 1;
}

inline void i2c1_driver_startRX(void)
{
    SSP1CON2bits.RCEN = 1;
}

inline char i2c1_driver_getRXData(void)
{
    return SSP1BUF;
}

inline void i2c1_driver_TXData(char d)
{
    SSP1BUF = d;
}

inline void i2c1_driver_sendACK(void)
{
    SSP1CON2bits.ACKDT = 0;
    SSP1CON2bits.ACKEN = 1; // start the ACK/NACK
}

inline void i2c1_driver_sendNACK(void)
{
    SSP1CON2bits.ACKDT = 1;
    SSP1CON2bits.ACKEN = 1; // start the ACK/NACK
}

inline void i2c1_driver_releaseClock(void)
{
    SSP1CON1bits.CKP = 1;
}

inline bit i2c1_driver_isBuferFull(void)
{
    return SSP1STATbits.BF;
}

inline bit i2c1_driver_isStart(void)
{
    return SSP1STATbits.S;
}

inline bit i2c1_driver_isAddress(void)
{
    return !SSP1STATbits.D_nA;
}

inline bit i2c1_driver_isStop(void)
{
    return SSP1STATbits.P;
}

inline bit i2c1_driver_isData(void)
{
    return SSP1STATbits.D_nA;
}

inline bit i2c1_driver_isRead(void)
{
    return SSP1STATbits.R_nW;
}

inline void i2c1_driver_clearBusCollision(void)
{
    PIR3bits.BCL1IF = 0; // clear the bus collision.
}

inline void i2c1_driver_enableStartIRQ(void)
{
    SSP1CON3bits.SCIE = 1;
}

inline void i2c1_driver_disableStartIRQ(void)
{
    SSP1CON3bits.SCIE = 0;
}

inline void i2c1_driver_enableStopIRQ(void)
{
    SSP1CON3bits.PCIE = 1;
}

inline void i2c1_driver_disableStopIRQ(void)
{
    SSP1CON3bits.PCIE = 0;
}

inline void i2c1_driver_setBusCollisionISR(void *f){
    i2c1_driver_busCollisionISR = f;
}

inline void i2c1_driver_setI2cISR(void *f){
    i2c1_driver_i2cISR = f;
}
