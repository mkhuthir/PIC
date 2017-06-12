/****************************************************************************
;*	Microchip Technology Inc. 2007                                      *
;*	Assembler version:  XC8 v1.34                                       *
;*	Filename:                                                           *
;*		pwm.h                                                       *
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

#ifndef _PWM_H
#define _PWM_H

/**
  Section: Included Files
*/

#include <xc.h>
#include <stdint.h>

/**
  Section: PWM Module APIs
*/

/**
  @Summary
    Initializes the PWM

  @Description
    This routine initializes the PWM_Initialize
  @Preconditions
    None

  @Param
    None

  @Returns
    None

  @Comment


 @Example
    <code>
    uint16_t dutycycle;

    PWM_Initialize();
	PWM_LoadDutyValue(dutycycle);
    </code>
 */
void PWM_Initialize(void);

/**
  @Summary
    Loads 16-bit duty cycle.

  @Description
    This routine loads the 16 bit duty cycle value.

  @Preconditions
    PWM_Initialize() function should have been called
	before calling this function.

  @Param
    Pass 16bit duty cycle value.

  @Returns
    None

  @Example
    <code>
    uint16_t dutycycle;

    PWM_Initialize();
    PWM_LoadDutyValue(dutycycle);
    </code>
*/

void PWM_LoadDutyValue(uint16_t dutyValue);

#endif
/**
 End of File
*/
