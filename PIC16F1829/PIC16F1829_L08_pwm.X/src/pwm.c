/**
 *******************************************************************
 * Lesson 8 - "PWM"
 *
 * Pulse-Width Modulation (PWM) is a scheme that provides power to a load by switching
 * quickly between fully on and fully off states. The PWM signal resembles a square wave
 * where the high portion of the signal is considered the on state and the low portion of
 * the signal is considered the off state. The high portion, also known as the pulse width,
 * can vary in time and is defined in steps. A longer, high on time will illuminate the LED
 * brighter. The frequency or period of the PWM does not change. A larger number of
 * steps applied, which lengthens the pulse width, also supplies more power to the load.
 * Lowering the number of steps applied, which shortens the pulse width, supplies less
 * power. The PWM period is defined as the duration of one complete cycle or the total
 * amount of on and off time combined.
 *
 * Rotating the POT will adjust the brightness of a single LED, DS4
 *
 *  PIC: 16F1829
 *  Compiler: XC8 v1.00
 *  IDE: MPLABX v1.10
 *
 *  Board: PICkit 3 Low Pin Count Demo Board
 *  Date: 6.1.2012
 *
 * *******************************************************************
 * See Low Pin Count Demo Board User's Guide for Lesson Information*
 * ******************************************************************
 */

#include <htc.h>                                     //PIC hardware mapping
#define _XTAL_FREQ 500000                            //Used by the XC8 delay_ms(x) macro

//config bits that are part-specific for the PIC16F1829
__CONFIG(FOSC_INTOSC & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_ON & CLKOUTEN_OFF & IESO_OFF & FCMEN_OFF);
__CONFIG(WRT_OFF & PLLEN_OFF & STVREN_OFF & LVP_OFF);

    /* -------------------LATC-----------------
     * Bit#:  -7---6---5---4---3---2---1---0---
     * LED:   ---------------|DS4|DS3|DS2|DS1|-
     *-----------------------------------------
     */

void main(void) {
    OSCCON = 0b00111000;                            //500KHz clock speed
    TRISC = 0;                                      //all LED pins are outputs
    LATC = 0;

                                                    //setup ADC
    TRISAbits.TRISA4 = 1;                           //Potentiamtor is connected to RA4...set as input
    ANSELAbits.ANSA4 = 1;                           //analog
    ADCON0 = 0b00001101;                            //select RA4 as source of ADC and enable the module (AN3)
    ADCON1 = 0b00010000;                            //left justified - FOSC/8 speed - Vref is Vdd

                                                    //setup the PWM
    CCP2CON = 0b00001100;                           //PWM mode single output
    PR2 = 255;                                      //Frequency at 486Hz. Anything over ~60Hz will get rid of any flicker
                                                    //PWM Period = [PR2 + 1]*4*Tosc*T2CKPS = [255 + 1] * 4 * (1 / 500KHz) * 1
    CCPTMRSbits.C2TSEL = 0b00;                      //select timer2 as PWM source
    T2CONbits.T2CKPS = 0b00;                        //1:1 prescaler
    T2CONbits.TMR2ON = 1;                           //start the PWM

    while (1) {
        __delay_us(5);                              //wait for ADC charging cap to settle
        GO = 1;                                     //start the ADC conversion
        while (GO) continue;                        //wait for conversion to be finished
        CCPR2L = ADRESH;                            //put the top 8 MSbs into CCPR2L
        CCP2CONbits.DC2B = (ADRESL>>6);             //put the 2 LSbs into DC2B register to complete the 10bit resolution
    }
}
