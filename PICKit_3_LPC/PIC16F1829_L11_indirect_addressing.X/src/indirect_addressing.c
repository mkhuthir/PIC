/**
 *******************************************************************
 * Lesson 11 - "Indirect addressing"
 *
 * This lesson covers a very important topic of indirect addressing. The code uses indirect
 * addressing to implement a moving average filter. This lesson adds a moving average
 * filter to the Analog-to-Digital code in Lesson 4. The moving average keeps a list of the
 * last ADC values (n) and averages them together. The filter needs two parts: A circular
 * queue and a function to calculate the average.
 *
 * Twisting the potentiometer changes the value read by the Analog-to-Digital converter.
 * The filtered value is then sent to the LED display.
 *
 * This lesson provides the same outcome as Lesson 4. The user rotates the POT to see
 * the LEDs rotate. The top four MSbs of the ADC value are reflected onto the LEDs.
 *
 *
 * PIC: 16F1829
 * Compiler: XC8 v1.00
 * IDE: MPLABX v1.10
 *
 * Board: PICkit 3 Low Pin Count Demo Board
 * Date: 6.1.2012
 *
 * *******************************************************************
 * See Low Pin Count Demo Board User's Guide for Lesson Information*
 * ******************************************************************
 */

#include <htc.h>                                     //PIC hardware mapping
#define _XTAL_FREQ 500000                            //Used by the XC8 delay_ms(x) macro

#define NUM_READINGS 8                              //number to divide the total


//config bits that are part-specific for the PIC16F1829
__CONFIG(FOSC_INTOSC & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_ON & CLKOUTEN_OFF & IESO_OFF & FCMEN_OFF);
__CONFIG(WRT_OFF & PLLEN_OFF & STVREN_OFF & LVP_OFF);

    /* -------------------LATC-----------------
     * Bit#:  -7---6---5---4---3---2---1---0---
     * LED:   ---------------|DS4|DS3|DS2|DS1|-
     *-----------------------------------------
     */
                                                //prototypes
unsigned char average(unsigned char *ptr);
unsigned char adc(void);

                                                //global variable
unsigned int _sum = 0;                          //keeps the average value of the ADC result

void main(void) {
    unsigned char *ptr_queue;                   //declare a pointer
    unsigned char queue[8] = {0};               //keeps the last 8 ADC readings
    unsigned char i;                            //loop

    OSCCON = 0b00111000;                        //500KHz clock speed
    TRISC = 0;                                  //all LED pins are outputs
                                                //setup ADC
    TRISAbits.TRISA4 = 1;                       //Potentiamtor is connected to RA4...set as input
    ANSELAbits.ANSA4 = 1;                       //analog
    ADCON0 = 0b00001101;                        //select RA4 as source of ADC and enable the module (AN3)
    ADCON1 = 0b00010000;                        //left justified - FOSC/8 speed - Vref is Vdd

    while (1) {                                 //do this forever
        ptr_queue = &queue;                     //point to the first byte in this array (RESET the pointer)
        for (i = NUM_READINGS; i != 0; i--){
            LATC = (average(ptr_queue) >> 4 );  //only want the 4 MSbs for 4 LEDs
            ptr_queue++;
        }
    }
}

unsigned char average(unsigned char *ptr) {

    _sum -= *ptr;                               //subtract the current value out of the sum
    *ptr = adc();                               //get the ADC value
    _sum += *ptr;                               //assign ADC value to the sum
    return (_sum/NUM_READINGS);                 //compute the average

}

unsigned char adc(void) {
    __delay_us(5);                              //wait for ADC charging cap to settle
    GO = 1;
    while (GO) continue;                        //wait for conversion to be finished

    return ADRESH;                              //grab the top 8 MSbs

}