/* Microchip Technology Inc. and its subsidiaries.  You may use this software 
 * and any derivatives exclusively with Microchip products. 
 * 
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS".  NO WARRANTIES, WHETHER 
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED 
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A 
 * PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION 
 * WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION. 
 *
 * IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
 * INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
 * WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS 
 * BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE.  TO THE 
 * FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS 
 * IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF 
 * ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE 
 * TERMS. 
 */
#ifndef NOTES_H
#define	NOTES_H

/*
 * Set our Note Lengths, these are in relation to the fastest note we want to
 * play. In our case, this is in relation to 16th notes
 */
#define L_W    16
#define L_H_d  12
#define L_H     8
#define L_Q_D   6
#define L_Q     4
#define L_E_D   3
#define L_E     2
#define L_S     1


/*
 * Set our Note Pitches, 0 = rest, the rest are in Hz
 */

#define T_REST 0

#define T_B0  31
#define T_C1  33
#define T_CS1 35
#define T_D1  37
#define T_DS1 39
#define T_E1  41
#define T_F1  44
#define T_FS1 46
#define T_G1  49
#define T_GS1 52
#define T_A1  55
#define T_AS1 58
#define T_B1  62
#define T_C2  65
#define T_CS2 69
#define T_D2  73
#define T_DS2 78
#define T_E2  82
#define T_F2  87
#define T_FS2 93
#define T_G2  98
#define T_GS2 104
#define T_A2  110
#define T_AS2 117
#define T_B2  123
#define T_C3  131
#define T_CS3 139
#define T_D3  147
#define T_DS3 156
#define T_E3  165
#define T_F3  175
#define T_FS3 185
#define T_G3  196
#define T_GS3 208
#define T_A3  220
#define T_AS3 233
#define T_B3  247
#define T_C4  262
#define T_CS4 277
#define T_D4  294
#define T_DS4 311
#define T_E4  330
#define T_F4  349
#define T_FS4 370
#define T_G4  392
#define T_GS4 415
#define T_A4  440
#define T_AS4 466
#define T_B4  494
#define T_C5  523
#define T_CS5 554
#define T_D5  587
#define T_DS5 622
#define T_E5  659
#define T_F5  698
#define T_FS5 740
#define T_G5  784
#define T_GS5 831
#define T_A5  880
#define T_AS5 932
#define T_B5  988
#define T_C6  1047
#define T_CS6 1109
#define T_D6  1175
#define T_DS6 1245
#define T_E6  1319
#define T_F6  1397
#define T_FS6 1480
#define T_G6  1568
#define T_GS6 1661
#define T_A6  1760
#define T_AS6 1865
#define T_B6  1976
#define T_C7  2093
#define T_CS7 2217
#define T_D7  2349
#define T_DS7 2489
#define T_E7  2637
#define T_F7  2794
#define T_FS7 2960
#define T_G7  3136
#define T_GS7 3322
#define T_A7  3520
#define T_AS7 3729
#define T_B7  3951
#define T_C8  4186
#define T_CS8 4435
#define T_D8  4699
#define T_DS8 4978

#endif	/* NOTES_H */

