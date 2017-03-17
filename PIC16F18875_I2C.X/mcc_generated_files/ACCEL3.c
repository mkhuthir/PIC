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

#include "ACCEL3.h"

#include "drivers/i2c_simple_master.h"
//  Read/Write Registers
#define CTRL_REG1 0x20
#define CTRL_REG2 0x21
#define CTRL_REG3 0x22
#define CTRL_REG4 0x23
#define CTRL_REG5 0x24
#define STATUS_REG 0x27
#define OUT_X_L 0x28
#define OUT_X_H 0x29
#define OUT_Y_L 0x2A
#define OUT_Y_H 0x2B
#define OUT_Z_L 0x2C
#define OUT_Z_H 0x2D

#define SLAVE_ADDRESS 0b11000

#define SPI_CONFIGURATION ACCEL3
#define SPI_PERFORM_READ 0x80
#define SPI_INCREMENT_ADDRESS 0x40

uint8_t performRead(uint8_t reg){
    /* Using I2C for read */
    return i2c_read1ByteRegister(SLAVE_ADDRESS, reg);
}

int16_t performDimRead(uint8_t reg_h, uint8_t reg_l){
    /* Using I2C for read */
    return (int16_t) ((performRead(reg_h) << 8) | performRead(reg_l));
}

void performWrite(uint8_t reg, uint8_t value){
    /* Using I2C for write */
    i2c_write1ByteRegister(SLAVE_ADDRESS, reg, value);
}

void ACCEL3_Initialize(void) {
    performWrite(CTRL_REG1, 0x27); 
}

int16_t ACCEL3_ReadX(void){
    performDimRead(OUT_X_H, OUT_X_L);
    while(!(performRead(STATUS_REG) && 0x01));
    return performDimRead(OUT_X_H, OUT_X_L);
}

int16_t ACCEL3_ReadY(void){
    performDimRead(OUT_Y_H, OUT_Y_L);
    while(!(performRead(STATUS_REG) && 0x02));
    return performDimRead(OUT_Y_H, OUT_Y_L);
}

int16_t ACCEL3_ReadZ(void){
    performDimRead(OUT_Z_H, OUT_Z_L);
    while(!(performRead(STATUS_REG) && 0x04));
    return performDimRead(OUT_Z_H, OUT_Z_L);
}
