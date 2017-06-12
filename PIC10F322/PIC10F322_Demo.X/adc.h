/****************************************************************************
;*	Microchip Technology Inc. 2007                                      *
;*	Assembler version:  XC8 v1.34                                       *
;*	Filename:                                                           *
;*		adc.h                                                       *
;*	Dependents:                                                         *
;*                                                                          *
;*	April 13, 2015                                                      *
;*      PIC10(L)32X Developmental Board                                     *
;*      Demonstration program:                                              *
;*          After applying power to the PIC10(L)F32X Development Board,     *
;*          LED (D1) will automatically turn on.  Turn POT1 clockwise       *
;*          to increase the brightness of LED (D2).  Press switch (SW1)     *
;*          to turn both LEDs D1 and D2 off, release switch (SW1) and       *
;*          LEDs D1 and D2 will turn on.                                    *
;*                                                                          *
;****************************************************************************/

#ifndef _ADC_H
#define _ADC_H


// Section: Included Files
#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

// Section: Data Types Definitions
// result size of an A/D conversion

typedef uint8_t adc_result_t;

/** ADC Channel Definition

 @Summary
   Defines the channels available for conversion.

 @Description
   This routine defines the channels that are available for the module to use.

 Remarks:
   None
 */

typedef enum
{
    channel_FVR  =  0b111,
    channel_TEMP =  0b110,
    channel_AN2  =  0b010,
    channel_AN1  =  0b001,
    channel_AN0  =  0b000
} adc_channel_t;


// Section: ADC Module APIs

/*
  @Summary
    Initializes the ADC

  @Description
    This routine initializes the Initializes the ADC.
    This routine must be called before any other ADC routine is called.
    This routine should only be called once during system initialization.
*/

void ADC_Initialize(void);

/*
  @Summary
    Returns the ADC conversion value
    also allows selection of a channel for conversion.

  @Description
    This routine is used to select desired channel for conversion
    and to get the analog to digital converted value.

  @Preconditions
    ADC_Initialize() function should have been called before calling this function.

  @Returns
    Returns the converted value.

  @Param
    Pass in required channel number.

    ADC_Initialize();
*/

adc_result_t ADC_GetConversion(adc_channel_t channel);

#endif	//_ADC_H

// End of File
