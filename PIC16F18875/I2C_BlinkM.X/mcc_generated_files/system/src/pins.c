// Muthanna Alwahash
// Jan 2024

/**
 * Generated Driver File
 * 
 * @file pins.c
 * 
 * @ingroup  pinsdriver
 * 
 * @brief This is generated driver implementation for pins. 
 *        This file provides implementations for pin APIs for all pins selected in the GUI.
 *
 * @version Driver Version 3.0.0
*/

#include "../pins.h"


void PIN_MANAGER_Initialize(void)
{
   /**
    LATx registers
    */
    LATA = 0x0;
    LATB = 0x0;
    LATC = 0x0;
    LATD = 0x0;
    LATE = 0x0;

    /**
    TRISx registers
    */
    TRISA = 0xF;
    TRISB = 0xFF;
    TRISC = 0x7F;
    TRISD = 0xFF;
    TRISE = 0x7;

    /**
    ANSELx registers
    */
    ANSELA = 0xF;
    ANSELB = 0xEF;
    ANSELC = 0x67;
    ANSELD = 0xFF;
    ANSELE = 0x7;

    /**
    WPUx registers
    */
    WPUA = 0x0;
    WPUB = 0x10;
    WPUC = 0x18;
    WPUD = 0x0;
    WPUE = 0x0;
  
    /**
    ODx registers
    */
   
    ODCONA = 0x0;
    ODCONB = 0x0;
    ODCONC = 0x0;
    ODCOND = 0x0;
    ODCONE = 0x0;
    /**
    SLRCONx registers
    */
    SLRCONA = 0xFF;
    SLRCONB = 0xFF;
    SLRCONC = 0xFF;
    SLRCOND = 0xFF;
    SLRCONE = 0x7;
    /**
    INLVLx registers
    */
    INLVLA = 0xFF;
    INLVLB = 0xFF;
    INLVLC = 0xFF;
    INLVLD = 0xFF;
    INLVLE = 0x7;

    /**
    PPS registers
    */
    RC7PPS = 0x10;  //RC7->EUSART:TX;
    SSP1CLKPPS = 0x13;  //RC3->MSSP1:SCL1;
    RC3PPS = 0x14;  //RC3->MSSP1:SCL1;
    SSP1DATPPS = 0x14;  //RC4->MSSP1:SDA1;
    RC4PPS = 0x15;  //RC4->MSSP1:SDA1;

    /**
    APFCON registers
    */

   /**
    IOCx registers 
    */
    IOCAP = 0x0;
    IOCAN = 0x0;
    IOCAF = 0x0;
    IOCBP = 0x0;
    IOCBN = 0x0;
    IOCBF = 0x0;
    IOCCP = 0x0;
    IOCCN = 0x0;
    IOCCF = 0x0;
    IOCEP = 0x0;
    IOCEN = 0x0;
    IOCEF = 0x0;


}
  
void PIN_MANAGER_IOC(void)
{
}
