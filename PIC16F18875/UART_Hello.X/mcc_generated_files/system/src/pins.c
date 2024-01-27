// Muthanna Alwahash
// Jan 2024

#include "../pins.h"

void PIN_MANAGER_Initialize(void)
{
    LATA    = 0x0;
    LATB    = 0x0;
    LATC    = 0x0;
    LATD    = 0x0;
    LATE    = 0x0;

    TRISA   = 0xF;
    TRISB   = 0xFF;
    TRISC   = 0xFF;
    TRISD   = 0xFF;
    TRISE   = 0x7;

    ANSELA  = 0xF;
    ANSELB  = 0xFF;
    ANSELC  = 0x7F;
    ANSELD  = 0xFF;
    ANSELE  = 0x7;

    WPUA    = 0x0;
    WPUB    = 0x0;
    WPUC    = 0x0;
    WPUD    = 0x0;
    WPUE    = 0x0;
  
    ODCONA  = 0x0;
    ODCONB  = 0x0;
    ODCONC  = 0x0;
    ODCOND  = 0x0;
    ODCONE  = 0x0;

    SLRCONA = 0xFF;
    SLRCONB = 0xFF;
    SLRCONC = 0xFF;
    SLRCOND = 0xFF;
    SLRCONE = 0x7;

    INLVLA  = 0xFF;
    INLVLB  = 0xFF;
    INLVLC  = 0xFF;
    INLVLD  = 0xFF;
    INLVLE  = 0x7;

    RXPPS   = 0x17;       //RC7->EUSART:RX;

    IOCAP   = 0x0;
    IOCAN   = 0x0;
    IOCAF   = 0x0;
    IOCBP   = 0x0;
    IOCBN   = 0x0;
    IOCBF   = 0x0;
    IOCCP   = 0x0;
    IOCCN   = 0x0;
    IOCCF   = 0x0;
    IOCEP   = 0x0;
    IOCEN   = 0x0;
    IOCEF   = 0x0;

}
  
void PIN_MANAGER_IOC(void)
{
}
