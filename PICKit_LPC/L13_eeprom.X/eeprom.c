/**
 *******************************************************************
 * Lesson 13 - "EEPROM"
 *
 * This lesson will provide code for writing and reading a single byte onto
 * the on-board EEPROM. EEPROM is non-volatile memory, meaning that it does
 * not lose its value when power is shut off. This is unlike RAM, which will
 * lose its value when no power is applied. The EEPROM is useful for storing
 * variables that must still be present during no power.
 * It is also convenient to use if the entire RAM space is used up.
 * Writes and reads to the EEPROM are practically instant and are much faster
 * than program memory operations.

 * Press the switch to save the LED state and then disconnect the power. When
 * power is then applied again, the program will start with that same LED lit.

 * When the lesson is first programmed, no LEDs will light up even with movement
 * of the POT. When the switch is pressed, the corresponding LED will be lit and
 * then the PIC will go to sleep until the switch is pressed again. Each press of
 * the switch saves the ADC value into EEPROM. The PIC uses interrupts to wake up
 * from sleep, take an ADC reading, save to EEPROM, and then goes back to sleep.
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

#define DOWN                0
#define UP                  1

#define SWITCH              PORTAbits.RA2


//config bits that are part-specific for the PIC16F1829
__CONFIG(FOSC_INTOSC & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_ON & CLKOUTEN_OFF & IESO_OFF & FCMEN_OFF);
__CONFIG(WRT_OFF & PLLEN_OFF & STVREN_OFF & LVP_OFF);

    /* -------------------LATC-----------------
     * Bit#:  -7---6---5---4---3---2---1---0---
     * LED:   ---------------|DS4|DS3|DS2|DS1|-
     *-----------------------------------------
     */

unsigned char adc(void);                            //prototype

void main(void) {
    OSCCON = 0b00111000;                            //500KHz clock speed
    TRISC = 0;                                      //all LED pins are outputs
    LATC = 0;                                       //init all LEDs OFF
    
                                                    //setup switch (SW1)
    TRISAbits.TRISA2 = 1;                           //switch as input
    ANSELAbits.ANSA2 = 0;                           //digital switch

                                                    //setup ADC
    TRISAbits.TRISA4 = 1;                           //Potentiamtor is connected to RA4...set as input
    ANSELAbits.ANSA4 = 1;                           //analog
    ADCON0 = 0b00001101;                            //select RA4 as source of ADC and enable the module (AN3)
    ADCON1 = 0b00010000;                            //left justified - FOSC/8 speed - Vref is Vdd

                                                    //setup interrupt on change for the switch
    INTCONbits.IOCIE = 1;                           //enable interrupt on change global
    IOCANbits.IOCAN2 = 1;                           //when SW1 is pressed/released, enter the ISR

    INTCONbits.GIE = 1;                             //enable global interupts

    while (1) {
       LATC = eeprom_read(0x00);                    //load whatever is in EEPROM to the LATCH
       SLEEP();                                     //sleep until button is pressed

    }

}

unsigned char adc(void) {
    __delay_us(5);                                  //wait for ADC charging cap to settle
    GO = 1;
    while (GO) continue;                            //wait for conversion to be finished

    return ADRESH;                                  //grab the top 8 MSbs

}

void interrupt ISR(void) {
    unsigned char adc_value = 0;

    if (IOCAF) {                                    //SW1 was just pressed
        IOCAF = 0;                                  //must clear the flag in software
        __delay_ms(5);                              //debounce by waiting and seeing if still held down
        if (SWITCH == DOWN) {
            adc_value = adc();                      //get the ADC value from the POT
            adc_value >>= 4;                        //save only the top 4 MSbs

            LATC = adc_value;
                                                    //EEPROM is non-volatile, meaning that it can retain its value when no power is applied
            eeprom_write(0x00, adc_value);          //save the value to EEPROM and go back to sleep
        }
    }
}