# 1 "mcc_generated_files/mcc.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/opt/microchip/xc8/v2.45/pic/include/language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "mcc_generated_files/mcc.c" 2
# 49 "mcc_generated_files/mcc.c"
#pragma config FOSC = INTOSC
#pragma config PWRTE = OFF
#pragma config MCLRE = ON
#pragma config CP = OFF
#pragma config BOREN = ON
#pragma config CLKOUTEN = OFF
#pragma config IESO = ON
#pragma config FCMEN = ON


#pragma config WRT = OFF
#pragma config PPS1WAY = ON
#pragma config ZCD = OFF
#pragma config PLLEN = ON
#pragma config STVREN = ON
#pragma config BORV = LO
#pragma config LPBOR = OFF
#pragma config LVP = ON


#pragma config WDTCPS = WDTCPS1F
#pragma config WDTE = OFF
#pragma config WDTCWS = WDTCWSSW
#pragma config WDTCCS = SWC


# 1 "mcc_generated_files/mcc.h" 1
# 48 "mcc_generated_files/mcc.h"
# 1 "/opt/microchip/xc8/v2.45/pic/include/xc.h" 1 3
# 18 "/opt/microchip/xc8/v2.45/pic/include/xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);



# 1 "/opt/microchip/xc8/v2.45/pic/include/c99/xc8debug.h" 1 3



# 1 "/opt/microchip/xc8/v2.45/pic/include/c99/stdlib.h" 1 3



# 1 "/opt/microchip/xc8/v2.45/pic/include/c99/musl_xc8.h" 1 3
# 5 "/opt/microchip/xc8/v2.45/pic/include/c99/stdlib.h" 2 3





# 1 "/opt/microchip/xc8/v2.45/pic/include/c99/features.h" 1 3
# 11 "/opt/microchip/xc8/v2.45/pic/include/c99/stdlib.h" 2 3
# 21 "/opt/microchip/xc8/v2.45/pic/include/c99/stdlib.h" 3
# 1 "/opt/microchip/xc8/v2.45/pic/include/c99/bits/alltypes.h" 1 3
# 24 "/opt/microchip/xc8/v2.45/pic/include/c99/bits/alltypes.h" 3
typedef long int wchar_t;
# 128 "/opt/microchip/xc8/v2.45/pic/include/c99/bits/alltypes.h" 3
typedef unsigned size_t;
# 174 "/opt/microchip/xc8/v2.45/pic/include/c99/bits/alltypes.h" 3
typedef __int24 int24_t;
# 210 "/opt/microchip/xc8/v2.45/pic/include/c99/bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 22 "/opt/microchip/xc8/v2.45/pic/include/c99/stdlib.h" 2 3

int atoi (const char *);
long atol (const char *);

long long atoll (const char *);

double atof (const char *);


float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);



long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);

long long strtoll (const char *restrict, char **restrict, int);
unsigned long long strtoull (const char *restrict, char **restrict, int);


unsigned long __strtoxl(const char * s, char ** endptr, int base, char is_signed);

unsigned long long __strtoxll(const char * s, char ** endptr, int base, char is_signed);
# 55 "/opt/microchip/xc8/v2.45/pic/include/c99/stdlib.h" 3
int rand (void);
void srand (unsigned);

void *malloc (size_t);
void *calloc (size_t, size_t);
void *realloc (void *, size_t);
void free (void *);

          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));







__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);

long long llabs (long long);


typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;

typedef struct { long long quot, rem; } lldiv_t;


div_t div (int, int);
ldiv_t ldiv (long, long);

lldiv_t lldiv (long long, long long);


typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);
# 5 "/opt/microchip/xc8/v2.45/pic/include/c99/xc8debug.h" 2 3







#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 24 "/opt/microchip/xc8/v2.45/pic/include/xc.h" 2 3
# 1 "/opt/microchip/xc8/v2.45/pic/include/builtins.h" 1 3



# 1 "/opt/microchip/xc8/v2.45/pic/include/c99/stdint.h" 1 3
# 26 "/opt/microchip/xc8/v2.45/pic/include/c99/stdint.h" 3
# 1 "/opt/microchip/xc8/v2.45/pic/include/c99/bits/alltypes.h" 1 3
# 133 "/opt/microchip/xc8/v2.45/pic/include/c99/bits/alltypes.h" 3
typedef unsigned short uintptr_t;
# 148 "/opt/microchip/xc8/v2.45/pic/include/c99/bits/alltypes.h" 3
typedef short intptr_t;
# 164 "/opt/microchip/xc8/v2.45/pic/include/c99/bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;
# 179 "/opt/microchip/xc8/v2.45/pic/include/c99/bits/alltypes.h" 3
typedef long int32_t;





typedef long long int64_t;
# 194 "/opt/microchip/xc8/v2.45/pic/include/c99/bits/alltypes.h" 3
typedef long long intmax_t;





typedef unsigned char uint8_t;




typedef unsigned short uint16_t;
# 215 "/opt/microchip/xc8/v2.45/pic/include/c99/bits/alltypes.h" 3
typedef unsigned long uint32_t;





typedef unsigned long long uint64_t;
# 235 "/opt/microchip/xc8/v2.45/pic/include/c99/bits/alltypes.h" 3
typedef unsigned long long uintmax_t;
# 27 "/opt/microchip/xc8/v2.45/pic/include/c99/stdint.h" 2 3

typedef int8_t int_fast8_t;

typedef int64_t int_fast64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;

typedef int24_t int_least24_t;
typedef int24_t int_fast24_t;

typedef int32_t int_least32_t;

typedef int64_t int_least64_t;


typedef uint8_t uint_fast8_t;

typedef uint64_t uint_fast64_t;


typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;

typedef uint24_t uint_least24_t;
typedef uint24_t uint_fast24_t;

typedef uint32_t uint_least32_t;

typedef uint64_t uint_least64_t;
# 148 "/opt/microchip/xc8/v2.45/pic/include/c99/stdint.h" 3
# 1 "/opt/microchip/xc8/v2.45/pic/include/c99/bits/stdint.h" 1 3
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 149 "/opt/microchip/xc8/v2.45/pic/include/c99/stdint.h" 2 3
# 5 "/opt/microchip/xc8/v2.45/pic/include/builtins.h" 2 3


#pragma intrinsic(__nop)
extern void __nop(void);
# 19 "/opt/microchip/xc8/v2.45/pic/include/builtins.h" 3
#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(uint32_t);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(uint32_t);

#pragma intrinsic(_delay3)
extern __attribute__((nonreentrant)) void _delay3(uint8_t);
# 25 "/opt/microchip/xc8/v2.45/pic/include/xc.h" 2 3



# 1 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/pic.h" 1 3




# 1 "/opt/microchip/xc8/v2.45/pic/include/htc.h" 1 3



# 1 "/opt/microchip/xc8/v2.45/pic/include/xc.h" 1 3
# 5 "/opt/microchip/xc8/v2.45/pic/include/htc.h" 2 3
# 6 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/pic.h" 2 3







# 1 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/pic_chip_select.h" 1 3
# 229 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/pic_chip_select.h" 3
# 1 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 1 3
# 44 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
# 1 "/opt/microchip/xc8/v2.45/pic/include/__at.h" 1 3
# 45 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 2 3







extern volatile unsigned char INDF0 __attribute__((address(0x000)));

__asm("INDF0 equ 00h");


typedef union {
    struct {
        unsigned INDF0 :8;
    };
} INDF0bits_t;
extern volatile INDF0bits_t INDF0bits __attribute__((address(0x000)));
# 72 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char INDF1 __attribute__((address(0x001)));

__asm("INDF1 equ 01h");


typedef union {
    struct {
        unsigned INDF1 :8;
    };
} INDF1bits_t;
extern volatile INDF1bits_t INDF1bits __attribute__((address(0x001)));
# 92 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PCL __attribute__((address(0x002)));

__asm("PCL equ 02h");


typedef union {
    struct {
        unsigned PCL :8;
    };
} PCLbits_t;
extern volatile PCLbits_t PCLbits __attribute__((address(0x002)));
# 112 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char STATUS __attribute__((address(0x003)));

__asm("STATUS equ 03h");


typedef union {
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned nPD :1;
        unsigned nTO :1;
    };
    struct {
        unsigned CARRY :1;
        unsigned :1;
        unsigned ZERO :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0x003)));
# 171 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short FSR0 __attribute__((address(0x004)));



extern volatile unsigned char FSR0L __attribute__((address(0x004)));

__asm("FSR0L equ 04h");


typedef union {
    struct {
        unsigned FSR0L :8;
    };
} FSR0Lbits_t;
extern volatile FSR0Lbits_t FSR0Lbits __attribute__((address(0x004)));
# 195 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char FSR0H __attribute__((address(0x005)));

__asm("FSR0H equ 05h");


typedef union {
    struct {
        unsigned FSR0H :8;
    };
} FSR0Hbits_t;
extern volatile FSR0Hbits_t FSR0Hbits __attribute__((address(0x005)));
# 215 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short FSR1 __attribute__((address(0x006)));



extern volatile unsigned char FSR1L __attribute__((address(0x006)));

__asm("FSR1L equ 06h");


typedef union {
    struct {
        unsigned FSR1L :8;
    };
} FSR1Lbits_t;
extern volatile FSR1Lbits_t FSR1Lbits __attribute__((address(0x006)));
# 239 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char FSR1H __attribute__((address(0x007)));

__asm("FSR1H equ 07h");


typedef union {
    struct {
        unsigned FSR1H :8;
    };
} FSR1Hbits_t;
extern volatile FSR1Hbits_t FSR1Hbits __attribute__((address(0x007)));
# 259 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char BSR __attribute__((address(0x008)));

__asm("BSR equ 08h");


typedef union {
    struct {
        unsigned BSR :5;
    };
    struct {
        unsigned BSR0 :1;
        unsigned BSR1 :1;
        unsigned BSR2 :1;
        unsigned BSR3 :1;
        unsigned BSR4 :1;
    };
} BSRbits_t;
extern volatile BSRbits_t BSRbits __attribute__((address(0x008)));
# 311 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char WREG __attribute__((address(0x009)));

__asm("WREG equ 09h");


typedef union {
    struct {
        unsigned WREG0 :8;
    };
} WREGbits_t;
extern volatile WREGbits_t WREGbits __attribute__((address(0x009)));
# 331 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PCLATH __attribute__((address(0x00A)));

__asm("PCLATH equ 0Ah");


typedef union {
    struct {
        unsigned PCLATH :7;
    };
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __attribute__((address(0x00A)));
# 351 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char INTCON __attribute__((address(0x00B)));

__asm("INTCON equ 0Bh");


typedef union {
    struct {
        unsigned IOCIF :1;
        unsigned INTF :1;
        unsigned TMR0IF :1;
        unsigned IOCIE :1;
        unsigned INTE :1;
        unsigned TMR0IE :1;
        unsigned PEIE :1;
        unsigned GIE :1;
    };
    struct {
        unsigned :2;
        unsigned T0IF :1;
        unsigned :2;
        unsigned T0IE :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0x00B)));
# 429 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PORTA __attribute__((address(0x00C)));

__asm("PORTA equ 0Ch");


typedef union {
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0x00C)));
# 479 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PORTB __attribute__((address(0x00D)));

__asm("PORTB equ 0Dh");


typedef union {
    struct {
        unsigned :4;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __attribute__((address(0x00D)));
# 518 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PORTC __attribute__((address(0x00E)));

__asm("PORTC equ 0Eh");


typedef union {
    struct {
        unsigned RC0 :1;
        unsigned RC1 :1;
        unsigned RC2 :1;
        unsigned RC3 :1;
        unsigned RC4 :1;
        unsigned RC5 :1;
        unsigned RC6 :1;
        unsigned RC7 :1;
    };
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __attribute__((address(0x00E)));
# 580 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0x010)));

__asm("PIR1 equ 010h");


typedef union {
    struct {
        unsigned TMR1IF :1;
        unsigned TMR2IF :1;
        unsigned CCP1IF :1;
        unsigned SSP1IF :1;
        unsigned TXIF :1;
        unsigned RCIF :1;
        unsigned ADIF :1;
        unsigned TMR1GIF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0x010)));
# 642 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PIR2 __attribute__((address(0x011)));

__asm("PIR2 equ 011h");


typedef union {
    struct {
        unsigned CCP2IF :1;
        unsigned TMR4IF :1;
        unsigned TMR6IF :1;
        unsigned BCL1IF :1;
        unsigned :1;
        unsigned C1IF :1;
        unsigned C2IF :1;
        unsigned OSFIF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0x011)));
# 699 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PIR3 __attribute__((address(0x012)));

__asm("PIR3 equ 012h");


typedef union {
    struct {
        unsigned CLC1IF :1;
        unsigned CLC2IF :1;
        unsigned CLC3IF :1;
        unsigned CLC4IF :1;
        unsigned ZCDIF :1;
        unsigned CWGIF :1;
    };
} PIR3bits_t;
extern volatile PIR3bits_t PIR3bits __attribute__((address(0x012)));
# 749 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PIR4 __attribute__((address(0x013)));

__asm("PIR4 equ 013h");


typedef union {
    struct {
        unsigned SMT1IF :1;
        unsigned SMT1PRAIF :1;
        unsigned SMT1PWAIF :1;
        unsigned SMT2IF :1;
        unsigned SMT2PRAIF :1;
        unsigned SMT2PWAIF :1;
        unsigned CRCIF :1;
        unsigned SCANIF :1;
    };
} PIR4bits_t;
extern volatile PIR4bits_t PIR4bits __attribute__((address(0x013)));
# 811 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PIR5 __attribute__((address(0x014)));

__asm("PIR5 equ 014h");


typedef union {
    struct {
        unsigned PID1DIF :1;
        unsigned PID1EIF :1;
        unsigned AT1IF :1;
        unsigned :1;
        unsigned TMR5IF :1;
        unsigned TMR5GIF :1;
        unsigned TMR3IF :1;
        unsigned TMR3GIF :1;
    };
} PIR5bits_t;
extern volatile PIR5bits_t PIR5bits __attribute__((address(0x014)));
# 868 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char TMR0 __attribute__((address(0x015)));

__asm("TMR0 equ 015h");


typedef union {
    struct {
        unsigned TMR0 :8;
    };
} TMR0bits_t;
extern volatile TMR0bits_t TMR0bits __attribute__((address(0x015)));
# 888 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short TMR1 __attribute__((address(0x016)));

__asm("TMR1 equ 016h");




extern volatile unsigned char TMR1L __attribute__((address(0x016)));

__asm("TMR1L equ 016h");


typedef union {
    struct {
        unsigned TMR1L :8;
    };
} TMR1Lbits_t;
extern volatile TMR1Lbits_t TMR1Lbits __attribute__((address(0x016)));
# 915 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char TMR1H __attribute__((address(0x017)));

__asm("TMR1H equ 017h");


typedef union {
    struct {
        unsigned TMR1H :8;
    };
} TMR1Hbits_t;
extern volatile TMR1Hbits_t TMR1Hbits __attribute__((address(0x017)));
# 935 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T1CON __attribute__((address(0x018)));

__asm("T1CON equ 018h");


typedef union {
    struct {
        unsigned TMR1ON :1;
        unsigned :1;
        unsigned nT1SYNC :1;
        unsigned :1;
        unsigned T1CKPS :2;
        unsigned TMR1CS :2;
    };
    struct {
        unsigned :4;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
        unsigned TMR1CS0 :1;
        unsigned TMR1CS1 :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0x018)));
# 1002 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T1GCON __attribute__((address(0x019)));

__asm("T1GCON equ 019h");


typedef union {
    struct {
        unsigned T1GSS :2;
        unsigned T1GVAL :1;
        unsigned T1GGO_nDONE :1;
        unsigned T1GSPM :1;
        unsigned T1GTM :1;
        unsigned T1GPOL :1;
        unsigned TMR1GE :1;
    };
    struct {
        unsigned T1GSS0 :1;
        unsigned T1GSS1 :1;
    };
} T1GCONbits_t;
extern volatile T1GCONbits_t T1GCONbits __attribute__((address(0x019)));
# 1072 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T2TMR __attribute__((address(0x01A)));

__asm("T2TMR equ 01Ah");


extern volatile unsigned char TMR2 __attribute__((address(0x01A)));

__asm("TMR2 equ 01Ah");


typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR2 :8;
    };
} T2TMRbits_t;
extern volatile T2TMRbits_t T2TMRbits __attribute__((address(0x01A)));
# 1103 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR2 :8;
    };
} TMR2bits_t;
extern volatile TMR2bits_t TMR2bits __attribute__((address(0x01A)));
# 1126 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T2PR __attribute__((address(0x01B)));

__asm("T2PR equ 01Bh");


extern volatile unsigned char PR2 __attribute__((address(0x01B)));

__asm("PR2 equ 01Bh");


typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned T2PR :8;
    };
} T2PRbits_t;
extern volatile T2PRbits_t T2PRbits __attribute__((address(0x01B)));
# 1157 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned T2PR :8;
    };
} PR2bits_t;
extern volatile PR2bits_t PR2bits __attribute__((address(0x01B)));
# 1180 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T2CON __attribute__((address(0x01C)));

__asm("T2CON equ 01Ch");


typedef union {
    struct {
        unsigned OUTPS :4;
        unsigned CKPS :3;
        unsigned ON :1;
    };
    struct {
        unsigned OUTPS0 :1;
        unsigned OUTPS1 :1;
        unsigned OUTPS2 :1;
        unsigned OUTPS3 :1;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
        unsigned CKPS2 :1;
    };
    struct {
        unsigned T2OUTPS :4;
        unsigned T2CKPS :3;
        unsigned T2ON :1;
    };
    struct {
        unsigned T2OUTPS0 :1;
        unsigned T2OUTPS1 :1;
        unsigned T2OUTPS2 :1;
        unsigned T2OUTPS3 :1;
        unsigned T2CKPS0 :1;
        unsigned T2CKPS1 :1;
        unsigned T2CKPS2 :1;
        unsigned TMR2ON :1;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0x01C)));
# 1326 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T2HLT __attribute__((address(0x01D)));

__asm("T2HLT equ 01Dh");


typedef union {
    struct {
        unsigned MODE :5;
        unsigned CKSYNC :1;
        unsigned CKPOL :1;
        unsigned PSYNC :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
        unsigned MODE4 :1;
    };
    struct {
        unsigned T2MODE :5;
        unsigned T2CKSYNC :1;
        unsigned T2CKPOL :1;
        unsigned T2PSYNC :1;
    };
    struct {
        unsigned T2MODE0 :1;
        unsigned T2MODE1 :1;
        unsigned T2MODE2 :1;
        unsigned T2MODE3 :1;
        unsigned T2MODE4 :1;
    };
} T2HLTbits_t;
extern volatile T2HLTbits_t T2HLTbits __attribute__((address(0x01D)));
# 1454 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T2CLKCON __attribute__((address(0x01E)));

__asm("T2CLKCON equ 01Eh");


typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
    struct {
        unsigned T2CS :4;
    };
    struct {
        unsigned T2CS0 :1;
        unsigned T2CS1 :1;
        unsigned T2CS2 :1;
        unsigned T2CS3 :1;
    };
} T2CLKCONbits_t;
extern volatile T2CLKCONbits_t T2CLKCONbits __attribute__((address(0x01E)));
# 1534 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T2RST __attribute__((address(0x01F)));

__asm("T2RST equ 01Fh");


typedef union {
    struct {
        unsigned RSEL :4;
    };
    struct {
        unsigned RSEL0 :1;
        unsigned RSEL1 :1;
        unsigned RSEL2 :1;
        unsigned RSEL3 :1;
    };
    struct {
        unsigned T2RSEL :4;
    };
    struct {
        unsigned T2RSEL0 :1;
        unsigned T2RSEL1 :1;
        unsigned T2RSEL2 :1;
        unsigned T2RSEL3 :1;
    };
} T2RSTbits_t;
extern volatile T2RSTbits_t T2RSTbits __attribute__((address(0x01F)));
# 1614 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char TRISA __attribute__((address(0x08C)));

__asm("TRISA equ 08Ch");


typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned TRISA4 :1;
        unsigned TRISA5 :1;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0x08C)));
# 1664 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char TRISB __attribute__((address(0x08D)));

__asm("TRISB equ 08Dh");


typedef union {
    struct {
        unsigned :4;
        unsigned TRISB4 :1;
        unsigned TRISB5 :1;
        unsigned TRISB6 :1;
        unsigned TRISB7 :1;
    };
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __attribute__((address(0x08D)));
# 1703 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char TRISC __attribute__((address(0x08E)));

__asm("TRISC equ 08Eh");


typedef union {
    struct {
        unsigned TRISC0 :1;
        unsigned TRISC1 :1;
        unsigned TRISC2 :1;
        unsigned TRISC3 :1;
        unsigned TRISC4 :1;
        unsigned TRISC5 :1;
        unsigned TRISC6 :1;
        unsigned TRISC7 :1;
    };
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __attribute__((address(0x08E)));
# 1765 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0x090)));

__asm("PIE1 equ 090h");


typedef union {
    struct {
        unsigned TMR1IE :1;
        unsigned TMR2IE :1;
        unsigned CCP1IE :1;
        unsigned SSP1IE :1;
        unsigned TXIE :1;
        unsigned RCIE :1;
        unsigned ADIE :1;
        unsigned TMR1GIE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0x090)));
# 1827 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PIE2 __attribute__((address(0x091)));

__asm("PIE2 equ 091h");


typedef union {
    struct {
        unsigned CCP2IE :1;
        unsigned TMR4IE :1;
        unsigned TMR6IE :1;
        unsigned BCL1IE :1;
        unsigned :1;
        unsigned C1IE :1;
        unsigned C2IE :1;
        unsigned OSCFIE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0x091)));
# 1884 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PIE3 __attribute__((address(0x092)));

__asm("PIE3 equ 092h");


typedef union {
    struct {
        unsigned CLC1IE :1;
        unsigned CLC2IE :1;
        unsigned CLC3IE :1;
        unsigned CLC4IE :1;
        unsigned ZCDIE :1;
        unsigned CWGIE :1;
    };
} PIE3bits_t;
extern volatile PIE3bits_t PIE3bits __attribute__((address(0x092)));
# 1934 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PIE4 __attribute__((address(0x093)));

__asm("PIE4 equ 093h");


typedef union {
    struct {
        unsigned SMT1IE :1;
        unsigned SMT1PRAIE :1;
        unsigned SMT1PWAIE :1;
        unsigned SMT2IE :1;
        unsigned SMT2PRAIE :1;
        unsigned SMT2PWAIE :1;
        unsigned CRCIE :1;
        unsigned SCANIE :1;
    };
} PIE4bits_t;
extern volatile PIE4bits_t PIE4bits __attribute__((address(0x093)));
# 1996 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PIE5 __attribute__((address(0x094)));

__asm("PIE5 equ 094h");


typedef union {
    struct {
        unsigned PID1DIE :1;
        unsigned PID1EIE :1;
        unsigned AT1IE :1;
        unsigned :1;
        unsigned TMR5IE :1;
        unsigned TMR5GIE :1;
        unsigned TMR3IE :1;
        unsigned TMR3GIE :1;
    };
} PIE5bits_t;
extern volatile PIE5bits_t PIE5bits __attribute__((address(0x094)));
# 2053 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char OPTION_REG __attribute__((address(0x095)));

__asm("OPTION_REG equ 095h");


typedef union {
    struct {
        unsigned PS :3;
        unsigned PSA :1;
        unsigned TMR0SE :1;
        unsigned TMR0CS :1;
        unsigned INTEDG :1;
        unsigned nWPUEN :1;
    };
    struct {
        unsigned PS0 :1;
        unsigned PS1 :1;
        unsigned PS2 :1;
        unsigned :1;
        unsigned T0SE :1;
        unsigned T0CS :1;
    };
} OPTION_REGbits_t;
extern volatile OPTION_REGbits_t OPTION_REGbits __attribute__((address(0x095)));
# 2136 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PCON __attribute__((address(0x096)));

__asm("PCON equ 096h");


typedef union {
    struct {
        unsigned nBOR :1;
        unsigned nPOR :1;
        unsigned nRI :1;
        unsigned nRMCLR :1;
        unsigned nRWDT :1;
        unsigned nWDTWV :1;
        unsigned STKUNF :1;
        unsigned STKOVF :1;
    };
} PCONbits_t;
extern volatile PCONbits_t PCONbits __attribute__((address(0x096)));
# 2198 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char OSCTUNE __attribute__((address(0x098)));

__asm("OSCTUNE equ 098h");


typedef union {
    struct {
        unsigned TUN :6;
    };
    struct {
        unsigned TUN0 :1;
        unsigned TUN1 :1;
        unsigned TUN2 :1;
        unsigned TUN3 :1;
        unsigned TUN4 :1;
        unsigned TUN5 :1;
    };
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __attribute__((address(0x098)));
# 2256 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char OSCCON __attribute__((address(0x099)));

__asm("OSCCON equ 099h");


typedef union {
    struct {
        unsigned SCS :2;
        unsigned :1;
        unsigned IRCF :4;
        unsigned SPLLEN :1;
    };
    struct {
        unsigned SCS0 :1;
        unsigned SCS1 :1;
        unsigned :1;
        unsigned IRCF0 :1;
        unsigned IRCF1 :1;
        unsigned IRCF2 :1;
        unsigned IRCF3 :1;
    };
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __attribute__((address(0x099)));
# 2328 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char OSCSTAT __attribute__((address(0x09A)));

__asm("OSCSTAT equ 09Ah");


typedef union {
    struct {
        unsigned HFIOFS :1;
        unsigned LFIOFR :1;
        unsigned MFIOFR :1;
        unsigned HFIOFL :1;
        unsigned HFIOFR :1;
        unsigned OSTS :1;
        unsigned PLLR :1;
    };
} OSCSTATbits_t;
extern volatile OSCSTATbits_t OSCSTATbits __attribute__((address(0x09A)));
# 2384 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short ADRES __attribute__((address(0x09B)));

__asm("ADRES equ 09Bh");




extern volatile unsigned char ADRESL __attribute__((address(0x09B)));

__asm("ADRESL equ 09Bh");


typedef union {
    struct {
        unsigned ADRESL :8;
    };
} ADRESLbits_t;
extern volatile ADRESLbits_t ADRESLbits __attribute__((address(0x09B)));
# 2411 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char ADRESH __attribute__((address(0x09C)));

__asm("ADRESH equ 09Ch");


typedef union {
    struct {
        unsigned ADRESH :8;
    };
} ADRESHbits_t;
extern volatile ADRESHbits_t ADRESHbits __attribute__((address(0x09C)));
# 2431 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char ADCON0 __attribute__((address(0x09D)));

__asm("ADCON0 equ 09Dh");


typedef union {
    struct {
        unsigned ADON :1;
        unsigned GO_nDONE :1;
        unsigned CHS :5;
    };
    struct {
        unsigned :1;
        unsigned ADGO :1;
        unsigned CHS0 :1;
        unsigned CHS1 :1;
        unsigned CHS2 :1;
        unsigned CHS3 :1;
        unsigned CHS4 :1;
    };
    struct {
        unsigned :1;
        unsigned GO :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0x09D)));
# 2511 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char ADCON1 __attribute__((address(0x09E)));

__asm("ADCON1 equ 09Eh");


typedef union {
    struct {
        unsigned ADPREF :2;
        unsigned :2;
        unsigned ADCS :3;
        unsigned ADFM :1;
    };
    struct {
        unsigned ADPREF0 :1;
        unsigned ADPREF1 :1;
        unsigned :2;
        unsigned ADCS0 :1;
        unsigned ADCS1 :1;
        unsigned ADCS2 :1;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0x09E)));
# 2577 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char ADCON2 __attribute__((address(0x09F)));

__asm("ADCON2 equ 09Fh");


typedef union {
    struct {
        unsigned :3;
        unsigned TRIGSEL :5;
    };
    struct {
        unsigned :3;
        unsigned TRIGSEL0 :1;
        unsigned TRIGSEL1 :1;
        unsigned TRIGSEL2 :1;
        unsigned TRIGSEL3 :1;
        unsigned TRIGSEL4 :1;
    };
} ADCON2bits_t;
extern volatile ADCON2bits_t ADCON2bits __attribute__((address(0x09F)));
# 2631 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char LATA __attribute__((address(0x10C)));

__asm("LATA equ 010Ch");


typedef union {
    struct {
        unsigned LATA0 :1;
        unsigned LATA1 :1;
        unsigned LATA2 :1;
        unsigned LATA3 :1;
        unsigned LATA4 :1;
        unsigned LATA5 :1;
    };
} LATAbits_t;
extern volatile LATAbits_t LATAbits __attribute__((address(0x10C)));
# 2681 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char LATB __attribute__((address(0x10D)));

__asm("LATB equ 010Dh");


typedef union {
    struct {
        unsigned :4;
        unsigned LATB4 :1;
        unsigned LATB5 :1;
        unsigned LATB6 :1;
        unsigned LATB7 :1;
    };
} LATBbits_t;
extern volatile LATBbits_t LATBbits __attribute__((address(0x10D)));
# 2720 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char LATC __attribute__((address(0x10E)));

__asm("LATC equ 010Eh");


typedef union {
    struct {
        unsigned LATC0 :1;
        unsigned LATC1 :1;
        unsigned LATC2 :1;
        unsigned LATC3 :1;
        unsigned LATC4 :1;
        unsigned LATC5 :1;
        unsigned LATC6 :1;
        unsigned LATC7 :1;
    };
} LATCbits_t;
extern volatile LATCbits_t LATCbits __attribute__((address(0x10E)));
# 2782 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CM1CON0 __attribute__((address(0x111)));

__asm("CM1CON0 equ 0111h");


typedef union {
    struct {
        unsigned C1SYNC :1;
        unsigned C1HYS :1;
        unsigned C1SP :1;
        unsigned :1;
        unsigned C1POL :1;
        unsigned :1;
        unsigned C1OUT :1;
        unsigned C1ON :1;
    };
} CM1CON0bits_t;
extern volatile CM1CON0bits_t CM1CON0bits __attribute__((address(0x111)));
# 2834 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CM1CON1 __attribute__((address(0x112)));

__asm("CM1CON1 equ 0112h");


typedef union {
    struct {
        unsigned C1NCH0 :1;
        unsigned C1NCH1 :1;
        unsigned C1NCH2 :1;
        unsigned :1;
        unsigned C1PCH0 :1;
        unsigned C1PCH1 :1;
        unsigned C1INTN :1;
        unsigned C1INTP :1;
    };
    struct {
        unsigned C1NCH :3;
        unsigned :1;
        unsigned C1PCH :2;
    };
} CM1CON1bits_t;
extern volatile CM1CON1bits_t CM1CON1bits __attribute__((address(0x112)));
# 2906 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CM2CON0 __attribute__((address(0x113)));

__asm("CM2CON0 equ 0113h");


typedef union {
    struct {
        unsigned C2SYNC :1;
        unsigned C2HYS :1;
        unsigned C2SP :1;
        unsigned :1;
        unsigned C2POL :1;
        unsigned :1;
        unsigned C2OUT :1;
        unsigned C2ON :1;
    };
} CM2CON0bits_t;
extern volatile CM2CON0bits_t CM2CON0bits __attribute__((address(0x113)));
# 2958 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CM2CON1 __attribute__((address(0x114)));

__asm("CM2CON1 equ 0114h");


typedef union {
    struct {
        unsigned C2NCH0 :1;
        unsigned C2NCH1 :1;
        unsigned C2NCH2 :1;
        unsigned :1;
        unsigned C2PCH0 :1;
        unsigned C2PCH1 :1;
        unsigned C2INTN :1;
        unsigned C2INTP :1;
    };
    struct {
        unsigned C2NCH :3;
        unsigned :1;
        unsigned C2PCH :2;
    };
} CM2CON1bits_t;
extern volatile CM2CON1bits_t CM2CON1bits __attribute__((address(0x114)));
# 3030 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CMOUT __attribute__((address(0x115)));

__asm("CMOUT equ 0115h");


typedef union {
    struct {
        unsigned MC1OUT :1;
        unsigned MC2OUT :1;
    };
} CMOUTbits_t;
extern volatile CMOUTbits_t CMOUTbits __attribute__((address(0x115)));
# 3056 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char BORCON __attribute__((address(0x116)));

__asm("BORCON equ 0116h");


typedef union {
    struct {
        unsigned BORRDY :1;
        unsigned :5;
        unsigned BORFS :1;
        unsigned SBOREN :1;
    };
} BORCONbits_t;
extern volatile BORCONbits_t BORCONbits __attribute__((address(0x116)));
# 3089 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char FVRCON __attribute__((address(0x117)));

__asm("FVRCON equ 0117h");


typedef union {
    struct {
        unsigned ADFVR :2;
        unsigned CDAFVR :2;
        unsigned TSRNG :1;
        unsigned TSEN :1;
        unsigned FVRRDY :1;
        unsigned FVREN :1;
    };
    struct {
        unsigned ADFVR0 :1;
        unsigned ADFVR1 :1;
        unsigned CDAFVR0 :1;
        unsigned CDAFVR1 :1;
    };
} FVRCONbits_t;
extern volatile FVRCONbits_t FVRCONbits __attribute__((address(0x117)));
# 3165 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char DAC1CON0 __attribute__((address(0x118)));

__asm("DAC1CON0 equ 0118h");


typedef union {
    struct {
        unsigned :2;
        unsigned DAC1PSS :2;
        unsigned :1;
        unsigned DAC1OE :1;
        unsigned :1;
        unsigned DAC1EN :1;
    };
    struct {
        unsigned :2;
        unsigned D1PSS0 :1;
        unsigned D1PSS1 :1;
    };
} DAC1CON0bits_t;
extern volatile DAC1CON0bits_t DAC1CON0bits __attribute__((address(0x118)));
# 3215 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char DAC1CON1 __attribute__((address(0x119)));

__asm("DAC1CON1 equ 0119h");


typedef union {
    struct {
        unsigned DAC1R :8;
    };
    struct {
        unsigned DAC1R0 :1;
        unsigned DAC1R1 :1;
        unsigned DAC1R2 :1;
        unsigned DAC1R3 :1;
        unsigned DAC1R4 :1;
        unsigned DAC1R5 :1;
        unsigned DAC1R6 :1;
        unsigned DAC1R7 :1;
    };
} DAC1CON1bits_t;
extern volatile DAC1CON1bits_t DAC1CON1bits __attribute__((address(0x119)));
# 3285 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char ZCD1CON __attribute__((address(0x11C)));

__asm("ZCD1CON equ 011Ch");


typedef union {
    struct {
        unsigned ZCD1INTN :1;
        unsigned ZCD1INTP :1;
        unsigned :2;
        unsigned ZCD1POL :1;
        unsigned ZCD1OUT :1;
        unsigned :1;
        unsigned ZCD1EN :1;
    };
} ZCD1CONbits_t;
extern volatile ZCD1CONbits_t ZCD1CONbits __attribute__((address(0x11C)));
# 3331 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char ANSELA __attribute__((address(0x18C)));

__asm("ANSELA equ 018Ch");


typedef union {
    struct {
        unsigned ANSA0 :1;
        unsigned ANSA1 :1;
        unsigned ANSA2 :1;
        unsigned :1;
        unsigned ANSA4 :1;
    };
    struct {
        unsigned ANSELA :6;
    };
} ANSELAbits_t;
extern volatile ANSELAbits_t ANSELAbits __attribute__((address(0x18C)));
# 3378 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char ANSELB __attribute__((address(0x18D)));

__asm("ANSELB equ 018Dh");


typedef union {
    struct {
        unsigned :4;
        unsigned ANSB4 :1;
        unsigned ANSB5 :1;
        unsigned ANSB6 :1;
        unsigned ANSB7 :1;
    };
} ANSELBbits_t;
extern volatile ANSELBbits_t ANSELBbits __attribute__((address(0x18D)));
# 3417 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char ANSELC __attribute__((address(0x18E)));

__asm("ANSELC equ 018Eh");


typedef union {
    struct {
        unsigned ANSC0 :1;
        unsigned ANSC1 :1;
        unsigned ANSC2 :1;
        unsigned ANSC3 :1;
        unsigned :2;
        unsigned ANSC6 :1;
        unsigned ANSC7 :1;
    };
    struct {
        unsigned ANSELC :8;
    };
} ANSELCbits_t;
extern volatile ANSELCbits_t ANSELCbits __attribute__((address(0x18E)));
# 3476 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short PMADR __attribute__((address(0x191)));

__asm("PMADR equ 0191h");




extern volatile unsigned char PMADRL __attribute__((address(0x191)));

__asm("PMADRL equ 0191h");


typedef union {
    struct {
        unsigned PMADRL :8;
    };
} PMADRLbits_t;
extern volatile PMADRLbits_t PMADRLbits __attribute__((address(0x191)));
# 3503 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PMADRH __attribute__((address(0x192)));

__asm("PMADRH equ 0192h");


typedef union {
    struct {
        unsigned PMADRH :7;
    };
} PMADRHbits_t;
extern volatile PMADRHbits_t PMADRHbits __attribute__((address(0x192)));
# 3523 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short PMDAT __attribute__((address(0x193)));

__asm("PMDAT equ 0193h");




extern volatile unsigned char PMDATL __attribute__((address(0x193)));

__asm("PMDATL equ 0193h");


typedef union {
    struct {
        unsigned PMDATL :8;
    };
} PMDATLbits_t;
extern volatile PMDATLbits_t PMDATLbits __attribute__((address(0x193)));
# 3550 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PMDATH __attribute__((address(0x194)));

__asm("PMDATH equ 0194h");


typedef union {
    struct {
        unsigned PMDATH :6;
    };
} PMDATHbits_t;
extern volatile PMDATHbits_t PMDATHbits __attribute__((address(0x194)));
# 3570 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PMCON1 __attribute__((address(0x195)));

__asm("PMCON1 equ 0195h");


typedef union {
    struct {
        unsigned RD :1;
        unsigned WR :1;
        unsigned WREN :1;
        unsigned WRERR :1;
        unsigned FREE :1;
        unsigned LWLO :1;
        unsigned CFGS :1;
    };
} PMCON1bits_t;
extern volatile PMCON1bits_t PMCON1bits __attribute__((address(0x195)));
# 3626 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PMCON2 __attribute__((address(0x196)));

__asm("PMCON2 equ 0196h");


typedef union {
    struct {
        unsigned PMCON2 :8;
    };
} PMCON2bits_t;
extern volatile PMCON2bits_t PMCON2bits __attribute__((address(0x196)));
# 3646 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char VREGCON __attribute__((address(0x197)));

__asm("VREGCON equ 0197h");


typedef union {
    struct {
        unsigned VREGPM :2;
    };
    struct {
        unsigned VREGPM0 :1;
        unsigned VREGPM1 :1;
    };
} VREGCONbits_t;
extern volatile VREGCONbits_t VREGCONbits __attribute__((address(0x197)));
# 3680 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char RC1REG __attribute__((address(0x199)));

__asm("RC1REG equ 0199h");


extern volatile unsigned char RCREG __attribute__((address(0x199)));

__asm("RCREG equ 0199h");

extern volatile unsigned char RCREG1 __attribute__((address(0x199)));

__asm("RCREG1 equ 0199h");


typedef union {
    struct {
        unsigned RC1REG :8;
    };
} RC1REGbits_t;
extern volatile RC1REGbits_t RC1REGbits __attribute__((address(0x199)));







typedef union {
    struct {
        unsigned RC1REG :8;
    };
} RCREGbits_t;
extern volatile RCREGbits_t RCREGbits __attribute__((address(0x199)));






typedef union {
    struct {
        unsigned RC1REG :8;
    };
} RCREG1bits_t;
extern volatile RCREG1bits_t RCREG1bits __attribute__((address(0x199)));
# 3734 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char TX1REG __attribute__((address(0x19A)));

__asm("TX1REG equ 019Ah");


extern volatile unsigned char TXREG1 __attribute__((address(0x19A)));

__asm("TXREG1 equ 019Ah");

extern volatile unsigned char TXREG __attribute__((address(0x19A)));

__asm("TXREG equ 019Ah");


typedef union {
    struct {
        unsigned TX1REG :8;
    };
} TX1REGbits_t;
extern volatile TX1REGbits_t TX1REGbits __attribute__((address(0x19A)));







typedef union {
    struct {
        unsigned TX1REG :8;
    };
} TXREG1bits_t;
extern volatile TXREG1bits_t TXREG1bits __attribute__((address(0x19A)));






typedef union {
    struct {
        unsigned TX1REG :8;
    };
} TXREGbits_t;
extern volatile TXREGbits_t TXREGbits __attribute__((address(0x19A)));
# 3788 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short SP1BRG __attribute__((address(0x19B)));

__asm("SP1BRG equ 019Bh");




extern volatile unsigned char SP1BRGL __attribute__((address(0x19B)));

__asm("SP1BRGL equ 019Bh");


extern volatile unsigned char SPBRG __attribute__((address(0x19B)));

__asm("SPBRG equ 019Bh");

extern volatile unsigned char SPBRG1 __attribute__((address(0x19B)));

__asm("SPBRG1 equ 019Bh");

extern volatile unsigned char SPBRGL __attribute__((address(0x19B)));

__asm("SPBRGL equ 019Bh");


typedef union {
    struct {
        unsigned SP1BRGL :8;
    };
} SP1BRGLbits_t;
extern volatile SP1BRGLbits_t SP1BRGLbits __attribute__((address(0x19B)));







typedef union {
    struct {
        unsigned SP1BRGL :8;
    };
} SPBRGbits_t;
extern volatile SPBRGbits_t SPBRGbits __attribute__((address(0x19B)));






typedef union {
    struct {
        unsigned SP1BRGL :8;
    };
} SPBRG1bits_t;
extern volatile SPBRG1bits_t SPBRG1bits __attribute__((address(0x19B)));






typedef union {
    struct {
        unsigned SP1BRGL :8;
    };
} SPBRGLbits_t;
extern volatile SPBRGLbits_t SPBRGLbits __attribute__((address(0x19B)));
# 3865 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SP1BRGH __attribute__((address(0x19C)));

__asm("SP1BRGH equ 019Ch");


extern volatile unsigned char SPBRGH __attribute__((address(0x19C)));

__asm("SPBRGH equ 019Ch");

extern volatile unsigned char SPBRGH1 __attribute__((address(0x19C)));

__asm("SPBRGH1 equ 019Ch");


typedef union {
    struct {
        unsigned SP1BRGH :8;
    };
} SP1BRGHbits_t;
extern volatile SP1BRGHbits_t SP1BRGHbits __attribute__((address(0x19C)));







typedef union {
    struct {
        unsigned SP1BRGH :8;
    };
} SPBRGHbits_t;
extern volatile SPBRGHbits_t SPBRGHbits __attribute__((address(0x19C)));






typedef union {
    struct {
        unsigned SP1BRGH :8;
    };
} SPBRGH1bits_t;
extern volatile SPBRGH1bits_t SPBRGH1bits __attribute__((address(0x19C)));
# 3919 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char RC1STA __attribute__((address(0x19D)));

__asm("RC1STA equ 019Dh");


extern volatile unsigned char RCSTA1 __attribute__((address(0x19D)));

__asm("RCSTA1 equ 019Dh");

extern volatile unsigned char RCSTA __attribute__((address(0x19D)));

__asm("RCSTA equ 019Dh");


typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
} RC1STAbits_t;
extern volatile RC1STAbits_t RC1STAbits __attribute__((address(0x19D)));
# 3988 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __attribute__((address(0x19D)));
# 4042 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __attribute__((address(0x19D)));
# 4099 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char TX1STA __attribute__((address(0x19E)));

__asm("TX1STA equ 019Eh");


extern volatile unsigned char TXSTA1 __attribute__((address(0x19E)));

__asm("TXSTA1 equ 019Eh");

extern volatile unsigned char TXSTA __attribute__((address(0x19E)));

__asm("TXSTA equ 019Eh");


typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned SENDB :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
} TX1STAbits_t;
extern volatile TX1STAbits_t TX1STAbits __attribute__((address(0x19E)));
# 4168 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned SENDB :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __attribute__((address(0x19E)));
# 4222 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned SENDB :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __attribute__((address(0x19E)));
# 4279 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char BAUD1CON __attribute__((address(0x19F)));

__asm("BAUD1CON equ 019Fh");


extern volatile unsigned char BAUDCON1 __attribute__((address(0x19F)));

__asm("BAUDCON1 equ 019Fh");

extern volatile unsigned char BAUDCTL1 __attribute__((address(0x19F)));

__asm("BAUDCTL1 equ 019Fh");

extern volatile unsigned char BAUDCON __attribute__((address(0x19F)));

__asm("BAUDCON equ 019Fh");

extern volatile unsigned char BAUDCTL __attribute__((address(0x19F)));

__asm("BAUDCTL equ 019Fh");


typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
} BAUD1CONbits_t;
extern volatile BAUD1CONbits_t BAUD1CONbits __attribute__((address(0x19F)));
# 4346 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
} BAUDCON1bits_t;
extern volatile BAUDCON1bits_t BAUDCON1bits __attribute__((address(0x19F)));
# 4390 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
} BAUDCTL1bits_t;
extern volatile BAUDCTL1bits_t BAUDCTL1bits __attribute__((address(0x19F)));
# 4434 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
} BAUDCONbits_t;
extern volatile BAUDCONbits_t BAUDCONbits __attribute__((address(0x19F)));
# 4478 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
} BAUDCTLbits_t;
extern volatile BAUDCTLbits_t BAUDCTLbits __attribute__((address(0x19F)));
# 4525 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char WPUA __attribute__((address(0x20C)));

__asm("WPUA equ 020Ch");


typedef union {
    struct {
        unsigned WPUA0 :1;
        unsigned WPUA1 :1;
        unsigned WPUA2 :1;
        unsigned WPUA3 :1;
        unsigned WPUA4 :1;
        unsigned WPUA5 :1;
    };
    struct {
        unsigned WPUA :6;
    };
} WPUAbits_t;
extern volatile WPUAbits_t WPUAbits __attribute__((address(0x20C)));
# 4583 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char WPUB __attribute__((address(0x20D)));

__asm("WPUB equ 020Dh");


typedef union {
    struct {
        unsigned :4;
        unsigned WPUB4 :1;
        unsigned WPUB5 :1;
        unsigned WPUB6 :1;
        unsigned WPUB7 :1;
    };
} WPUBbits_t;
extern volatile WPUBbits_t WPUBbits __attribute__((address(0x20D)));
# 4622 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char WPUC __attribute__((address(0x20E)));

__asm("WPUC equ 020Eh");


typedef union {
    struct {
        unsigned WPUC0 :1;
        unsigned WPUC1 :1;
        unsigned WPUC2 :1;
        unsigned WPUC3 :1;
        unsigned WPUC4 :1;
        unsigned WPUC5 :1;
        unsigned WPUC6 :1;
        unsigned WPUC7 :1;
    };
    struct {
        unsigned WPUA :6;
    };
} WPUCbits_t;
extern volatile WPUCbits_t WPUCbits __attribute__((address(0x20E)));
# 4692 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SSP1BUF __attribute__((address(0x211)));

__asm("SSP1BUF equ 0211h");


extern volatile unsigned char SSPBUF __attribute__((address(0x211)));

__asm("SSPBUF equ 0211h");


typedef union {
    struct {
        unsigned SSP1BUF0 :1;
        unsigned SSP1BUF1 :1;
        unsigned SSP1BUF2 :1;
        unsigned SSP1BUF3 :1;
        unsigned SSP1BUF4 :1;
        unsigned SSP1BUF5 :1;
        unsigned SSP1BUF6 :1;
        unsigned SSP1BUF7 :1;
    };
    struct {
        unsigned BUF :8;
    };
    struct {
        unsigned BUF0 :1;
        unsigned BUF1 :1;
        unsigned BUF2 :1;
        unsigned BUF3 :1;
        unsigned BUF4 :1;
        unsigned BUF5 :1;
        unsigned BUF6 :1;
        unsigned BUF7 :1;
    };
    struct {
        unsigned SSP1BUF :8;
    };
} SSP1BUFbits_t;
extern volatile SSP1BUFbits_t SSP1BUFbits __attribute__((address(0x211)));
# 4823 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned SSP1BUF0 :1;
        unsigned SSP1BUF1 :1;
        unsigned SSP1BUF2 :1;
        unsigned SSP1BUF3 :1;
        unsigned SSP1BUF4 :1;
        unsigned SSP1BUF5 :1;
        unsigned SSP1BUF6 :1;
        unsigned SSP1BUF7 :1;
    };
    struct {
        unsigned BUF :8;
    };
    struct {
        unsigned BUF0 :1;
        unsigned BUF1 :1;
        unsigned BUF2 :1;
        unsigned BUF3 :1;
        unsigned BUF4 :1;
        unsigned BUF5 :1;
        unsigned BUF6 :1;
        unsigned BUF7 :1;
    };
    struct {
        unsigned SSP1BUF :8;
    };
} SSPBUFbits_t;
extern volatile SSPBUFbits_t SSPBUFbits __attribute__((address(0x211)));
# 4946 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SSP1ADD __attribute__((address(0x212)));

__asm("SSP1ADD equ 0212h");


extern volatile unsigned char SSPADD __attribute__((address(0x212)));

__asm("SSPADD equ 0212h");


typedef union {
    struct {
        unsigned SSP1ADD0 :1;
        unsigned SSP1ADD1 :1;
        unsigned SSP1ADD2 :1;
        unsigned SSP1ADD3 :1;
        unsigned SSP1ADD4 :1;
        unsigned SSP1ADD5 :1;
        unsigned SSP1ADD6 :1;
        unsigned SSP1ADD7 :1;
    };
    struct {
        unsigned ADD :8;
    };
    struct {
        unsigned ADD0 :1;
        unsigned ADD1 :1;
        unsigned ADD2 :1;
        unsigned ADD3 :1;
        unsigned ADD4 :1;
        unsigned ADD5 :1;
        unsigned ADD6 :1;
        unsigned ADD7 :1;
    };
    struct {
        unsigned SSP1ADD :8;
    };
} SSP1ADDbits_t;
extern volatile SSP1ADDbits_t SSP1ADDbits __attribute__((address(0x212)));
# 5077 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned SSP1ADD0 :1;
        unsigned SSP1ADD1 :1;
        unsigned SSP1ADD2 :1;
        unsigned SSP1ADD3 :1;
        unsigned SSP1ADD4 :1;
        unsigned SSP1ADD5 :1;
        unsigned SSP1ADD6 :1;
        unsigned SSP1ADD7 :1;
    };
    struct {
        unsigned ADD :8;
    };
    struct {
        unsigned ADD0 :1;
        unsigned ADD1 :1;
        unsigned ADD2 :1;
        unsigned ADD3 :1;
        unsigned ADD4 :1;
        unsigned ADD5 :1;
        unsigned ADD6 :1;
        unsigned ADD7 :1;
    };
    struct {
        unsigned SSP1ADD :8;
    };
} SSPADDbits_t;
extern volatile SSPADDbits_t SSPADDbits __attribute__((address(0x212)));
# 5200 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SSP1MSK __attribute__((address(0x213)));

__asm("SSP1MSK equ 0213h");


extern volatile unsigned char SSPMSK __attribute__((address(0x213)));

__asm("SSPMSK equ 0213h");


typedef union {
    struct {
        unsigned SSP1MSK0 :1;
        unsigned SSP1MSK1 :1;
        unsigned SSP1MSK2 :1;
        unsigned SSP1MSK3 :1;
        unsigned SSP1MSK4 :1;
        unsigned SSP1MSK5 :1;
        unsigned SSP1MSK6 :1;
        unsigned SSP1MSK7 :1;
    };
    struct {
        unsigned MSK :8;
    };
    struct {
        unsigned MSK0 :1;
        unsigned MSK1 :1;
        unsigned MSK2 :1;
        unsigned MSK3 :1;
        unsigned MSK4 :1;
        unsigned MSK5 :1;
        unsigned MSK6 :1;
        unsigned MSK7 :1;
    };
    struct {
        unsigned SSP1MSK :8;
    };
} SSP1MSKbits_t;
extern volatile SSP1MSKbits_t SSP1MSKbits __attribute__((address(0x213)));
# 5331 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned SSP1MSK0 :1;
        unsigned SSP1MSK1 :1;
        unsigned SSP1MSK2 :1;
        unsigned SSP1MSK3 :1;
        unsigned SSP1MSK4 :1;
        unsigned SSP1MSK5 :1;
        unsigned SSP1MSK6 :1;
        unsigned SSP1MSK7 :1;
    };
    struct {
        unsigned MSK :8;
    };
    struct {
        unsigned MSK0 :1;
        unsigned MSK1 :1;
        unsigned MSK2 :1;
        unsigned MSK3 :1;
        unsigned MSK4 :1;
        unsigned MSK5 :1;
        unsigned MSK6 :1;
        unsigned MSK7 :1;
    };
    struct {
        unsigned SSP1MSK :8;
    };
} SSPMSKbits_t;
extern volatile SSPMSKbits_t SSPMSKbits __attribute__((address(0x213)));
# 5454 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SSP1STAT __attribute__((address(0x214)));

__asm("SSP1STAT equ 0214h");


extern volatile unsigned char SSPSTAT __attribute__((address(0x214)));

__asm("SSPSTAT equ 0214h");


typedef union {
    struct {
        unsigned BF :1;
        unsigned UA :1;
        unsigned R_nW :1;
        unsigned S :1;
        unsigned P :1;
        unsigned D_nA :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
} SSP1STATbits_t;
extern volatile SSP1STATbits_t SSP1STATbits __attribute__((address(0x214)));
# 5519 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned BF :1;
        unsigned UA :1;
        unsigned R_nW :1;
        unsigned S :1;
        unsigned P :1;
        unsigned D_nA :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __attribute__((address(0x214)));
# 5576 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SSP1CON1 __attribute__((address(0x215)));

__asm("SSP1CON1 equ 0215h");


extern volatile unsigned char SSPCON __attribute__((address(0x215)));

__asm("SSPCON equ 0215h");

extern volatile unsigned char SSPCON1 __attribute__((address(0x215)));

__asm("SSPCON1 equ 0215h");

extern volatile unsigned char SSP1CON __attribute__((address(0x215)));

__asm("SSP1CON equ 0215h");


typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
} SSP1CON1bits_t;
extern volatile SSP1CON1bits_t SSP1CON1bits __attribute__((address(0x215)));
# 5657 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
} SSPCONbits_t;
extern volatile SSPCONbits_t SSPCONbits __attribute__((address(0x215)));
# 5719 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
} SSPCON1bits_t;
extern volatile SSPCON1bits_t SSPCON1bits __attribute__((address(0x215)));
# 5781 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
} SSP1CONbits_t;
extern volatile SSP1CONbits_t SSP1CONbits __attribute__((address(0x215)));
# 5846 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SSP1CON2 __attribute__((address(0x216)));

__asm("SSP1CON2 equ 0216h");


extern volatile unsigned char SSPCON2 __attribute__((address(0x216)));

__asm("SSPCON2 equ 0216h");


typedef union {
    struct {
        unsigned SEN :1;
        unsigned RSEN :1;
        unsigned PEN :1;
        unsigned RCEN :1;
        unsigned ACKEN :1;
        unsigned ACKDT :1;
        unsigned ACKSTAT :1;
        unsigned GCEN :1;
    };
} SSP1CON2bits_t;
extern volatile SSP1CON2bits_t SSP1CON2bits __attribute__((address(0x216)));
# 5911 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned SEN :1;
        unsigned RSEN :1;
        unsigned PEN :1;
        unsigned RCEN :1;
        unsigned ACKEN :1;
        unsigned ACKDT :1;
        unsigned ACKSTAT :1;
        unsigned GCEN :1;
    };
} SSPCON2bits_t;
extern volatile SSPCON2bits_t SSPCON2bits __attribute__((address(0x216)));
# 5968 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SSP1CON3 __attribute__((address(0x217)));

__asm("SSP1CON3 equ 0217h");


extern volatile unsigned char SSPCON3 __attribute__((address(0x217)));

__asm("SSPCON3 equ 0217h");


typedef union {
    struct {
        unsigned DHEN :1;
        unsigned AHEN :1;
        unsigned SBCDE :1;
        unsigned SDAHT :1;
        unsigned BOEN :1;
        unsigned SCIE :1;
        unsigned PCIE :1;
        unsigned ACKTIM :1;
    };
} SSP1CON3bits_t;
extern volatile SSP1CON3bits_t SSP1CON3bits __attribute__((address(0x217)));
# 6033 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned DHEN :1;
        unsigned AHEN :1;
        unsigned SBCDE :1;
        unsigned SDAHT :1;
        unsigned BOEN :1;
        unsigned SCIE :1;
        unsigned PCIE :1;
        unsigned ACKTIM :1;
    };
} SSPCON3bits_t;
extern volatile SSPCON3bits_t SSPCON3bits __attribute__((address(0x217)));
# 6090 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char ODCONA __attribute__((address(0x28C)));

__asm("ODCONA equ 028Ch");


typedef union {
    struct {
        unsigned ODA0 :1;
        unsigned ODA1 :1;
        unsigned ODA2 :1;
        unsigned :1;
        unsigned ODA4 :1;
        unsigned ODA5 :1;
    };
} ODCONAbits_t;
extern volatile ODCONAbits_t ODCONAbits __attribute__((address(0x28C)));
# 6135 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char ODCONB __attribute__((address(0x28D)));

__asm("ODCONB equ 028Dh");


typedef union {
    struct {
        unsigned :4;
        unsigned ODB4 :1;
        unsigned ODB5 :1;
        unsigned ODB6 :1;
        unsigned ODB7 :1;
    };
} ODCONBbits_t;
extern volatile ODCONBbits_t ODCONBbits __attribute__((address(0x28D)));
# 6174 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char ODCONC __attribute__((address(0x28E)));

__asm("ODCONC equ 028Eh");


typedef union {
    struct {
        unsigned ODC0 :1;
        unsigned ODC1 :1;
        unsigned ODC2 :1;
        unsigned ODC3 :1;
        unsigned ODC4 :1;
        unsigned ODC5 :1;
        unsigned ODC6 :1;
        unsigned ODC7 :1;
    };
} ODCONCbits_t;
extern volatile ODCONCbits_t ODCONCbits __attribute__((address(0x28E)));
# 6236 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short CCPR1 __attribute__((address(0x291)));

__asm("CCPR1 equ 0291h");




extern volatile unsigned char CCPR1L __attribute__((address(0x291)));

__asm("CCPR1L equ 0291h");


typedef union {
    struct {
        unsigned RL :8;
    };
} CCPR1Lbits_t;
extern volatile CCPR1Lbits_t CCPR1Lbits __attribute__((address(0x291)));
# 6263 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CCPR1H __attribute__((address(0x292)));

__asm("CCPR1H equ 0292h");


typedef union {
    struct {
        unsigned RH :8;
    };
} CCPR1Hbits_t;
extern volatile CCPR1Hbits_t CCPR1Hbits __attribute__((address(0x292)));
# 6283 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CCP1CON __attribute__((address(0x293)));

__asm("CCP1CON equ 0293h");


typedef union {
    struct {
        unsigned MODE :4;
        unsigned FMT :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
    };
    struct {
        unsigned CCP1MODE :4;
        unsigned CCP1FMT :1;
        unsigned CCP1OUT :1;
        unsigned :1;
        unsigned CCP1EN :1;
    };
    struct {
        unsigned CCP1MODE0 :1;
        unsigned CCP1MODE1 :1;
        unsigned CCP1MODE2 :1;
        unsigned CCP1MODE3 :1;
    };
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __attribute__((address(0x293)));
# 6401 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CCP1CAP __attribute__((address(0x294)));

__asm("CCP1CAP equ 0294h");


typedef union {
    struct {
        unsigned CTS :8;
    };
    struct {
        unsigned CTS0 :1;
        unsigned CTS1 :1;
        unsigned CTS2 :1;
    };
    struct {
        unsigned CCP1CTS :8;
    };
    struct {
        unsigned CCP1CTS0 :1;
        unsigned CCP1CTS1 :1;
        unsigned CCP1CTS2 :1;
    };
} CCP1CAPbits_t;
extern volatile CCP1CAPbits_t CCP1CAPbits __attribute__((address(0x294)));
# 6469 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short CCPR2 __attribute__((address(0x298)));

__asm("CCPR2 equ 0298h");




extern volatile unsigned char CCPR2L __attribute__((address(0x298)));

__asm("CCPR2L equ 0298h");


typedef union {
    struct {
        unsigned RL :8;
    };
} CCPR2Lbits_t;
extern volatile CCPR2Lbits_t CCPR2Lbits __attribute__((address(0x298)));
# 6496 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CCPR2H __attribute__((address(0x299)));

__asm("CCPR2H equ 0299h");


typedef union {
    struct {
        unsigned RH :8;
    };
} CCPR2Hbits_t;
extern volatile CCPR2Hbits_t CCPR2Hbits __attribute__((address(0x299)));
# 6516 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CCP2CON __attribute__((address(0x29A)));

__asm("CCP2CON equ 029Ah");


typedef union {
    struct {
        unsigned MODE :4;
        unsigned FMT :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
    };
    struct {
        unsigned CCP2MODE :4;
        unsigned CCP2FMT :1;
        unsigned CCP2OUT :1;
        unsigned :1;
        unsigned CCP2EN :1;
    };
    struct {
        unsigned CCP2MODE0 :1;
        unsigned CCP2MODE1 :1;
        unsigned CCP2MODE2 :1;
        unsigned CCP2MODE3 :1;
    };
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __attribute__((address(0x29A)));
# 6634 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CCP2CAP __attribute__((address(0x29B)));

__asm("CCP2CAP equ 029Bh");


typedef union {
    struct {
        unsigned CTS :8;
    };
    struct {
        unsigned CTS0 :1;
        unsigned CTS1 :1;
        unsigned CTS2 :1;
    };
    struct {
        unsigned CCP2CTS :8;
    };
    struct {
        unsigned CCP2CTS0 :1;
        unsigned CCP2CTS1 :1;
        unsigned CCP2CTS2 :1;
    };
} CCP2CAPbits_t;
extern volatile CCP2CAPbits_t CCP2CAPbits __attribute__((address(0x29B)));
# 6702 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CCPTMRS __attribute__((address(0x29E)));

__asm("CCPTMRS equ 029Eh");


typedef union {
    struct {
        unsigned CCP1TSEL :2;
        unsigned CCP2TSEL :2;
        unsigned P3TSEL :2;
        unsigned P4TSEL :2;
    };
    struct {
        unsigned CCP1TSEL0 :1;
        unsigned CCP1TSEL1 :1;
        unsigned CCP2TSEL0 :1;
        unsigned CCP2TSEL1 :1;
        unsigned P3TSEL0 :1;
        unsigned P3TSEL1 :1;
        unsigned P4TSEL0 :1;
        unsigned P4TSEL1 :1;
    };
} CCPTMRSbits_t;
extern volatile CCPTMRSbits_t CCPTMRSbits __attribute__((address(0x29E)));
# 6790 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SLRCONA __attribute__((address(0x30C)));

__asm("SLRCONA equ 030Ch");


typedef union {
    struct {
        unsigned SLRA0 :1;
        unsigned SLRA1 :1;
        unsigned SLRA2 :1;
        unsigned :1;
        unsigned SLRA4 :1;
        unsigned SLRA5 :1;
    };
} SLRCONAbits_t;
extern volatile SLRCONAbits_t SLRCONAbits __attribute__((address(0x30C)));
# 6835 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SLRCONB __attribute__((address(0x30D)));

__asm("SLRCONB equ 030Dh");


typedef union {
    struct {
        unsigned :4;
        unsigned SLRB4 :1;
        unsigned SLRB5 :1;
        unsigned SLRB6 :1;
        unsigned SLRB7 :1;
    };
} SLRCONBbits_t;
extern volatile SLRCONBbits_t SLRCONBbits __attribute__((address(0x30D)));
# 6874 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SLRCONC __attribute__((address(0x30E)));

__asm("SLRCONC equ 030Eh");


typedef union {
    struct {
        unsigned SLRC0 :1;
        unsigned SLRC1 :1;
        unsigned SLRC2 :1;
        unsigned SLRC3 :1;
        unsigned SLRC4 :1;
        unsigned SLRC5 :1;
        unsigned SLRC6 :1;
        unsigned SLRC7 :1;
    };
} SLRCONCbits_t;
extern volatile SLRCONCbits_t SLRCONCbits __attribute__((address(0x30E)));
# 6936 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char INLVLA __attribute__((address(0x38C)));

__asm("INLVLA equ 038Ch");


typedef union {
    struct {
        unsigned INLVLA0 :1;
        unsigned INLVLA1 :1;
        unsigned INLVLA2 :1;
        unsigned INLVLA3 :1;
        unsigned INLVLA4 :1;
        unsigned INLVLA5 :1;
    };
} INLVLAbits_t;
extern volatile INLVLAbits_t INLVLAbits __attribute__((address(0x38C)));
# 6986 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char INLVLB __attribute__((address(0x38D)));

__asm("INLVLB equ 038Dh");


typedef union {
    struct {
        unsigned :4;
        unsigned INLVLB4 :1;
        unsigned INLVLB5 :1;
        unsigned INLVLB6 :1;
        unsigned INLVLB7 :1;
    };
} INLVLBbits_t;
extern volatile INLVLBbits_t INLVLBbits __attribute__((address(0x38D)));
# 7025 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char INLVLC __attribute__((address(0x38E)));

__asm("INLVLC equ 038Eh");


typedef union {
    struct {
        unsigned INLVLC0 :1;
        unsigned INLVLC1 :1;
        unsigned INLVLC2 :1;
        unsigned INLVLC3 :1;
        unsigned INLVLC4 :1;
        unsigned INLVLC5 :1;
        unsigned INLVLC6 :1;
        unsigned INLVLC7 :1;
    };
} INLVLCbits_t;
extern volatile INLVLCbits_t INLVLCbits __attribute__((address(0x38E)));
# 7087 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char IOCAP __attribute__((address(0x391)));

__asm("IOCAP equ 0391h");


typedef union {
    struct {
        unsigned IOCAP0 :1;
        unsigned IOCAP1 :1;
        unsigned IOCAP2 :1;
        unsigned IOCAP3 :1;
        unsigned IOCAP4 :1;
        unsigned IOCAP5 :1;
    };
    struct {
        unsigned IOCAP :6;
    };
} IOCAPbits_t;
extern volatile IOCAPbits_t IOCAPbits __attribute__((address(0x391)));
# 7145 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char IOCAN __attribute__((address(0x392)));

__asm("IOCAN equ 0392h");


typedef union {
    struct {
        unsigned IOCAN0 :1;
        unsigned IOCAN1 :1;
        unsigned IOCAN2 :1;
        unsigned IOCAN3 :1;
        unsigned IOCAN4 :1;
        unsigned IOCAN5 :1;
    };
    struct {
        unsigned IOCAN :6;
    };
} IOCANbits_t;
extern volatile IOCANbits_t IOCANbits __attribute__((address(0x392)));
# 7203 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char IOCAF __attribute__((address(0x393)));

__asm("IOCAF equ 0393h");


typedef union {
    struct {
        unsigned IOCAF0 :1;
        unsigned IOCAF1 :1;
        unsigned IOCAF2 :1;
        unsigned IOCAF3 :1;
        unsigned IOCAF4 :1;
        unsigned IOCAF5 :1;
    };
    struct {
        unsigned IOCAF :6;
    };
} IOCAFbits_t;
extern volatile IOCAFbits_t IOCAFbits __attribute__((address(0x393)));
# 7261 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char IOCBP __attribute__((address(0x394)));

__asm("IOCBP equ 0394h");


typedef union {
    struct {
        unsigned :4;
        unsigned IOCBP4 :1;
        unsigned IOCBP5 :1;
        unsigned IOCBP6 :1;
        unsigned IOCBP7 :1;
    };
} IOCBPbits_t;
extern volatile IOCBPbits_t IOCBPbits __attribute__((address(0x394)));
# 7300 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char IOCBN __attribute__((address(0x395)));

__asm("IOCBN equ 0395h");


typedef union {
    struct {
        unsigned :4;
        unsigned IOCBN4 :1;
        unsigned IOCBN5 :1;
        unsigned IOCBN6 :1;
        unsigned IOCBN7 :1;
    };
} IOCBNbits_t;
extern volatile IOCBNbits_t IOCBNbits __attribute__((address(0x395)));
# 7339 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char IOCBF __attribute__((address(0x396)));

__asm("IOCBF equ 0396h");


typedef union {
    struct {
        unsigned :4;
        unsigned IOCBF4 :1;
        unsigned IOCBF5 :1;
        unsigned IOCBF6 :1;
        unsigned IOCBF7 :1;
    };
} IOCBFbits_t;
extern volatile IOCBFbits_t IOCBFbits __attribute__((address(0x396)));
# 7378 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char IOCCP __attribute__((address(0x397)));

__asm("IOCCP equ 0397h");


typedef union {
    struct {
        unsigned IOCCP0 :1;
        unsigned IOCCP1 :1;
        unsigned IOCCP2 :1;
        unsigned IOCCP3 :1;
        unsigned IOCCP4 :1;
        unsigned IOCCP5 :1;
        unsigned IOCCP6 :1;
        unsigned IOCCP7 :1;
    };
} IOCCPbits_t;
extern volatile IOCCPbits_t IOCCPbits __attribute__((address(0x397)));
# 7440 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char IOCCN __attribute__((address(0x398)));

__asm("IOCCN equ 0398h");


typedef union {
    struct {
        unsigned IOCCN0 :1;
        unsigned IOCCN1 :1;
        unsigned IOCCN2 :1;
        unsigned IOCCN3 :1;
        unsigned IOCCN4 :1;
        unsigned IOCCN5 :1;
        unsigned IOCCN6 :1;
        unsigned IOCCN7 :1;
    };
} IOCCNbits_t;
extern volatile IOCCNbits_t IOCCNbits __attribute__((address(0x398)));
# 7502 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char IOCCF __attribute__((address(0x399)));

__asm("IOCCF equ 0399h");


typedef union {
    struct {
        unsigned IOCCF0 :1;
        unsigned IOCCF1 :1;
        unsigned IOCCF2 :1;
        unsigned IOCCF3 :1;
        unsigned IOCCF4 :1;
        unsigned IOCCF5 :1;
        unsigned IOCCF6 :1;
        unsigned IOCCF7 :1;
    };
} IOCCFbits_t;
extern volatile IOCCFbits_t IOCCFbits __attribute__((address(0x399)));
# 7564 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char HIDRVC __attribute__((address(0x40E)));

__asm("HIDRVC equ 040Eh");


typedef union {
    struct {
        unsigned :4;
        unsigned HIDC4 :1;
        unsigned HIDC5 :1;
    };
} HIDRVCbits_t;
extern volatile HIDRVCbits_t HIDRVCbits __attribute__((address(0x40E)));
# 7591 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T4TMR __attribute__((address(0x413)));

__asm("T4TMR equ 0413h");


extern volatile unsigned char TMR4 __attribute__((address(0x413)));

__asm("TMR4 equ 0413h");


typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR4 :8;
    };
} T4TMRbits_t;
extern volatile T4TMRbits_t T4TMRbits __attribute__((address(0x413)));
# 7622 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR4 :8;
    };
} TMR4bits_t;
extern volatile TMR4bits_t TMR4bits __attribute__((address(0x413)));
# 7645 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T4PR __attribute__((address(0x414)));

__asm("T4PR equ 0414h");


extern volatile unsigned char PR4 __attribute__((address(0x414)));

__asm("PR4 equ 0414h");


typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned T4PR :8;
    };
} T4PRbits_t;
extern volatile T4PRbits_t T4PRbits __attribute__((address(0x414)));
# 7676 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned T4PR :8;
    };
} PR4bits_t;
extern volatile PR4bits_t PR4bits __attribute__((address(0x414)));
# 7699 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T4CON __attribute__((address(0x415)));

__asm("T4CON equ 0415h");


typedef union {
    struct {
        unsigned OUTPS :4;
        unsigned CKPS :3;
        unsigned ON :1;
    };
    struct {
        unsigned OUTPS0 :1;
        unsigned OUTPS1 :1;
        unsigned OUTPS2 :1;
        unsigned OUTPS3 :1;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
        unsigned CKPS2 :1;
    };
    struct {
        unsigned T4OUTPS :4;
        unsigned T4CKPS :3;
        unsigned T4ON :1;
    };
    struct {
        unsigned T4OUTPS0 :1;
        unsigned T4OUTPS1 :1;
        unsigned T4OUTPS2 :1;
        unsigned T4OUTPS3 :1;
        unsigned T4CKPS0 :1;
        unsigned T4CKPS1 :1;
        unsigned T4CKPS2 :1;
        unsigned TMR4ON :1;
    };
} T4CONbits_t;
extern volatile T4CONbits_t T4CONbits __attribute__((address(0x415)));
# 7845 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T4HLT __attribute__((address(0x416)));

__asm("T4HLT equ 0416h");


typedef union {
    struct {
        unsigned MODE :5;
        unsigned CKSYNC :1;
        unsigned CKPOL :1;
        unsigned PSYNC :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
        unsigned MODE4 :1;
    };
    struct {
        unsigned T4MODE :5;
        unsigned T4CKSYNC :1;
        unsigned T4CKPOL :1;
        unsigned T4PSYNC :1;
    };
    struct {
        unsigned T4MODE0 :1;
        unsigned T4MODE1 :1;
        unsigned T4MODE2 :1;
        unsigned T4MODE3 :1;
        unsigned T4MODE4 :1;
    };
} T4HLTbits_t;
extern volatile T4HLTbits_t T4HLTbits __attribute__((address(0x416)));
# 7973 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T4CLKCON __attribute__((address(0x417)));

__asm("T4CLKCON equ 0417h");


typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
    struct {
        unsigned T4CS :4;
    };
    struct {
        unsigned T4CS0 :1;
        unsigned T4CS1 :1;
        unsigned T4CS2 :1;
        unsigned T4CS3 :1;
    };
} T4CLKCONbits_t;
extern volatile T4CLKCONbits_t T4CLKCONbits __attribute__((address(0x417)));
# 8053 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T4RST __attribute__((address(0x418)));

__asm("T4RST equ 0418h");


typedef union {
    struct {
        unsigned RSEL :4;
    };
    struct {
        unsigned RSEL0 :1;
        unsigned RSEL1 :1;
        unsigned RSEL2 :1;
        unsigned RSEL3 :1;
    };
    struct {
        unsigned T4RSEL :4;
    };
    struct {
        unsigned T4RSEL0 :1;
        unsigned T4RSEL1 :1;
        unsigned T4RSEL2 :1;
        unsigned T4RSEL3 :1;
    };
} T4RSTbits_t;
extern volatile T4RSTbits_t T4RSTbits __attribute__((address(0x418)));
# 8133 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T6TMR __attribute__((address(0x41A)));

__asm("T6TMR equ 041Ah");


extern volatile unsigned char TMR6 __attribute__((address(0x41A)));

__asm("TMR6 equ 041Ah");


typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR6 :8;
    };
} T6TMRbits_t;
extern volatile T6TMRbits_t T6TMRbits __attribute__((address(0x41A)));
# 8164 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR6 :8;
    };
} TMR6bits_t;
extern volatile TMR6bits_t TMR6bits __attribute__((address(0x41A)));
# 8187 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T6PR __attribute__((address(0x41B)));

__asm("T6PR equ 041Bh");


extern volatile unsigned char PR6 __attribute__((address(0x41B)));

__asm("PR6 equ 041Bh");


typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned T6PR :8;
    };
} T6PRbits_t;
extern volatile T6PRbits_t T6PRbits __attribute__((address(0x41B)));
# 8218 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned T6PR :8;
    };
} PR6bits_t;
extern volatile PR6bits_t PR6bits __attribute__((address(0x41B)));
# 8241 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T6CON __attribute__((address(0x41C)));

__asm("T6CON equ 041Ch");


typedef union {
    struct {
        unsigned OUTPS :4;
        unsigned CKPS :3;
        unsigned ON :1;
    };
    struct {
        unsigned OUTPS0 :1;
        unsigned OUTPS1 :1;
        unsigned OUTPS2 :1;
        unsigned OUTPS3 :1;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
        unsigned CKPS2 :1;
    };
    struct {
        unsigned T6OUTPS :4;
        unsigned T6CKPS :3;
        unsigned T6ON :1;
    };
    struct {
        unsigned T6OUTPS0 :1;
        unsigned T6OUTPS1 :1;
        unsigned T6OUTPS2 :1;
        unsigned T6OUTPS3 :1;
        unsigned T6CKPS0 :1;
        unsigned T6CKPS1 :1;
        unsigned T6CKPS2 :1;
        unsigned TMR6ON :1;
    };
} T6CONbits_t;
extern volatile T6CONbits_t T6CONbits __attribute__((address(0x41C)));
# 8387 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T6HLT __attribute__((address(0x41D)));

__asm("T6HLT equ 041Dh");


typedef union {
    struct {
        unsigned MODE :5;
        unsigned CKSYNC :1;
        unsigned CKPOL :1;
        unsigned PSYNC :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
        unsigned MODE4 :1;
    };
    struct {
        unsigned T6MODE :5;
        unsigned T6CKSYNC :1;
        unsigned T6CKPOL :1;
        unsigned T6PSYNC :1;
    };
    struct {
        unsigned T6MODE0 :1;
        unsigned T6MODE1 :1;
        unsigned T6MODE2 :1;
        unsigned T6MODE3 :1;
        unsigned T6MODE4 :1;
    };
} T6HLTbits_t;
extern volatile T6HLTbits_t T6HLTbits __attribute__((address(0x41D)));
# 8515 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T6CLKCON __attribute__((address(0x41E)));

__asm("T6CLKCON equ 041Eh");


typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
    struct {
        unsigned T6CS :4;
    };
    struct {
        unsigned T6CS0 :1;
        unsigned T6CS1 :1;
        unsigned T6CS2 :1;
        unsigned T6CS3 :1;
    };
} T6CLKCONbits_t;
extern volatile T6CLKCONbits_t T6CLKCONbits __attribute__((address(0x41E)));
# 8595 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T6RST __attribute__((address(0x41F)));

__asm("T6RST equ 041Fh");


typedef union {
    struct {
        unsigned RSEL :4;
    };
    struct {
        unsigned RSEL0 :1;
        unsigned RSEL1 :1;
        unsigned RSEL2 :1;
        unsigned RSEL3 :1;
    };
    struct {
        unsigned T6RSEL :4;
    };
    struct {
        unsigned T6RSEL0 :1;
        unsigned T6RSEL1 :1;
        unsigned T6RSEL2 :1;
        unsigned T6RSEL3 :1;
    };
} T6RSTbits_t;
extern volatile T6RSTbits_t T6RSTbits __attribute__((address(0x41F)));
# 8675 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char TMR3L __attribute__((address(0x493)));

__asm("TMR3L equ 0493h");


typedef union {
    struct {
        unsigned TMR3L :8;
    };
} TMR3Lbits_t;
extern volatile TMR3Lbits_t TMR3Lbits __attribute__((address(0x493)));
# 8695 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char TMR3H __attribute__((address(0x494)));

__asm("TMR3H equ 0494h");


typedef union {
    struct {
        unsigned TMR3H :8;
    };
} TMR3Hbits_t;
extern volatile TMR3Hbits_t TMR3Hbits __attribute__((address(0x494)));
# 8715 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T3CON __attribute__((address(0x495)));

__asm("T3CON equ 0495h");


typedef union {
    struct {
        unsigned TMR3ON :1;
        unsigned :1;
        unsigned T3SYNC :1;
        unsigned :1;
        unsigned T3CKPS :2;
        unsigned TMR3CS :2;
    };
    struct {
        unsigned :4;
        unsigned T3CKPS0 :1;
        unsigned T3CKPS1 :1;
        unsigned TMR3CS0 :1;
        unsigned TMR3CS1 :1;
    };
} T3CONbits_t;
extern volatile T3CONbits_t T3CONbits __attribute__((address(0x495)));
# 8782 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T3GCON __attribute__((address(0x496)));

__asm("T3GCON equ 0496h");


typedef union {
    struct {
        unsigned T3GSS :2;
        unsigned T3GVAL :1;
        unsigned T3GGO_nDONE :1;
        unsigned T3GSPM :1;
        unsigned T3GTM :1;
        unsigned T3GPOL :1;
        unsigned TMR3GE :1;
    };
    struct {
        unsigned T3GSS0 :1;
        unsigned T3GSS1 :1;
    };
} T3GCONbits_t;
extern volatile T3GCONbits_t T3GCONbits __attribute__((address(0x496)));
# 8852 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char TMR5L __attribute__((address(0x49A)));

__asm("TMR5L equ 049Ah");


typedef union {
    struct {
        unsigned TMR5L :8;
    };
} TMR5Lbits_t;
extern volatile TMR5Lbits_t TMR5Lbits __attribute__((address(0x49A)));
# 8872 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char TMR5H __attribute__((address(0x49B)));

__asm("TMR5H equ 049Bh");


typedef union {
    struct {
        unsigned TMR5H :8;
    };
} TMR5Hbits_t;
extern volatile TMR5Hbits_t TMR5Hbits __attribute__((address(0x49B)));
# 8892 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T5CON __attribute__((address(0x49C)));

__asm("T5CON equ 049Ch");


typedef union {
    struct {
        unsigned TMR5ON :1;
        unsigned :1;
        unsigned T5SYNC :1;
        unsigned :1;
        unsigned T5CKPS :2;
        unsigned TMR5CS :2;
    };
    struct {
        unsigned :4;
        unsigned T5CKPS0 :1;
        unsigned T5CKPS1 :1;
        unsigned TMR5CS0 :1;
        unsigned TMR5CS1 :1;
    };
} T5CONbits_t;
extern volatile T5CONbits_t T5CONbits __attribute__((address(0x49C)));
# 8959 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T5GCON __attribute__((address(0x49D)));

__asm("T5GCON equ 049Dh");


typedef union {
    struct {
        unsigned T5GSS :2;
        unsigned T5GVAL :1;
        unsigned T5GGO_nDONE :1;
        unsigned T5GSPM :1;
        unsigned T5GTM :1;
        unsigned T5GPOL :1;
        unsigned TMR5GE :1;
    };
    struct {
        unsigned T5GSS0 :1;
        unsigned T5GSS1 :1;
    };
} T5GCONbits_t;
extern volatile T5GCONbits_t T5GCONbits __attribute__((address(0x49D)));
# 9029 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short PID1SET __attribute__((address(0x58C)));

__asm("PID1SET equ 058Ch");




extern volatile unsigned char PID1SETL __attribute__((address(0x58C)));

__asm("PID1SETL equ 058Ch");


typedef union {
    struct {
        unsigned PID1SET0 :1;
        unsigned PID1SET1 :1;
        unsigned PID1SET2 :1;
        unsigned PID1SET3 :1;
        unsigned PID1SET4 :1;
        unsigned PID1SET5 :1;
        unsigned PID1SET6 :1;
        unsigned PID1SET7 :1;
    };
    struct {
        unsigned SET0 :1;
        unsigned SET1 :1;
        unsigned SET2 :1;
        unsigned SET3 :1;
        unsigned SET4 :1;
        unsigned SET5 :1;
        unsigned SET6 :1;
        unsigned SET7 :1;
    };
} PID1SETLbits_t;
extern volatile PID1SETLbits_t PID1SETLbits __attribute__((address(0x58C)));
# 9148 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PID1SETH __attribute__((address(0x58D)));

__asm("PID1SETH equ 058Dh");


typedef union {
    struct {
        unsigned PID1SET8 :1;
        unsigned PID1SET9 :1;
        unsigned PID1SET10 :1;
        unsigned PID1SET11 :1;
        unsigned PID1SET12 :1;
        unsigned PID1SET13 :1;
        unsigned PID1SET14 :1;
        unsigned PID1SET15 :1;
    };
    struct {
        unsigned SET8 :1;
        unsigned SET9 :1;
        unsigned SET10 :1;
        unsigned SET11 :1;
        unsigned SET12 :1;
        unsigned SET13 :1;
        unsigned SET14 :1;
        unsigned SET15 :1;
    };
} PID1SETHbits_t;
extern volatile PID1SETHbits_t PID1SETHbits __attribute__((address(0x58D)));
# 9260 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short PID1IN __attribute__((address(0x58E)));

__asm("PID1IN equ 058Eh");




extern volatile unsigned char PID1INL __attribute__((address(0x58E)));

__asm("PID1INL equ 058Eh");


typedef union {
    struct {
        unsigned PID1IN0 :1;
        unsigned PID1IN1 :1;
        unsigned PID1IN2 :1;
        unsigned PID1IN3 :1;
        unsigned PID1IN4 :1;
        unsigned PID1IN5 :1;
        unsigned PID1IN6 :1;
        unsigned PID1IN7 :1;
    };
    struct {
        unsigned IN0 :1;
        unsigned IN1 :1;
        unsigned IN2 :1;
        unsigned IN3 :1;
        unsigned IN4 :1;
        unsigned IN5 :1;
        unsigned IN6 :1;
        unsigned IN7 :1;
    };
} PID1INLbits_t;
extern volatile PID1INLbits_t PID1INLbits __attribute__((address(0x58E)));
# 9379 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PID1INH __attribute__((address(0x58F)));

__asm("PID1INH equ 058Fh");


typedef union {
    struct {
        unsigned PID1IN8 :1;
        unsigned PID1IN9 :1;
        unsigned PID1IN10 :1;
        unsigned PID1IN11 :1;
        unsigned PID1IN12 :1;
        unsigned PID1IN13 :1;
        unsigned PID1IN14 :1;
        unsigned PID1IN15 :1;
    };
    struct {
        unsigned IN8 :1;
        unsigned IN9 :1;
        unsigned IN10 :1;
        unsigned IN11 :1;
        unsigned IN12 :1;
        unsigned IN13 :1;
        unsigned IN14 :1;
        unsigned IN15 :1;
    };
} PID1INHbits_t;
extern volatile PID1INHbits_t PID1INHbits __attribute__((address(0x58F)));
# 9491 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short PID1K1 __attribute__((address(0x590)));

__asm("PID1K1 equ 0590h");




extern volatile unsigned char PID1K1L __attribute__((address(0x590)));

__asm("PID1K1L equ 0590h");


typedef union {
    struct {
        unsigned PID1K10 :1;
        unsigned PID1K11 :1;
        unsigned PID1K12 :1;
        unsigned PID1K13 :1;
        unsigned PID1K14 :1;
        unsigned PID1K15 :1;
        unsigned PID1K16 :1;
        unsigned PID1K17 :1;
    };
    struct {
        unsigned K10 :1;
        unsigned K11 :1;
        unsigned K12 :1;
        unsigned K13 :1;
        unsigned K14 :1;
        unsigned K15 :1;
        unsigned K16 :1;
        unsigned K17 :1;
    };
} PID1K1Lbits_t;
extern volatile PID1K1Lbits_t PID1K1Lbits __attribute__((address(0x590)));
# 9610 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PID1K1H __attribute__((address(0x591)));

__asm("PID1K1H equ 0591h");


typedef union {
    struct {
        unsigned PID1K18 :1;
        unsigned PID1K19 :1;
        unsigned PID1K110 :1;
        unsigned PID1K111 :1;
        unsigned PID1K112 :1;
        unsigned PID1K113 :1;
        unsigned PID1K114 :1;
        unsigned PID1K115 :1;
    };
    struct {
        unsigned K18 :1;
        unsigned K19 :1;
        unsigned K110 :1;
        unsigned K111 :1;
        unsigned K112 :1;
        unsigned K113 :1;
        unsigned K114 :1;
        unsigned K115 :1;
    };
} PID1K1Hbits_t;
extern volatile PID1K1Hbits_t PID1K1Hbits __attribute__((address(0x591)));
# 9722 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short PID1K2 __attribute__((address(0x592)));

__asm("PID1K2 equ 0592h");




extern volatile unsigned char PID1K2L __attribute__((address(0x592)));

__asm("PID1K2L equ 0592h");


typedef union {
    struct {
        unsigned PID1K20 :1;
        unsigned PID1K21 :1;
        unsigned PID1K22 :1;
        unsigned PID1K23 :1;
        unsigned PID1K24 :1;
        unsigned PID1K25 :1;
        unsigned PID1K26 :1;
        unsigned PID1K27 :1;
    };
    struct {
        unsigned K20 :1;
        unsigned K21 :1;
        unsigned K22 :1;
        unsigned K23 :1;
        unsigned K24 :1;
        unsigned K25 :1;
        unsigned K26 :1;
        unsigned K27 :1;
    };
} PID1K2Lbits_t;
extern volatile PID1K2Lbits_t PID1K2Lbits __attribute__((address(0x592)));
# 9841 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PID1K2H __attribute__((address(0x593)));

__asm("PID1K2H equ 0593h");


typedef union {
    struct {
        unsigned PID1K28 :1;
        unsigned PID1K29 :1;
        unsigned PID1K210 :1;
        unsigned PID1K211 :1;
        unsigned PID1K212 :1;
        unsigned PID1K213 :1;
        unsigned PID1K214 :1;
        unsigned PID1K215 :1;
    };
    struct {
        unsigned K28 :1;
        unsigned K29 :1;
        unsigned K210 :1;
        unsigned K211 :1;
        unsigned K212 :1;
        unsigned K213 :1;
        unsigned K214 :1;
        unsigned K215 :1;
    };
} PID1K2Hbits_t;
extern volatile PID1K2Hbits_t PID1K2Hbits __attribute__((address(0x593)));
# 9953 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short PID1K3 __attribute__((address(0x594)));

__asm("PID1K3 equ 0594h");




extern volatile unsigned char PID1K3L __attribute__((address(0x594)));

__asm("PID1K3L equ 0594h");


typedef union {
    struct {
        unsigned PID1K30 :1;
        unsigned PID1K31 :1;
        unsigned PID1K32 :1;
        unsigned PID1K33 :1;
        unsigned PID1K34 :1;
        unsigned PID1K35 :1;
        unsigned PID1K36 :1;
        unsigned PID1K37 :1;
    };
    struct {
        unsigned K30 :1;
        unsigned K31 :1;
        unsigned K32 :1;
        unsigned K33 :1;
        unsigned K34 :1;
        unsigned K35 :1;
        unsigned K36 :1;
        unsigned K37 :1;
    };
} PID1K3Lbits_t;
extern volatile PID1K3Lbits_t PID1K3Lbits __attribute__((address(0x594)));
# 10072 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PID1K3H __attribute__((address(0x595)));

__asm("PID1K3H equ 0595h");


typedef union {
    struct {
        unsigned PID1K38 :1;
        unsigned PID1K39 :1;
        unsigned PID1K310 :1;
        unsigned PID1K311 :1;
        unsigned PID1K312 :1;
        unsigned PID1K313 :1;
        unsigned PID1K314 :1;
        unsigned PID1K315 :1;
    };
    struct {
        unsigned K38 :1;
        unsigned K39 :1;
        unsigned K310 :1;
        unsigned K311 :1;
        unsigned K312 :1;
        unsigned K313 :1;
        unsigned K314 :1;
        unsigned K315 :1;
    };
} PID1K3Hbits_t;
extern volatile PID1K3Hbits_t PID1K3Hbits __attribute__((address(0x595)));
# 10185 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
__asm("PID1OUT equ 0596h");




extern volatile unsigned char PID1OUTLL __attribute__((address(0x596)));

__asm("PID1OUTLL equ 0596h");


typedef union {
    struct {
        unsigned PID1OUT0 :1;
        unsigned PID1OUT1 :1;
        unsigned PID1OUT2 :1;
        unsigned PID1OUT3 :1;
        unsigned PID1OUT4 :1;
        unsigned PID1OUT5 :1;
        unsigned PID1OUT6 :1;
        unsigned PID1OUT7 :1;
    };
    struct {
        unsigned OUT0 :1;
        unsigned OUT1 :1;
        unsigned OUT2 :1;
        unsigned OUT3 :1;
        unsigned OUT4 :1;
        unsigned OUT5 :1;
        unsigned OUT6 :1;
        unsigned OUT7 :1;
    };
} PID1OUTLLbits_t;
extern volatile PID1OUTLLbits_t PID1OUTLLbits __attribute__((address(0x596)));
# 10302 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PID1OUTLH __attribute__((address(0x597)));

__asm("PID1OUTLH equ 0597h");


typedef union {
    struct {
        unsigned PID1OUT8 :1;
        unsigned PID1OUT9 :1;
        unsigned PID1OUT10 :1;
        unsigned PID1OUT11 :1;
        unsigned PID1OUT12 :1;
        unsigned PID1OUT13 :1;
        unsigned PID1OUT14 :1;
        unsigned PID1OUT15 :1;
    };
    struct {
        unsigned OUT8 :1;
        unsigned OUT9 :1;
        unsigned OUT10 :1;
        unsigned OUT11 :1;
        unsigned OUT12 :1;
        unsigned OUT13 :1;
        unsigned OUT14 :1;
        unsigned OUT15 :1;
    };
} PID1OUTLHbits_t;
extern volatile PID1OUTLHbits_t PID1OUTLHbits __attribute__((address(0x597)));
# 10414 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PID1OUTHL __attribute__((address(0x598)));

__asm("PID1OUTHL equ 0598h");


typedef union {
    struct {
        unsigned PID1OUT16 :1;
        unsigned PID1OUT17 :1;
        unsigned PID1OUT18 :1;
        unsigned PID1OUT19 :1;
        unsigned PID1OUT20 :1;
        unsigned PID1OUT21 :1;
        unsigned PID1OUT22 :1;
        unsigned PID1OUT23 :1;
    };
    struct {
        unsigned OUT16 :1;
        unsigned OUT17 :1;
        unsigned OUT18 :1;
        unsigned OUT19 :1;
        unsigned OUT20 :1;
        unsigned OUT21 :1;
        unsigned OUT22 :1;
        unsigned OUT23 :1;
    };
} PID1OUTHLbits_t;
extern volatile PID1OUTHLbits_t PID1OUTHLbits __attribute__((address(0x598)));
# 10526 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PID1OUTHH __attribute__((address(0x599)));

__asm("PID1OUTHH equ 0599h");


typedef union {
    struct {
        unsigned PID1OUT24 :1;
        unsigned PID1OUT25 :1;
        unsigned PID1OUT26 :1;
        unsigned PID1OUT27 :1;
        unsigned PID1OUT28 :1;
        unsigned PID1OUT29 :1;
        unsigned PID1OUT30 :1;
        unsigned PID1OUT31 :1;
    };
    struct {
        unsigned OUT24 :1;
        unsigned OUT25 :1;
        unsigned OUT26 :1;
        unsigned OUT27 :1;
        unsigned OUT28 :1;
        unsigned OUT29 :1;
        unsigned OUT30 :1;
        unsigned OUT31 :1;
    };
} PID1OUTHHbits_t;
extern volatile PID1OUTHHbits_t PID1OUTHHbits __attribute__((address(0x599)));
# 10638 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PID1OUTU __attribute__((address(0x59A)));

__asm("PID1OUTU equ 059Ah");


typedef union {
    struct {
        unsigned PID1OUT32 :1;
        unsigned PID1OUT33 :1;
        unsigned PID1OUT34 :1;
        unsigned PID1OUT35 :1;
    };
    struct {
        unsigned OUT32 :1;
        unsigned OUT33 :1;
        unsigned OUT34 :1;
        unsigned OUT35 :1;
    };
} PID1OUTUbits_t;
extern volatile PID1OUTUbits_t PID1OUTUbits __attribute__((address(0x59A)));
# 10703 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile __uint24 PID1Z1 __attribute__((address(0x59B)));


__asm("PID1Z1 equ 059Bh");




extern volatile unsigned char PID1Z1L __attribute__((address(0x59B)));

__asm("PID1Z1L equ 059Bh");


typedef union {
    struct {
        unsigned PID1Z10 :1;
        unsigned PID1Z11 :1;
        unsigned PID1Z12 :1;
        unsigned PID1Z13 :1;
        unsigned PID1Z14 :1;
        unsigned PID1Z15 :1;
        unsigned PID1Z16 :1;
        unsigned PID1Z17 :1;
    };
    struct {
        unsigned Z10 :1;
        unsigned Z11 :1;
        unsigned Z12 :1;
        unsigned Z13 :1;
        unsigned Z14 :1;
        unsigned Z15 :1;
        unsigned Z16 :1;
        unsigned Z17 :1;
    };
} PID1Z1Lbits_t;
extern volatile PID1Z1Lbits_t PID1Z1Lbits __attribute__((address(0x59B)));
# 10823 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PID1Z1H __attribute__((address(0x59C)));

__asm("PID1Z1H equ 059Ch");


typedef union {
    struct {
        unsigned PID1Z18 :1;
        unsigned PID1Z19 :1;
        unsigned PID1Z110 :1;
        unsigned PID1Z111 :1;
        unsigned PID1Z112 :1;
        unsigned PID1Z113 :1;
        unsigned PID1Z114 :1;
        unsigned PID1Z115 :1;
    };
    struct {
        unsigned Z18 :1;
        unsigned Z19 :1;
        unsigned Z110 :1;
        unsigned Z111 :1;
        unsigned Z112 :1;
        unsigned Z113 :1;
        unsigned Z114 :1;
        unsigned Z115 :1;
    };
} PID1Z1Hbits_t;
extern volatile PID1Z1Hbits_t PID1Z1Hbits __attribute__((address(0x59C)));
# 10935 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PID1Z1U __attribute__((address(0x59D)));

__asm("PID1Z1U equ 059Dh");


typedef union {
    struct {
        unsigned PID1Z116 :1;
    };
    struct {
        unsigned Z116 :1;
    };
} PID1Z1Ubits_t;
extern volatile PID1Z1Ubits_t PID1Z1Ubits __attribute__((address(0x59D)));
# 10964 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile __uint24 PID1Z2 __attribute__((address(0x60C)));


__asm("PID1Z2 equ 060Ch");




extern volatile unsigned char PID1Z2L __attribute__((address(0x60C)));

__asm("PID1Z2L equ 060Ch");


typedef union {
    struct {
        unsigned PID1Z20 :1;
        unsigned PID1Z21 :1;
        unsigned PID1Z22 :1;
        unsigned PID1Z23 :1;
        unsigned PID1Z24 :1;
        unsigned PID1Z25 :1;
        unsigned PID1Z26 :1;
        unsigned PID1Z27 :1;
    };
    struct {
        unsigned Z20 :1;
        unsigned Z21 :1;
        unsigned Z22 :1;
        unsigned Z23 :1;
        unsigned Z24 :1;
        unsigned Z25 :1;
        unsigned Z26 :1;
        unsigned Z27 :1;
    };
} PID1Z2Lbits_t;
extern volatile PID1Z2Lbits_t PID1Z2Lbits __attribute__((address(0x60C)));
# 11084 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PID1Z2H __attribute__((address(0x60D)));

__asm("PID1Z2H equ 060Dh");


typedef union {
    struct {
        unsigned PID1Z28 :1;
        unsigned PID1Z29 :1;
        unsigned PID1Z210 :1;
        unsigned PID1Z211 :1;
        unsigned PID1Z212 :1;
        unsigned PID1Z213 :1;
        unsigned PID1Z214 :1;
        unsigned PID1Z215 :1;
    };
    struct {
        unsigned Z28 :1;
        unsigned Z29 :1;
        unsigned Z210 :1;
        unsigned Z211 :1;
        unsigned Z212 :1;
        unsigned Z213 :1;
        unsigned Z214 :1;
        unsigned Z215 :1;
    };
} PID1Z2Hbits_t;
extern volatile PID1Z2Hbits_t PID1Z2Hbits __attribute__((address(0x60D)));
# 11196 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PID1Z2U __attribute__((address(0x60E)));

__asm("PID1Z2U equ 060Eh");


typedef union {
    struct {
        unsigned PID1Z216 :1;
    };
    struct {
        unsigned Z216 :1;
    };
} PID1Z2Ubits_t;
extern volatile PID1Z2Ubits_t PID1Z2Ubits __attribute__((address(0x60E)));
# 11225 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
__asm("PID1ACC equ 060Fh");




extern volatile unsigned char PID1ACCLL __attribute__((address(0x60F)));

__asm("PID1ACCLL equ 060Fh");


typedef union {
    struct {
        unsigned PID1ACC0 :1;
        unsigned PID1ACC1 :1;
        unsigned PID1ACC2 :1;
        unsigned PID1ACC3 :1;
        unsigned PID1ACC4 :1;
        unsigned PID1ACC5 :1;
        unsigned PID1ACC6 :1;
        unsigned PID1ACC7 :1;
    };
    struct {
        unsigned ACC0 :1;
        unsigned ACC1 :1;
        unsigned ACC2 :1;
        unsigned ACC3 :1;
        unsigned ACC4 :1;
        unsigned ACC5 :1;
        unsigned ACC6 :1;
        unsigned ACC7 :1;
    };
} PID1ACCLLbits_t;
extern volatile PID1ACCLLbits_t PID1ACCLLbits __attribute__((address(0x60F)));
# 11342 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PID1ACCLH __attribute__((address(0x610)));

__asm("PID1ACCLH equ 0610h");


typedef union {
    struct {
        unsigned PID1ACC8 :1;
        unsigned PID1ACC9 :1;
        unsigned PID1ACC10 :1;
        unsigned PID1ACC11 :1;
        unsigned PID1ACC12 :1;
        unsigned PID1ACC13 :1;
        unsigned PID1ACC14 :1;
        unsigned PID1ACC15 :1;
    };
    struct {
        unsigned ACC8 :1;
        unsigned ACC9 :1;
        unsigned ACC10 :1;
        unsigned ACC11 :1;
        unsigned ACC12 :1;
        unsigned ACC13 :1;
        unsigned ACC14 :1;
        unsigned ACC15 :1;
    };
} PID1ACCLHbits_t;
extern volatile PID1ACCLHbits_t PID1ACCLHbits __attribute__((address(0x610)));
# 11454 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PID1ACCHL __attribute__((address(0x611)));

__asm("PID1ACCHL equ 0611h");


typedef union {
    struct {
        unsigned PID1ACC16 :1;
        unsigned PID1ACC17 :1;
        unsigned PID1ACC18 :1;
        unsigned PID1ACC19 :1;
        unsigned PID1ACC20 :1;
        unsigned PID1ACC21 :1;
        unsigned PID1ACC22 :1;
        unsigned PID1ACC23 :1;
    };
    struct {
        unsigned ACC16 :1;
        unsigned ACC17 :1;
        unsigned ACC18 :1;
        unsigned ACC19 :1;
        unsigned ACC20 :1;
        unsigned ACC21 :1;
        unsigned ACC22 :1;
        unsigned ACC23 :1;
    };
} PID1ACCHLbits_t;
extern volatile PID1ACCHLbits_t PID1ACCHLbits __attribute__((address(0x611)));
# 11566 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PID1ACCHH __attribute__((address(0x612)));

__asm("PID1ACCHH equ 0612h");


typedef union {
    struct {
        unsigned PID1ACC24 :1;
        unsigned PID1ACC25 :1;
        unsigned PID1ACC26 :1;
        unsigned PID1ACC27 :1;
        unsigned PID1ACC28 :1;
        unsigned PID1ACC29 :1;
        unsigned PID1ACC30 :1;
        unsigned PID1ACC31 :1;
    };
    struct {
        unsigned ACC24 :1;
        unsigned ACC25 :1;
        unsigned ACC26 :1;
        unsigned ACC27 :1;
        unsigned ACC28 :1;
        unsigned ACC29 :1;
        unsigned ACC30 :1;
        unsigned ACC31 :1;
    };
} PID1ACCHHbits_t;
extern volatile PID1ACCHHbits_t PID1ACCHHbits __attribute__((address(0x612)));
# 11678 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PID1ACCU __attribute__((address(0x613)));

__asm("PID1ACCU equ 0613h");


typedef union {
    struct {
        unsigned PID1ACC32 :1;
        unsigned PID1ACC33 :1;
        unsigned PID1ACC34 :1;
    };
    struct {
        unsigned ACC32 :1;
        unsigned ACC33 :1;
        unsigned ACC34 :1;
    };
} PID1ACCUbits_t;
extern volatile PID1ACCUbits_t PID1ACCUbits __attribute__((address(0x613)));
# 11730 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PID1CON __attribute__((address(0x614)));

__asm("PID1CON equ 0614h");


typedef union {
    struct {
        unsigned PID1MODE :3;
        unsigned :3;
        unsigned PID1BUSY :1;
        unsigned PID1EN :1;
    };
    struct {
        unsigned MODE :3;
        unsigned :3;
        unsigned BUSY :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
    };
    struct {
        unsigned PID1MODE0 :1;
        unsigned PID1MODE1 :1;
        unsigned PID1MODE2 :1;
    };
} PID1CONbits_t;
extern volatile PID1CONbits_t PID1CONbits __attribute__((address(0x614)));
# 11824 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short PWM3DC __attribute__((address(0x617)));

__asm("PWM3DC equ 0617h");




extern volatile unsigned char PWM3DCL __attribute__((address(0x617)));

__asm("PWM3DCL equ 0617h");


typedef union {
    struct {
        unsigned :6;
        unsigned DC :2;
    };
    struct {
        unsigned :6;
        unsigned DC0 :1;
        unsigned DC1 :1;
    };
    struct {
        unsigned :6;
        unsigned PWM3DC0 :1;
        unsigned PWM3DC1 :1;
    };
    struct {
        unsigned :6;
        unsigned PWMPW0 :1;
        unsigned PWMPW1 :1;
    };
} PWM3DCLbits_t;
extern volatile PWM3DCLbits_t PWM3DCLbits __attribute__((address(0x617)));
# 11897 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PWM3DCH __attribute__((address(0x618)));

__asm("PWM3DCH equ 0618h");


typedef union {
    struct {
        unsigned DC :8;
    };
    struct {
        unsigned DC2 :1;
        unsigned DC3 :1;
        unsigned DC4 :1;
        unsigned DC5 :1;
        unsigned DC6 :1;
        unsigned DC7 :1;
        unsigned DC8 :1;
        unsigned DC9 :1;
    };
    struct {
        unsigned PWM3DC2 :1;
        unsigned PWM3DC3 :1;
        unsigned PWM3DC4 :1;
        unsigned PWM3DC5 :1;
        unsigned PWM3DC6 :1;
        unsigned PWM3DC7 :1;
        unsigned PWM3DC8 :1;
        unsigned PWM3DC9 :1;
    };
    struct {
        unsigned PWMPW2 :1;
        unsigned PWMPW3 :1;
        unsigned PWMPW4 :1;
        unsigned PWMPW5 :1;
        unsigned PWMPW6 :1;
        unsigned PWMPW7 :1;
        unsigned PWMPW8 :1;
        unsigned PWMPW9 :1;
    };
} PWM3DCHbits_t;
extern volatile PWM3DCHbits_t PWM3DCHbits __attribute__((address(0x618)));
# 12067 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PWM3CON __attribute__((address(0x619)));

__asm("PWM3CON equ 0619h");


typedef union {
    struct {
        unsigned :4;
        unsigned POL :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned :4;
        unsigned PWM3POL :1;
        unsigned PWM3OUT :1;
        unsigned :1;
        unsigned PWM3EN :1;
    };
} PWM3CONbits_t;
extern volatile PWM3CONbits_t PWM3CONbits __attribute__((address(0x619)));
# 12123 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short PWM4DC __attribute__((address(0x61A)));

__asm("PWM4DC equ 061Ah");




extern volatile unsigned char PWM4DCL __attribute__((address(0x61A)));

__asm("PWM4DCL equ 061Ah");


typedef union {
    struct {
        unsigned :6;
        unsigned DC :2;
    };
    struct {
        unsigned :6;
        unsigned DC0 :1;
        unsigned DC1 :1;
    };
    struct {
        unsigned :6;
        unsigned PWM4DC0 :1;
        unsigned PWM4DC1 :1;
    };
    struct {
        unsigned :6;
        unsigned PWMPW0 :1;
        unsigned PWMPW1 :1;
    };
} PWM4DCLbits_t;
extern volatile PWM4DCLbits_t PWM4DCLbits __attribute__((address(0x61A)));
# 12196 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PWM4DCH __attribute__((address(0x61B)));

__asm("PWM4DCH equ 061Bh");


typedef union {
    struct {
        unsigned DC :8;
    };
    struct {
        unsigned DC2 :1;
        unsigned DC3 :1;
        unsigned DC4 :1;
        unsigned DC5 :1;
        unsigned DC6 :1;
        unsigned DC7 :1;
        unsigned DC8 :1;
        unsigned DC9 :1;
    };
    struct {
        unsigned PWM4DC2 :1;
        unsigned PWM4DC3 :1;
        unsigned PWM4DC4 :1;
        unsigned PWM4DC5 :1;
        unsigned PWM4DC6 :1;
        unsigned PWM4DC7 :1;
        unsigned PWM4DC8 :1;
        unsigned PWM4DC9 :1;
    };
    struct {
        unsigned PWMPW2 :1;
        unsigned PWMPW3 :1;
        unsigned PWMPW4 :1;
        unsigned PWMPW5 :1;
        unsigned PWMPW6 :1;
        unsigned PWMPW7 :1;
        unsigned PWMPW8 :1;
        unsigned PWMPW9 :1;
    };
} PWM4DCHbits_t;
extern volatile PWM4DCHbits_t PWM4DCHbits __attribute__((address(0x61B)));
# 12366 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PWM4CON __attribute__((address(0x61C)));

__asm("PWM4CON equ 061Ch");


typedef union {
    struct {
        unsigned :4;
        unsigned POL :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned :4;
        unsigned PWM4POL :1;
        unsigned PWM4OUT :1;
        unsigned :1;
        unsigned PWM4EN :1;
    };
} PWM4CONbits_t;
extern volatile PWM4CONbits_t PWM4CONbits __attribute__((address(0x61C)));
# 12422 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CWG1DBR __attribute__((address(0x691)));

__asm("CWG1DBR equ 0691h");


typedef union {
    struct {
        unsigned DBR :6;
    };
    struct {
        unsigned DBR0 :1;
        unsigned DBR1 :1;
        unsigned DBR2 :1;
        unsigned DBR3 :1;
        unsigned DBR4 :1;
        unsigned DBR5 :1;
    };
    struct {
        unsigned CWG1DBR :6;
    };
    struct {
        unsigned CWG1DBR0 :1;
        unsigned CWG1DBR1 :1;
        unsigned CWG1DBR2 :1;
        unsigned CWG1DBR3 :1;
        unsigned CWG1DBR4 :1;
        unsigned CWG1DBR5 :1;
    };
} CWG1DBRbits_t;
extern volatile CWG1DBRbits_t CWG1DBRbits __attribute__((address(0x691)));
# 12526 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CWG1DBF __attribute__((address(0x692)));

__asm("CWG1DBF equ 0692h");


typedef union {
    struct {
        unsigned DBF :6;
    };
    struct {
        unsigned DBF0 :1;
        unsigned DBF1 :1;
        unsigned DBF2 :1;
        unsigned DBF3 :1;
        unsigned DBF4 :1;
        unsigned DBF5 :1;
    };
    struct {
        unsigned CWG1DBF :6;
    };
    struct {
        unsigned CWG1DBF0 :1;
        unsigned CWG1DBF1 :1;
        unsigned CWG1DBF2 :1;
        unsigned CWG1DBF3 :1;
        unsigned CWG1DBF4 :1;
        unsigned CWG1DBF5 :1;
    };
} CWG1DBFbits_t;
extern volatile CWG1DBFbits_t CWG1DBFbits __attribute__((address(0x692)));
# 12630 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CWG1AS0 __attribute__((address(0x693)));

__asm("CWG1AS0 equ 0693h");


typedef union {
    struct {
        unsigned :2;
        unsigned LSAC :2;
        unsigned LSBD :2;
        unsigned REN :1;
        unsigned SHUTDOWN :1;
    };
    struct {
        unsigned :2;
        unsigned LSAC0 :1;
        unsigned LSAC1 :1;
        unsigned LSBD0 :1;
        unsigned LSBD1 :1;
    };
    struct {
        unsigned :2;
        unsigned CWG1LSAC :2;
        unsigned CWG1LSBD :2;
        unsigned CWG1REN :1;
        unsigned CWG1SHUTDOWN :1;
    };
    struct {
        unsigned :2;
        unsigned CWG1LSAC0 :1;
        unsigned CWG1LSAC1 :1;
        unsigned CWG1LSBD0 :1;
        unsigned CWG1LSBD1 :1;
    };
} CWG1AS0bits_t;
extern volatile CWG1AS0bits_t CWG1AS0bits __attribute__((address(0x693)));
# 12750 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CWG1AS1 __attribute__((address(0x694)));

__asm("CWG1AS1 equ 0694h");


typedef union {
    struct {
        unsigned INAS :1;
        unsigned C1AS :1;
        unsigned C2AS :1;
        unsigned :1;
        unsigned TMR2AS :1;
        unsigned TMR4AS :1;
        unsigned TMR6AS :1;
    };
    struct {
        unsigned CWG1INAS :1;
        unsigned CWG1C1AS :1;
        unsigned CWG1C2AS :1;
        unsigned :1;
        unsigned CWG1TMR2AS :1;
        unsigned CWG1TMR4AS :1;
        unsigned CWG1TMR6AS :1;
    };
} CWG1AS1bits_t;
extern volatile CWG1AS1bits_t CWG1AS1bits __attribute__((address(0x694)));
# 12840 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CWG1OCON0 __attribute__((address(0x695)));

__asm("CWG1OCON0 equ 0695h");


typedef union {
    struct {
        unsigned STRA :1;
        unsigned STRB :1;
        unsigned STRC :1;
        unsigned STRD :1;
        unsigned OVRA :1;
        unsigned OVRB :1;
        unsigned OVRC :1;
        unsigned OVRD :1;
    };
    struct {
        unsigned CWG1STRA :1;
        unsigned CWG1STRB :1;
        unsigned CWG1STRC :1;
        unsigned CWG1STRD :1;
        unsigned CWG1OVRA :1;
        unsigned CWG1OVRB :1;
        unsigned CWG1OVRC :1;
        unsigned CWG1OVRD :1;
    };
} CWG1OCON0bits_t;
extern volatile CWG1OCON0bits_t CWG1OCON0bits __attribute__((address(0x695)));
# 12952 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CWG1CON0 __attribute__((address(0x696)));

__asm("CWG1CON0 equ 0696h");


typedef union {
    struct {
        unsigned MODE :3;
        unsigned :3;
        unsigned LD :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned :4;
        unsigned G1EN :1;
    };
    struct {
        unsigned CWG1MODE :3;
        unsigned :3;
        unsigned CWG1LD :1;
        unsigned CWG1EN :1;
    };
    struct {
        unsigned CWG1MODE0 :1;
        unsigned CWG1MODE1 :1;
        unsigned CWG1MODE2 :1;
    };
} CWG1CON0bits_t;
extern volatile CWG1CON0bits_t CWG1CON0bits __attribute__((address(0x696)));
# 13053 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CWG1CON1 __attribute__((address(0x697)));

__asm("CWG1CON1 equ 0697h");


typedef union {
    struct {
        unsigned POLA :1;
        unsigned POLB :1;
        unsigned POLC :1;
        unsigned POLD :1;
        unsigned :1;
        unsigned IN :1;
    };
    struct {
        unsigned CWG1POLA :1;
        unsigned CWG1POLB :1;
        unsigned CWG1POLC :1;
        unsigned CWG1POLD :1;
        unsigned :1;
        unsigned CWG1IN :1;
    };
} CWG1CON1bits_t;
extern volatile CWG1CON1bits_t CWG1CON1bits __attribute__((address(0x697)));
# 13131 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CWG1CLKCON __attribute__((address(0x699)));

__asm("CWG1CLKCON equ 0699h");


typedef union {
    struct {
        unsigned CS :1;
    };
    struct {
        unsigned CWG1CS :1;
    };
} CWG1CLKCONbits_t;
extern volatile CWG1CLKCONbits_t CWG1CLKCONbits __attribute__((address(0x699)));
# 13159 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CWG1ISM __attribute__((address(0x69A)));

__asm("CWG1ISM equ 069Ah");


typedef union {
    struct {
        unsigned IS :8;
    };
    struct {
        unsigned IS0 :1;
        unsigned IS1 :1;
        unsigned IS2 :1;
        unsigned IS3 :1;
    };
    struct {
        unsigned CWG1IS :8;
    };
    struct {
        unsigned CWG1IS0 :1;
        unsigned CWG1IS1 :1;
        unsigned CWG1IS2 :1;
        unsigned CWG1IS3 :1;
    };
} CWG1ISMbits_t;
extern volatile CWG1ISMbits_t CWG1ISMbits __attribute__((address(0x69A)));
# 13239 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char WDTCON0 __attribute__((address(0x711)));

__asm("WDTCON0 equ 0711h");


typedef union {
    struct {
        unsigned SEN :1;
        unsigned WDTPS :5;
    };
    struct {
        unsigned SWDTEN :1;
    };
    struct {
        unsigned WDTSEN :1;
    };
    struct {
        unsigned :1;
        unsigned WDTPS0 :1;
        unsigned WDTPS1 :1;
        unsigned WDTPS2 :1;
        unsigned WDTPS3 :1;
        unsigned WDTPS4 :1;
    };
} WDTCON0bits_t;
extern volatile WDTCON0bits_t WDTCON0bits __attribute__((address(0x711)));
# 13314 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char WDTCON1 __attribute__((address(0x712)));

__asm("WDTCON1 equ 0712h");


typedef union {
    struct {
        unsigned WINDOW :3;
        unsigned :1;
        unsigned WDTCS :3;
    };
    struct {
        unsigned WINDOW0 :1;
        unsigned WINDOW1 :1;
        unsigned WINDOW2 :1;
    };
    struct {
        unsigned WDTWINDOW :3;
    };
    struct {
        unsigned WDTWINDOW0 :1;
        unsigned WDTWINDOW1 :1;
        unsigned WDTWINDOW2 :1;
        unsigned :1;
        unsigned WDTCS0 :1;
        unsigned WDTCS1 :1;
        unsigned WDTCS2 :1;
    };
} WDTCON1bits_t;
extern volatile WDTCON1bits_t WDTCON1bits __attribute__((address(0x712)));
# 13408 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char WDTPSL __attribute__((address(0x713)));

__asm("WDTPSL equ 0713h");


typedef union {
    struct {
        unsigned PSCNT :8;
    };
    struct {
        unsigned PSCNT0 :1;
        unsigned PSCNT1 :1;
        unsigned PSCNT2 :1;
        unsigned PSCNT3 :1;
        unsigned PSCNT4 :1;
        unsigned PSCNT5 :1;
        unsigned PSCNT6 :1;
        unsigned PSCNT7 :1;
    };
    struct {
        unsigned WDTPSCNT :8;
    };
    struct {
        unsigned WDTPSCNT0 :1;
        unsigned WDTPSCNT1 :1;
        unsigned WDTPSCNT2 :1;
        unsigned WDTPSCNT3 :1;
        unsigned WDTPSCNT4 :1;
        unsigned WDTPSCNT5 :1;
        unsigned WDTPSCNT6 :1;
        unsigned WDTPSCNT7 :1;
    };
} WDTPSLbits_t;
extern volatile WDTPSLbits_t WDTPSLbits __attribute__((address(0x713)));
# 13536 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char WDTPSH __attribute__((address(0x714)));

__asm("WDTPSH equ 0714h");


typedef union {
    struct {
        unsigned PSCNT :8;
    };
    struct {
        unsigned PSCNT8 :1;
        unsigned PSCNT9 :1;
        unsigned PSCNT10 :1;
        unsigned PSCNT11 :1;
        unsigned PSCNT12 :1;
        unsigned PSCNT13 :1;
        unsigned PSCNT14 :1;
        unsigned PSCNT15 :1;
    };
    struct {
        unsigned WDTPSCNT :8;
    };
    struct {
        unsigned WDTPSCNT8 :1;
        unsigned WDTPSCNT9 :1;
        unsigned WDTPSCNT10 :1;
        unsigned WDTPSCNT11 :1;
        unsigned WDTPSCNT12 :1;
        unsigned WDTPSCNT13 :1;
        unsigned WDTPSCNT14 :1;
        unsigned WDTPSCNT15 :1;
    };
} WDTPSHbits_t;
extern volatile WDTPSHbits_t WDTPSHbits __attribute__((address(0x714)));
# 13664 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char WDTTMR __attribute__((address(0x715)));

__asm("WDTTMR equ 0715h");


typedef union {
    struct {
        unsigned PSCNT16 :1;
        unsigned PSCNT17 :1;
        unsigned STATE :1;
        unsigned WDTTMR :5;
    };
    struct {
        unsigned WDTPSCNT16 :1;
        unsigned WDTPSCNT17 :1;
        unsigned WDTSTATE :1;
        unsigned WDTTMR0 :1;
        unsigned WDTTMR1 :1;
        unsigned WDTTMR2 :1;
        unsigned WDTTMR3 :1;
        unsigned WDTTMR4 :1;
    };
} WDTTMRbits_t;
extern volatile WDTTMRbits_t WDTTMRbits __attribute__((address(0x715)));
# 13752 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short SCANLADR __attribute__((address(0x718)));

__asm("SCANLADR equ 0718h");




extern volatile unsigned char SCANLADRL __attribute__((address(0x718)));

__asm("SCANLADRL equ 0718h");


typedef union {
    struct {
        unsigned LADR :8;
    };
    struct {
        unsigned LDAR0 :1;
        unsigned LDAR1 :1;
        unsigned LADR2 :1;
        unsigned LADR3 :1;
        unsigned LADR4 :1;
        unsigned LADR5 :1;
        unsigned LADR6 :1;
        unsigned LADR7 :1;
    };
    struct {
        unsigned SCANLADR :8;
    };
    struct {
        unsigned SCANLADR0 :1;
        unsigned SCANLADR1 :1;
        unsigned SCANLADR2 :1;
        unsigned SCANLADR3 :1;
        unsigned SCANLADR4 :1;
        unsigned SCANLADR5 :1;
        unsigned SCANLADR6 :1;
        unsigned SCANLADR7 :1;
    };
} SCANLADRLbits_t;
extern volatile SCANLADRLbits_t SCANLADRLbits __attribute__((address(0x718)));
# 13887 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SCANLADRH __attribute__((address(0x719)));

__asm("SCANLADRH equ 0719h");


typedef union {
    struct {
        unsigned LADR :8;
    };
    struct {
        unsigned LADR8 :1;
        unsigned LADR9 :1;
        unsigned LADR10 :1;
        unsigned LADR11 :1;
        unsigned LADR12 :1;
        unsigned LADR13 :1;
        unsigned LADR14 :1;
        unsigned LADR15 :1;
    };
    struct {
        unsigned SCANLADR :8;
    };
    struct {
        unsigned SCANLADR8 :1;
        unsigned SCANLADR9 :1;
        unsigned SCANLADR10 :1;
        unsigned SCANLADR11 :1;
        unsigned SCANLADR12 :1;
        unsigned SCANLADR13 :1;
        unsigned SCANLADR14 :1;
        unsigned SCANLADR15 :1;
    };
} SCANLADRHbits_t;
extern volatile SCANLADRHbits_t SCANLADRHbits __attribute__((address(0x719)));
# 14015 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short SCANHADR __attribute__((address(0x71A)));

__asm("SCANHADR equ 071Ah");




extern volatile unsigned char SCANHADRL __attribute__((address(0x71A)));

__asm("SCANHADRL equ 071Ah");


typedef union {
    struct {
        unsigned HADR :8;
    };
    struct {
        unsigned HADR0 :1;
        unsigned HADR1 :1;
        unsigned HARD2 :1;
        unsigned HADR3 :1;
        unsigned HADR4 :1;
        unsigned HADR5 :1;
        unsigned HADR6 :1;
        unsigned HADR7 :1;
    };
    struct {
        unsigned SCANHADR :8;
    };
    struct {
        unsigned SCANHADR0 :1;
        unsigned SCANHADR1 :1;
        unsigned SCANHADR2 :1;
        unsigned SCANHADR3 :1;
        unsigned SCANHADR4 :1;
        unsigned SCANHADR5 :1;
        unsigned SCANHADR6 :1;
        unsigned SCANHADR7 :1;
    };
} SCANHADRLbits_t;
extern volatile SCANHADRLbits_t SCANHADRLbits __attribute__((address(0x71A)));
# 14150 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SCANHADRH __attribute__((address(0x71B)));

__asm("SCANHADRH equ 071Bh");


typedef union {
    struct {
        unsigned HADR :8;
    };
    struct {
        unsigned HADR8 :1;
        unsigned HADR9 :1;
        unsigned HADR10 :1;
        unsigned HADR11 :1;
        unsigned HADR12 :1;
        unsigned HADR13 :1;
        unsigned HADR14 :1;
        unsigned HADR15 :1;
    };
    struct {
        unsigned SCANHADR :8;
    };
    struct {
        unsigned SCANHADR8 :1;
        unsigned SCANHADR9 :1;
        unsigned SCANHADR10 :1;
        unsigned SCANHADR11 :1;
        unsigned SCANHADR12 :1;
        unsigned SCANHADR13 :1;
        unsigned SCANHADR14 :1;
        unsigned SCANHADR15 :1;
    };
} SCANHADRHbits_t;
extern volatile SCANHADRHbits_t SCANHADRHbits __attribute__((address(0x71B)));
# 14278 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SCANCON0 __attribute__((address(0x71C)));

__asm("SCANCON0 equ 071Ch");


typedef union {
    struct {
        unsigned MODE :2;
        unsigned :1;
        unsigned INTM :1;
        unsigned INVALID :1;
        unsigned BUSY :1;
        unsigned SCANGO :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
    };
    struct {
        unsigned SCANMODE :2;
        unsigned :1;
        unsigned SCANINTM :1;
        unsigned SCANINVALID :1;
        unsigned SCANBUSY :1;
        unsigned :1;
        unsigned SCANEN :1;
    };
    struct {
        unsigned SCANMODE0 :1;
        unsigned SCANMODE1 :1;
    };
} SCANCON0bits_t;
extern volatile SCANCON0bits_t SCANCON0bits __attribute__((address(0x71C)));
# 14391 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SCANTRIG __attribute__((address(0x71D)));

__asm("SCANTRIG equ 071Dh");


typedef union {
    struct {
        unsigned TSEL :8;
    };
    struct {
        unsigned TSEL0 :1;
        unsigned TSEL1 :1;
        unsigned TSEL2 :1;
        unsigned TSEL3 :1;
    };
    struct {
        unsigned SCANTSEL :8;
    };
    struct {
        unsigned SCANTSEL0 :1;
        unsigned SCANTSEL1 :1;
        unsigned SCANTSEL2 :1;
        unsigned SCANTSEL3 :1;
    };
} SCANTRIGbits_t;
extern volatile SCANTRIGbits_t SCANTRIGbits __attribute__((address(0x71D)));
# 14471 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short CRCDAT __attribute__((address(0x791)));

__asm("CRCDAT equ 0791h");




extern volatile unsigned char CRCDATL __attribute__((address(0x791)));

__asm("CRCDATL equ 0791h");


typedef union {
    struct {
        unsigned DAT :8;
    };
    struct {
        unsigned DAT0 :1;
        unsigned DAT1 :1;
        unsigned DAT2 :1;
        unsigned DAT3 :1;
        unsigned DAT4 :1;
        unsigned DAT5 :1;
        unsigned DAT6 :1;
        unsigned DAT7 :1;
    };
    struct {
        unsigned CRCDAT :8;
    };
    struct {
        unsigned CRCDAT0 :1;
        unsigned CRCDAT1 :1;
        unsigned CRCDAT2 :1;
        unsigned CRCDAT3 :1;
        unsigned CRCDAT4 :1;
        unsigned CRCDAT5 :1;
        unsigned CRCDAT6 :1;
        unsigned CRDCDAT7 :1;
    };
} CRCDATLbits_t;
extern volatile CRCDATLbits_t CRCDATLbits __attribute__((address(0x791)));
# 14606 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CRCDATH __attribute__((address(0x792)));

__asm("CRCDATH equ 0792h");


typedef union {
    struct {
        unsigned DAT :8;
    };
    struct {
        unsigned DAT8 :1;
        unsigned DAT9 :1;
        unsigned DAT10 :1;
        unsigned DAT11 :1;
        unsigned DAT12 :1;
        unsigned DAT13 :1;
        unsigned DAT14 :1;
        unsigned DAT15 :1;
    };
    struct {
        unsigned CRCDAT :8;
    };
    struct {
        unsigned CRCDAT8 :1;
        unsigned CRCDAT9 :1;
        unsigned CRCDAT10 :1;
        unsigned CRCDAT11 :1;
        unsigned CRCDAT12 :1;
        unsigned CRCDAT13 :1;
        unsigned CRCDAT14 :1;
        unsigned CRCDAT15 :1;
    };
} CRCDATHbits_t;
extern volatile CRCDATHbits_t CRCDATHbits __attribute__((address(0x792)));
# 14734 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short CRCACC __attribute__((address(0x793)));

__asm("CRCACC equ 0793h");




extern volatile unsigned char CRCACCL __attribute__((address(0x793)));

__asm("CRCACCL equ 0793h");


typedef union {
    struct {
        unsigned ACC :8;
    };
    struct {
        unsigned ACC0 :1;
        unsigned ACC1 :1;
        unsigned ACC2 :1;
        unsigned ACC3 :1;
        unsigned ACC4 :1;
        unsigned ACC5 :1;
        unsigned ACC6 :1;
        unsigned ACC7 :1;
    };
    struct {
        unsigned CRCACC :8;
    };
    struct {
        unsigned CRCACC0 :1;
        unsigned CRCACC1 :1;
        unsigned CRCACC2 :1;
        unsigned CRCACC3 :1;
        unsigned CRCACC4 :1;
        unsigned CRCACC5 :1;
        unsigned CRCACC6 :1;
        unsigned CRCACC7 :1;
    };
} CRCACCLbits_t;
extern volatile CRCACCLbits_t CRCACCLbits __attribute__((address(0x793)));
# 14869 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CRCACCH __attribute__((address(0x794)));

__asm("CRCACCH equ 0794h");


typedef union {
    struct {
        unsigned ACC :8;
    };
    struct {
        unsigned ACC8 :1;
        unsigned ACC9 :1;
        unsigned ACC10 :1;
        unsigned ACC11 :1;
        unsigned ACC12 :1;
        unsigned ACC13 :1;
        unsigned ACC14 :1;
        unsigned ACC15 :1;
    };
    struct {
        unsigned CRCACC :8;
    };
    struct {
        unsigned CRCACC8 :1;
        unsigned CRCACC9 :1;
        unsigned CRCACC10 :1;
        unsigned CRCACC11 :1;
        unsigned CRCACC12 :1;
        unsigned CRCACC13 :1;
        unsigned CRCACC14 :1;
        unsigned CRCACC15 :1;
    };
} CRCACCHbits_t;
extern volatile CRCACCHbits_t CRCACCHbits __attribute__((address(0x794)));
# 14997 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short CRCSHIFT __attribute__((address(0x795)));

__asm("CRCSHIFT equ 0795h");




extern volatile unsigned char CRCSHIFTL __attribute__((address(0x795)));

__asm("CRCSHIFTL equ 0795h");


typedef union {
    struct {
        unsigned SHIFT :8;
    };
    struct {
        unsigned SHIFT0 :1;
        unsigned SHIFT1 :1;
        unsigned SHIFT2 :1;
        unsigned SHIFT3 :1;
        unsigned SHIFT4 :1;
        unsigned SHIFT5 :1;
        unsigned SHIFT6 :1;
        unsigned SHIFT7 :1;
    };
    struct {
        unsigned CRCSHIFT :8;
    };
    struct {
        unsigned CRCSHIFT0 :1;
        unsigned CRCSHIFT1 :1;
        unsigned CRCSHIFT2 :1;
        unsigned CRCSHIFT3 :1;
        unsigned CRCSHIFT4 :1;
        unsigned CRCSHIFT5 :1;
        unsigned CRCSHIFT6 :1;
        unsigned CRCSHIFT7 :1;
    };
} CRCSHIFTLbits_t;
extern volatile CRCSHIFTLbits_t CRCSHIFTLbits __attribute__((address(0x795)));
# 15132 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CRCSHIFTH __attribute__((address(0x796)));

__asm("CRCSHIFTH equ 0796h");


typedef union {
    struct {
        unsigned SHIFT :8;
    };
    struct {
        unsigned SHIFT8 :1;
        unsigned SHIFT9 :1;
        unsigned SHIFT10 :1;
        unsigned SHIFT11 :1;
        unsigned SHIFT12 :1;
        unsigned SHIFT13 :1;
        unsigned SHIFT14 :1;
        unsigned SHIFT15 :1;
    };
    struct {
        unsigned CRCSHIFT :8;
    };
    struct {
        unsigned CRCSHIFT8 :1;
        unsigned CRCSHIFT9 :1;
        unsigned CRCSHIFT10 :1;
        unsigned CRCSHIFT11 :1;
        unsigned CRCSHIFT12 :1;
        unsigned CRCSHIFT13 :1;
        unsigned CRCSHIFT14 :1;
        unsigned CRCSHIFT15 :1;
    };
} CRCSHIFTHbits_t;
extern volatile CRCSHIFTHbits_t CRCSHIFTHbits __attribute__((address(0x796)));
# 15260 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short CRCXOR __attribute__((address(0x797)));

__asm("CRCXOR equ 0797h");




extern volatile unsigned char CRCXORL __attribute__((address(0x797)));

__asm("CRCXORL equ 0797h");


typedef union {
    struct {
        unsigned :1;
        unsigned XOR1 :1;
        unsigned XOR2 :1;
        unsigned XOR3 :1;
        unsigned XOR4 :1;
        unsigned XOR5 :1;
        unsigned XOR6 :1;
        unsigned XOR7 :1;
    };
    struct {
        unsigned :1;
        unsigned CRCXOR1 :1;
        unsigned CRCXOR2 :1;
        unsigned CRCXOR3 :1;
        unsigned CRCXOR4 :1;
        unsigned CRCXOR5 :1;
        unsigned CRCXOR6 :1;
        unsigned CRCXOR7 :1;
    };
} CRCXORLbits_t;
extern volatile CRCXORLbits_t CRCXORLbits __attribute__((address(0x797)));
# 15369 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CRCXORH __attribute__((address(0x798)));

__asm("CRCXORH equ 0798h");


typedef union {
    struct {
        unsigned XOR8 :1;
        unsigned XOR9 :1;
        unsigned XOR10 :1;
        unsigned XOR11 :1;
        unsigned XOR12 :1;
        unsigned XOR13 :1;
        unsigned XOR14 :1;
        unsigned XOR15 :1;
    };
    struct {
        unsigned CRCXOR8 :1;
        unsigned CRCXOR9 :1;
        unsigned CRCXOR10 :1;
        unsigned CRCXOR11 :1;
        unsigned CRCXOR12 :1;
        unsigned CRCXOR13 :1;
        unsigned CRCXOR14 :1;
        unsigned CRCXOR15 :1;
    };
} CRCXORHbits_t;
extern volatile CRCXORHbits_t CRCXORHbits __attribute__((address(0x798)));
# 15481 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CRCCON0 __attribute__((address(0x799)));

__asm("CRCCON0 equ 0799h");


typedef union {
    struct {
        unsigned FULL :1;
        unsigned SHIFTM :1;
        unsigned :2;
        unsigned ACCM :1;
        unsigned BUSY :1;
        unsigned CRCGO :1;
        unsigned EN :1;
    };
    struct {
        unsigned CRCFULL :1;
        unsigned CRCSHIFTM :1;
        unsigned :2;
        unsigned CRCACCM :1;
        unsigned CRCBUSY :1;
        unsigned :1;
        unsigned CRCEN :1;
    };
} CRCCON0bits_t;
extern volatile CRCCON0bits_t CRCCON0bits __attribute__((address(0x799)));
# 15566 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CRCCON1 __attribute__((address(0x79A)));

__asm("CRCCON1 equ 079Ah");


typedef union {
    struct {
        unsigned PLEN :4;
        unsigned DLEN :4;
    };
    struct {
        unsigned PLEN0 :1;
        unsigned PLEN1 :1;
        unsigned PLEN2 :1;
        unsigned PLEN3 :1;
        unsigned DLEN0 :1;
        unsigned DLEN1 :1;
        unsigned DLEN2 :1;
        unsigned DLEN3 :1;
    };
    struct {
        unsigned CRCPLEN :4;
        unsigned CRCDLEN :4;
    };
    struct {
        unsigned CRCPLEN0 :1;
        unsigned CRCPLEN1 :1;
        unsigned CRCPLEN2 :1;
        unsigned CRCPLEN3 :1;
        unsigned CRCDLEN0 :1;
        unsigned CRCDLEN1 :1;
        unsigned CRCDLEN2 :1;
        unsigned CRCDLEN3 :1;
    };
} CRCCON1bits_t;
extern volatile CRCCON1bits_t CRCCON1bits __attribute__((address(0x79A)));
# 15706 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short AT1RES __attribute__((address(0x80C)));

__asm("AT1RES equ 080Ch");




extern volatile unsigned char AT1RESL __attribute__((address(0x80C)));

__asm("AT1RESL equ 080Ch");


typedef union {
    struct {
        unsigned AT1RES0 :1;
        unsigned AT1RES1 :1;
        unsigned AT1RES2 :1;
        unsigned AT1RES3 :1;
        unsigned AT1RES4 :1;
        unsigned AT1RES5 :1;
        unsigned AT1RES6 :1;
        unsigned AT1RES7 :1;
    };
    struct {
        unsigned RES0 :1;
        unsigned RES1 :1;
        unsigned RES2 :1;
        unsigned RES3 :1;
        unsigned RES4 :1;
        unsigned RES5 :1;
        unsigned RES6 :1;
        unsigned RES7 :1;
    };
} AT1RESLbits_t;
extern volatile AT1RESLbits_t AT1RESLbits __attribute__((address(0x80C)));
# 15825 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1RESH __attribute__((address(0x80D)));

__asm("AT1RESH equ 080Dh");


typedef union {
    struct {
        unsigned AT1RES8 :1;
        unsigned AT1RES9 :1;
    };
    struct {
        unsigned RES8 :1;
        unsigned RES9 :1;
    };
} AT1RESHbits_t;
extern volatile AT1RESHbits_t AT1RESHbits __attribute__((address(0x80D)));
# 15865 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short AT1MISS __attribute__((address(0x80E)));

__asm("AT1MISS equ 080Eh");




extern volatile unsigned char AT1MISSL __attribute__((address(0x80E)));

__asm("AT1MISSL equ 080Eh");


typedef union {
    struct {
        unsigned AT1MISS0 :1;
        unsigned AT1MISS1 :1;
        unsigned AT1MISS2 :1;
        unsigned AT1MISS3 :1;
        unsigned AT1MISS4 :1;
        unsigned AT1MISS5 :1;
        unsigned AT1MISS6 :1;
        unsigned AT1MISS7 :1;
    };
    struct {
        unsigned MISS0 :1;
        unsigned MISS1 :1;
        unsigned MISS2 :1;
        unsigned MISS3 :1;
        unsigned MISS4 :1;
        unsigned MISS5 :1;
        unsigned MISS6 :1;
        unsigned MISS7 :1;
    };
} AT1MISSLbits_t;
extern volatile AT1MISSLbits_t AT1MISSLbits __attribute__((address(0x80E)));
# 15984 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1MISSH __attribute__((address(0x80F)));

__asm("AT1MISSH equ 080Fh");


typedef union {
    struct {
        unsigned AT1MISS8 :1;
        unsigned AT1MISS9 :1;
        unsigned AT1MISS10 :1;
        unsigned AT1MISS11 :1;
        unsigned AT1MISS12 :1;
        unsigned AT1MISS13 :1;
        unsigned AT1MISS14 :1;
        unsigned AT1MISS15 :1;
    };
    struct {
        unsigned MISS8 :1;
        unsigned MISS9 :1;
        unsigned MISS10 :1;
        unsigned MISS11 :1;
        unsigned MISS12 :1;
        unsigned MISS13 :1;
        unsigned MISS14 :1;
        unsigned MISS15 :1;
    };
} AT1MISSHbits_t;
extern volatile AT1MISSHbits_t AT1MISSHbits __attribute__((address(0x80F)));
# 16096 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short AT1PER __attribute__((address(0x810)));

__asm("AT1PER equ 0810h");




extern volatile unsigned char AT1PERL __attribute__((address(0x810)));

__asm("AT1PERL equ 0810h");


typedef union {
    struct {
        unsigned AT1PER0 :1;
        unsigned AT1PER1 :1;
        unsigned AT1PER2 :1;
        unsigned AT1PER3 :1;
        unsigned AT1PER4 :1;
        unsigned AT1PER5 :1;
        unsigned AT1PER6 :1;
        unsigned AT1PER7 :1;
    };
    struct {
        unsigned PER0 :1;
        unsigned PER1 :1;
        unsigned PER2 :1;
        unsigned PER3 :1;
        unsigned PER4 :1;
        unsigned PER5 :1;
        unsigned PER6 :1;
        unsigned PER7 :1;
    };
    struct {
        unsigned PERL0 :1;
        unsigned PERL1 :1;
        unsigned PERL2 :1;
        unsigned PERL3 :1;
        unsigned PERL4 :1;
        unsigned PERL5 :1;
        unsigned PERL6 :1;
        unsigned PERL7 :1;
    };
} AT1PERLbits_t;
extern volatile AT1PERLbits_t AT1PERLbits __attribute__((address(0x810)));
# 16265 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1PERH __attribute__((address(0x811)));

__asm("AT1PERH equ 0811h");


typedef union {
    struct {
        unsigned AT1PER8 :1;
        unsigned AT1PER9 :1;
        unsigned AT1PER10 :1;
        unsigned AT1PER11 :1;
        unsigned AT1PER12 :1;
        unsigned AT1PER13 :1;
        unsigned AT1PER14 :1;
        unsigned AT1POV :1;
    };
    struct {
        unsigned PER8 :1;
        unsigned PER9 :1;
        unsigned PER10 :1;
        unsigned PER11 :1;
        unsigned PER12 :1;
        unsigned PER13 :1;
        unsigned PER14 :1;
        unsigned PER15 :1;
    };
    struct {
        unsigned PERH0 :1;
        unsigned PERH1 :1;
        unsigned PERH2 :1;
        unsigned PERH3 :1;
        unsigned PERH4 :1;
        unsigned PERH5 :1;
        unsigned PERH6 :1;
        unsigned PERH7 :1;
    };
} AT1PERHbits_t;
extern volatile AT1PERHbits_t AT1PERHbits __attribute__((address(0x811)));
# 16427 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short AT1PHS __attribute__((address(0x812)));

__asm("AT1PHS equ 0812h");




extern volatile unsigned char AT1PHSL __attribute__((address(0x812)));

__asm("AT1PHSL equ 0812h");


typedef union {
    struct {
        unsigned AT1PHS0 :1;
        unsigned AT1PHS1 :1;
        unsigned AT1PHS2 :1;
        unsigned AT1PHS3 :1;
        unsigned AT1PHS4 :1;
        unsigned AT1PHS5 :1;
        unsigned AT1PHS6 :1;
        unsigned AT1PHS7 :1;
    };
    struct {
        unsigned PHS0 :1;
        unsigned PHS1 :1;
        unsigned PHS2 :1;
        unsigned PHS3 :1;
        unsigned PHS4 :1;
        unsigned PHS5 :1;
        unsigned PHS6 :1;
        unsigned PHS7 :1;
    };
} AT1PHSLbits_t;
extern volatile AT1PHSLbits_t AT1PHSLbits __attribute__((address(0x812)));
# 16546 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1PHSH __attribute__((address(0x813)));

__asm("AT1PHSH equ 0813h");


typedef union {
    struct {
        unsigned AT1PHS8 :1;
        unsigned AT1PHS9 :1;
    };
    struct {
        unsigned PHS8 :1;
        unsigned PHS9 :1;
    };
    struct {
        unsigned PHSL8 :1;
        unsigned PHSL9 :1;
    };
} AT1PHSHbits_t;
extern volatile AT1PHSHbits_t AT1PHSHbits __attribute__((address(0x813)));
# 16600 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1CON0 __attribute__((address(0x814)));

__asm("AT1CON0 equ 0814h");


typedef union {
    struct {
        unsigned MODE :1;
        unsigned APMOD :1;
        unsigned :1;
        unsigned POL :1;
        unsigned PS :2;
        unsigned PREC :1;
        unsigned EN :1;
    };
    struct {
        unsigned :4;
        unsigned PS0 :1;
        unsigned PS1 :1;
    };
    struct {
        unsigned AT1MODE :1;
        unsigned AT1APMOD :1;
        unsigned :1;
        unsigned AT1POL :1;
        unsigned AT1PS :2;
        unsigned AT1PREC :1;
        unsigned AT1EN :1;
    };
    struct {
        unsigned :4;
        unsigned AT1PS0 :1;
        unsigned AT1PS1 :1;
    };
} AT1CON0bits_t;
extern volatile AT1CON0bits_t AT1CON0bits __attribute__((address(0x814)));
# 16720 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1CON1 __attribute__((address(0x815)));

__asm("AT1CON1 equ 0815h");


typedef union {
    struct {
        unsigned VALID :1;
        unsigned ACCS :1;
        unsigned MPP :1;
        unsigned :1;
        unsigned PRP :1;
        unsigned :1;
        unsigned PHP :1;
    };
    struct {
        unsigned AT1VALID :1;
        unsigned AT1ACCS :1;
        unsigned AT1MPP :1;
        unsigned :1;
        unsigned AT1PRP :1;
        unsigned :1;
        unsigned AT1PHP :1;
    };
} AT1CON1bits_t;
extern volatile AT1CON1bits_t AT1CON1bits __attribute__((address(0x815)));
# 16800 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1IR0 __attribute__((address(0x816)));

__asm("AT1IR0 equ 0816h");


typedef union {
    struct {
        unsigned AT1PERIF :1;
        unsigned AT1MISSIF :1;
        unsigned AT1PHSIF :1;
    };
} AT1IR0bits_t;
extern volatile AT1IR0bits_t AT1IR0bits __attribute__((address(0x816)));
# 16832 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1IE0 __attribute__((address(0x817)));

__asm("AT1IE0 equ 0817h");


typedef union {
    struct {
        unsigned AT1PERIE :1;
        unsigned AT1MISSIE :1;
        unsigned AT1PHSIE :1;
    };
} AT1IE0bits_t;
extern volatile AT1IE0bits_t AT1IE0bits __attribute__((address(0x817)));
# 16864 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1IR1 __attribute__((address(0x818)));

__asm("AT1IR1 equ 0818h");


typedef union {
    struct {
        unsigned AT1CC1IF :1;
        unsigned AT1CC2IF :1;
        unsigned AT1CC3IF :1;
    };
} AT1IR1bits_t;
extern volatile AT1IR1bits_t AT1IR1bits __attribute__((address(0x818)));
# 16896 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1IE1 __attribute__((address(0x819)));

__asm("AT1IE1 equ 0819h");


typedef union {
    struct {
        unsigned AT1CC1IE :1;
        unsigned AT1CC2IE :1;
        unsigned AT1CC3IE :1;
    };
} AT1IE1bits_t;
extern volatile AT1IE1bits_t AT1IE1bits __attribute__((address(0x819)));
# 16928 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short AT1STPT __attribute__((address(0x81A)));

__asm("AT1STPT equ 081Ah");




extern volatile unsigned char AT1STPTL __attribute__((address(0x81A)));

__asm("AT1STPTL equ 081Ah");


typedef union {
    struct {
        unsigned AT1STPT0 :1;
        unsigned AT1STPT1 :1;
        unsigned AT1STPT2 :1;
        unsigned AT1STPT3 :1;
        unsigned AT1STPT4 :1;
        unsigned AT1STPT5 :1;
        unsigned AT1STPT6 :1;
        unsigned AT1STPT7 :1;
    };
    struct {
        unsigned STPT0 :1;
        unsigned STPT1 :1;
        unsigned STPT2 :1;
        unsigned STPT3 :1;
        unsigned STPT4 :1;
        unsigned STPT5 :1;
        unsigned STPT6 :1;
        unsigned STPT7 :1;
    };
} AT1STPTLbits_t;
extern volatile AT1STPTLbits_t AT1STPTLbits __attribute__((address(0x81A)));
# 17047 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1STPTH __attribute__((address(0x81B)));

__asm("AT1STPTH equ 081Bh");


typedef union {
    struct {
        unsigned AT1STPT8 :1;
        unsigned AT1STPT9 :1;
        unsigned AT1STPT10 :1;
        unsigned AT1STPT11 :1;
        unsigned AT1STPT12 :1;
        unsigned AT1STPT13 :1;
        unsigned AT1STPT14 :1;
    };
    struct {
        unsigned STPT8 :1;
        unsigned STPT9 :1;
        unsigned STPT10 :1;
        unsigned STPT11 :1;
        unsigned STPT12 :1;
        unsigned STPT13 :1;
        unsigned STPT14 :1;
    };
} AT1STPTHbits_t;
extern volatile AT1STPTHbits_t AT1STPTHbits __attribute__((address(0x81B)));
# 17147 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short AT1ERR __attribute__((address(0x81C)));

__asm("AT1ERR equ 081Ch");




extern volatile unsigned char AT1ERRL __attribute__((address(0x81C)));

__asm("AT1ERRL equ 081Ch");


typedef union {
    struct {
        unsigned AT1ERR0 :1;
        unsigned AT1ERR1 :1;
        unsigned AT1ERR2 :1;
        unsigned AT1ERR3 :1;
        unsigned AT1ERR4 :1;
        unsigned AT1ERR5 :1;
        unsigned AT1ERR6 :1;
        unsigned AT1ERR7 :1;
    };
    struct {
        unsigned ERR0 :1;
        unsigned ERR1 :1;
        unsigned ERR2 :1;
        unsigned ERR3 :1;
        unsigned ERR4 :1;
        unsigned ERR5 :1;
        unsigned ERR6 :1;
        unsigned ERR7 :1;
    };
    struct {
        unsigned ERRL0 :1;
        unsigned ERRL1 :1;
        unsigned ERRL2 :1;
        unsigned ERRL3 :1;
        unsigned ERRL4 :1;
        unsigned ERRL5 :1;
        unsigned ERRL6 :1;
        unsigned ERRL7 :1;
    };
} AT1ERRLbits_t;
extern volatile AT1ERRLbits_t AT1ERRLbits __attribute__((address(0x81C)));
# 17316 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1ERRH __attribute__((address(0x81D)));

__asm("AT1ERRH equ 081Dh");


typedef union {
    struct {
        unsigned AT1ERR8 :1;
        unsigned AT1ERR9 :1;
        unsigned AT1ERR10 :1;
        unsigned AT1ERR11 :1;
        unsigned AT1ERR12 :1;
        unsigned AT1ERR13 :1;
        unsigned AT1ERR14 :1;
        unsigned AT1ERR15 :1;
    };
    struct {
        unsigned ERR8 :1;
        unsigned ERR9 :1;
        unsigned ERR10 :1;
        unsigned ERR11 :1;
        unsigned ERR12 :1;
        unsigned ERR13 :1;
        unsigned ERR14 :1;
        unsigned ERR15 :1;
    };
    struct {
        unsigned ERRH0 :1;
        unsigned ERRH1 :1;
        unsigned ERRH2 :1;
        unsigned ERRH3 :1;
        unsigned ERRH4 :1;
        unsigned ERRH5 :1;
        unsigned ERRH6 :1;
        unsigned ERRH7 :1;
    };
} AT1ERRHbits_t;
extern volatile AT1ERRHbits_t AT1ERRHbits __attribute__((address(0x81D)));
# 17478 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1CLK __attribute__((address(0x88C)));

__asm("AT1CLK equ 088Ch");


typedef union {
    struct {
        unsigned CS :1;
    };
    struct {
        unsigned AT1CS :1;
    };
    struct {
        unsigned CS0 :1;
    };
    struct {
        unsigned AT1CS0 :1;
    };
} AT1CLKbits_t;
extern volatile AT1CLKbits_t AT1CLKbits __attribute__((address(0x88C)));
# 17522 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1SIG __attribute__((address(0x88D)));

__asm("AT1SIG equ 088Dh");


typedef union {
    struct {
        unsigned SSEL :3;
    };
    struct {
        unsigned AT1SSEL0 :1;
        unsigned AT1SSEL1 :1;
        unsigned AT1SSEL2 :1;
    };
    struct {
        unsigned SSEL0 :1;
        unsigned SSEL1 :1;
        unsigned SSEL2 :1;
    };
    struct {
        unsigned AT1SSEL :3;
    };
} AT1SIGbits_t;
extern volatile AT1SIGbits_t AT1SIGbits __attribute__((address(0x88D)));
# 17590 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1CSEL1 __attribute__((address(0x88E)));

__asm("AT1CSEL1 equ 088Eh");


typedef union {
    struct {
        unsigned CP1S :3;
    };
    struct {
        unsigned AT1CP1S0 :1;
        unsigned AT1CP1S1 :1;
        unsigned AT1CP1S2 :1;
    };
    struct {
        unsigned CP1S0 :1;
        unsigned CP1S1 :1;
        unsigned CP1S2 :1;
    };
    struct {
        unsigned AT1CP1S :3;
    };
} AT1CSEL1bits_t;
extern volatile AT1CSEL1bits_t AT1CSEL1bits __attribute__((address(0x88E)));
# 17658 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short AT1CC1 __attribute__((address(0x88F)));

__asm("AT1CC1 equ 088Fh");




extern volatile unsigned char AT1CC1L __attribute__((address(0x88F)));

__asm("AT1CC1L equ 088Fh");


typedef union {
    struct {
        unsigned AT1CC10 :1;
        unsigned AT1CC11 :1;
        unsigned AT1CC12 :1;
        unsigned AT1CC13 :1;
        unsigned AT1CC14 :1;
        unsigned AT1CC15 :1;
        unsigned AT1CC16 :1;
        unsigned AT1CC17 :1;
    };
    struct {
        unsigned CC10 :1;
        unsigned CC11 :1;
        unsigned CC12 :1;
        unsigned CC13 :1;
        unsigned CC14 :1;
        unsigned CC15 :1;
        unsigned CC16 :1;
        unsigned CC17 :1;
    };
} AT1CC1Lbits_t;
extern volatile AT1CC1Lbits_t AT1CC1Lbits __attribute__((address(0x88F)));
# 17777 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1CC1H __attribute__((address(0x890)));

__asm("AT1CC1H equ 0890h");


typedef union {
    struct {
        unsigned AT1CC18 :1;
        unsigned AT1CC19 :1;
    };
    struct {
        unsigned CC18 :1;
        unsigned CC19 :1;
    };
} AT1CC1Hbits_t;
extern volatile AT1CC1Hbits_t AT1CC1Hbits __attribute__((address(0x890)));
# 17817 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1CCON1 __attribute__((address(0x891)));

__asm("AT1CCON1 equ 0891h");


typedef union {
    struct {
        unsigned AT1CC1MODE :1;
        unsigned :2;
        unsigned AT1CAP1P :1;
        unsigned AT1CC1POL :1;
        unsigned :2;
        unsigned AT1CC1EN :1;
    };
    struct {
        unsigned CC1MODE :1;
        unsigned :2;
        unsigned CAP1P :1;
        unsigned CC1POL :1;
        unsigned :2;
        unsigned CC1EN :1;
    };
} AT1CCON1bits_t;
extern volatile AT1CCON1bits_t AT1CCON1bits __attribute__((address(0x891)));
# 17885 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1CSEL2 __attribute__((address(0x892)));

__asm("AT1CSEL2 equ 0892h");


typedef union {
    struct {
        unsigned AT1CP2S :3;
    };
    struct {
        unsigned AT1CP2S0 :1;
        unsigned AT1CP2S1 :1;
        unsigned AT1CP2S2 :1;
    };
    struct {
        unsigned CP2S :3;
    };
    struct {
        unsigned CP2S0 :1;
        unsigned CP2S1 :1;
        unsigned CP2S2 :1;
    };
} AT1CSEL2bits_t;
extern volatile AT1CSEL2bits_t AT1CSEL2bits __attribute__((address(0x892)));
# 17953 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short AT1CC2 __attribute__((address(0x893)));

__asm("AT1CC2 equ 0893h");




extern volatile unsigned char AT1CC2L __attribute__((address(0x893)));

__asm("AT1CC2L equ 0893h");


typedef union {
    struct {
        unsigned AT1CC20 :1;
        unsigned AT1CC21 :1;
        unsigned AT1CC22 :1;
        unsigned AT1CC23 :1;
        unsigned AT1CC24 :1;
        unsigned AT1CC25 :1;
        unsigned AT1CC26 :1;
        unsigned AT1CC27 :1;
    };
    struct {
        unsigned CC20 :1;
        unsigned CC21 :1;
        unsigned CC22 :1;
        unsigned CC13 :1;
        unsigned CC24 :1;
        unsigned CCW5 :1;
        unsigned CC26 :1;
        unsigned CC27 :1;
    };
} AT1CC2Lbits_t;
extern volatile AT1CC2Lbits_t AT1CC2Lbits __attribute__((address(0x893)));
# 18072 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1CC2H __attribute__((address(0x894)));

__asm("AT1CC2H equ 0894h");


typedef union {
    struct {
        unsigned AT1CC28 :1;
        unsigned AT1CC29 :1;
    };
    struct {
        unsigned CC28 :1;
        unsigned CC29 :1;
    };
} AT1CC2Hbits_t;
extern volatile AT1CC2Hbits_t AT1CC2Hbits __attribute__((address(0x894)));
# 18112 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1CCON2 __attribute__((address(0x895)));

__asm("AT1CCON2 equ 0895h");


typedef union {
    struct {
        unsigned AT1CC2MODE :1;
        unsigned :2;
        unsigned AT1CAP2P :1;
        unsigned AT1CC2POL :1;
        unsigned :2;
        unsigned AT1CC2EN :1;
    };
    struct {
        unsigned CC2MODE :1;
        unsigned :2;
        unsigned CAP2P :1;
        unsigned CC2POL :1;
        unsigned :2;
        unsigned CC2EN :1;
    };
} AT1CCON2bits_t;
extern volatile AT1CCON2bits_t AT1CCON2bits __attribute__((address(0x895)));
# 18180 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1CSEL3 __attribute__((address(0x896)));

__asm("AT1CSEL3 equ 0896h");


typedef union {
    struct {
        unsigned AT1CP3S :3;
    };
    struct {
        unsigned AT1CP3S0 :1;
        unsigned AT1CP3S1 :1;
        unsigned AT1CP3S2 :1;
    };
    struct {
        unsigned CP3S :3;
    };
    struct {
        unsigned CP3S0 :1;
        unsigned CP3S1 :1;
        unsigned CP3S2 :1;
    };
} AT1CSEL3bits_t;
extern volatile AT1CSEL3bits_t AT1CSEL3bits __attribute__((address(0x896)));
# 18248 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned short AT1CC3 __attribute__((address(0x897)));

__asm("AT1CC3 equ 0897h");




extern volatile unsigned char AT1CC3L __attribute__((address(0x897)));

__asm("AT1CC3L equ 0897h");


typedef union {
    struct {
        unsigned AT1CC30 :1;
        unsigned AT1CC31 :1;
        unsigned AT1CC32 :1;
        unsigned AT1CC33 :1;
        unsigned AT1CC34 :1;
        unsigned AT1CC35 :1;
        unsigned AT1CC36 :1;
        unsigned AT1CC37 :1;
    };
    struct {
        unsigned CC30 :1;
        unsigned CC31 :1;
        unsigned CC32 :1;
        unsigned CC33 :1;
        unsigned CC34 :1;
        unsigned CC35 :1;
        unsigned CC36 :1;
        unsigned CC37 :1;
    };
} AT1CC3Lbits_t;
extern volatile AT1CC3Lbits_t AT1CC3Lbits __attribute__((address(0x897)));
# 18367 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1CC3H __attribute__((address(0x898)));

__asm("AT1CC3H equ 0898h");


typedef union {
    struct {
        unsigned AT1CC38 :1;
        unsigned AT1CC39 :1;
    };
    struct {
        unsigned CC38 :1;
        unsigned CC39 :1;
    };
} AT1CC3Hbits_t;
extern volatile AT1CC3Hbits_t AT1CC3Hbits __attribute__((address(0x898)));
# 18407 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char AT1CCON3 __attribute__((address(0x899)));

__asm("AT1CCON3 equ 0899h");


typedef union {
    struct {
        unsigned AT1CC3MODE :1;
        unsigned :2;
        unsigned AT1CAP3P :1;
        unsigned AT1CC3POL :1;
        unsigned :2;
        unsigned AT1CC3EN :1;
    };
    struct {
        unsigned CC3MODE :1;
        unsigned :2;
        unsigned CAP3P :1;
        unsigned CC3POL :1;
        unsigned :2;
        unsigned CC3EN :1;
    };
} AT1CCON3bits_t;
extern volatile AT1CCON3bits_t AT1CCON3bits __attribute__((address(0x899)));
# 18476 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile __uint24 SMT1TMR __attribute__((address(0xD8C)));


__asm("SMT1TMR equ 0D8Ch");




extern volatile unsigned char SMT1TMRL __attribute__((address(0xD8C)));

__asm("SMT1TMRL equ 0D8Ch");


typedef union {
    struct {
        unsigned SMT1TMR :8;
    };
    struct {
        unsigned SMT1TMR0 :1;
        unsigned SMT1TMR1 :1;
        unsigned SMT1TMR2 :1;
        unsigned SMT1TMR3 :1;
        unsigned SMT1TMR4 :1;
        unsigned SMT1TMR5 :1;
        unsigned SMT1TMR6 :1;
        unsigned SMT1TMR7 :1;
    };
} SMT1TMRLbits_t;
extern volatile SMT1TMRLbits_t SMT1TMRLbits __attribute__((address(0xD8C)));
# 18554 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT1TMRH __attribute__((address(0xD8D)));

__asm("SMT1TMRH equ 0D8Dh");


typedef union {
    struct {
        unsigned SMT1TMR :8;
    };
    struct {
        unsigned SMT1TMR8 :1;
        unsigned SMT1TMR9 :1;
        unsigned SMT1TMR10 :1;
        unsigned SMT1TMR11 :1;
        unsigned SMT1TMR12 :1;
        unsigned SMT1TMR13 :1;
        unsigned SMT1TMR14 :1;
        unsigned SMT1TMR15 :1;
    };
} SMT1TMRHbits_t;
extern volatile SMT1TMRHbits_t SMT1TMRHbits __attribute__((address(0xD8D)));
# 18624 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT1TMRU __attribute__((address(0xD8E)));

__asm("SMT1TMRU equ 0D8Eh");


typedef union {
    struct {
        unsigned SMT1TMR :8;
    };
    struct {
        unsigned SMT1TMR16 :1;
        unsigned SMT1TMR17 :1;
        unsigned SMT1TMR18 :1;
        unsigned SMT1TMR19 :1;
        unsigned SMT1TMR20 :1;
        unsigned SMT1TMR21 :1;
        unsigned SMT1TMR22 :1;
        unsigned SMT1TMR23 :1;
    };
} SMT1TMRUbits_t;
extern volatile SMT1TMRUbits_t SMT1TMRUbits __attribute__((address(0xD8E)));
# 18695 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile __uint24 SMT1CPR __attribute__((address(0xD8F)));


__asm("SMT1CPR equ 0D8Fh");




extern volatile unsigned char SMT1CPRL __attribute__((address(0xD8F)));

__asm("SMT1CPRL equ 0D8Fh");


typedef union {
    struct {
        unsigned SMT1CPR :8;
    };
    struct {
        unsigned SMT1CPR0 :1;
        unsigned SMT1CPR1 :1;
        unsigned SMT1CPR2 :1;
        unsigned SMT1CPR3 :1;
        unsigned SMT1CPR4 :1;
        unsigned SMT1CPR5 :1;
        unsigned SMT1CPR6 :1;
        unsigned SMT1CPR7 :1;
    };
} SMT1CPRLbits_t;
extern volatile SMT1CPRLbits_t SMT1CPRLbits __attribute__((address(0xD8F)));
# 18773 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT1CPRH __attribute__((address(0xD90)));

__asm("SMT1CPRH equ 0D90h");


typedef union {
    struct {
        unsigned SMT1CPR :8;
    };
    struct {
        unsigned SMT1CPR8 :1;
        unsigned SMT1CPR9 :1;
        unsigned SMT1CPR10 :1;
        unsigned SMT1CPR11 :1;
        unsigned SMT1CPR12 :1;
        unsigned SMT1CPR13 :1;
        unsigned SMT1CPR14 :1;
        unsigned SMT1CPR15 :1;
    };
} SMT1CPRHbits_t;
extern volatile SMT1CPRHbits_t SMT1CPRHbits __attribute__((address(0xD90)));
# 18843 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT1CPRU __attribute__((address(0xD91)));

__asm("SMT1CPRU equ 0D91h");


typedef union {
    struct {
        unsigned SMT1CPR :8;
    };
    struct {
        unsigned SMT1CPR16 :1;
        unsigned SMT1CPR17 :1;
        unsigned SMT1CPR18 :1;
        unsigned SMT1CPR19 :1;
        unsigned SMT1CPR20 :1;
        unsigned SMT1CPR21 :1;
        unsigned SMT1CPR22 :1;
        unsigned SMT1CPR23 :1;
    };
} SMT1CPRUbits_t;
extern volatile SMT1CPRUbits_t SMT1CPRUbits __attribute__((address(0xD91)));
# 18914 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile __uint24 SMT1CPW __attribute__((address(0xD92)));


__asm("SMT1CPW equ 0D92h");




extern volatile unsigned char SMT1CPWL __attribute__((address(0xD92)));

__asm("SMT1CPWL equ 0D92h");


typedef union {
    struct {
        unsigned SMT1CPW :8;
    };
    struct {
        unsigned SMT1CPW0 :1;
        unsigned SMT1CPW1 :1;
        unsigned SMT1CPW2 :1;
        unsigned SMT1CPW3 :1;
        unsigned SMT1CPW4 :1;
        unsigned SMT1CPW5 :1;
        unsigned SMT1CPW6 :1;
        unsigned SMT1CPW7 :1;
    };
} SMT1CPWLbits_t;
extern volatile SMT1CPWLbits_t SMT1CPWLbits __attribute__((address(0xD92)));
# 18992 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT1CPWH __attribute__((address(0xD93)));

__asm("SMT1CPWH equ 0D93h");


typedef union {
    struct {
        unsigned SMT1CPW :8;
    };
    struct {
        unsigned SMT1CPW8 :1;
        unsigned SMT1CPW9 :1;
        unsigned SMT1CPW10 :1;
        unsigned SMT1CPW11 :1;
        unsigned SMT1CPW12 :1;
        unsigned SMT1CPW13 :1;
        unsigned SMT1CPW14 :1;
        unsigned SMT1CPW15 :1;
    };
} SMT1CPWHbits_t;
extern volatile SMT1CPWHbits_t SMT1CPWHbits __attribute__((address(0xD93)));
# 19062 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT1CPWU __attribute__((address(0xD94)));

__asm("SMT1CPWU equ 0D94h");


typedef union {
    struct {
        unsigned SMT1CPW :8;
    };
    struct {
        unsigned SMT1CPW16 :1;
        unsigned SMT1CPW17 :1;
        unsigned SMT1CPW18 :1;
        unsigned SMT1CPW19 :1;
        unsigned SMT1CPW20 :1;
        unsigned SMT1CPW21 :1;
        unsigned SMT1CPW22 :1;
        unsigned SMT1CPW23 :1;
    };
} SMT1CPWUbits_t;
extern volatile SMT1CPWUbits_t SMT1CPWUbits __attribute__((address(0xD94)));
# 19133 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile __uint24 SMT1PR __attribute__((address(0xD95)));


__asm("SMT1PR equ 0D95h");




extern volatile unsigned char SMT1PRL __attribute__((address(0xD95)));

__asm("SMT1PRL equ 0D95h");


typedef union {
    struct {
        unsigned SMT1PR :8;
    };
    struct {
        unsigned SMT1PR0 :1;
        unsigned SMT1PR1 :1;
        unsigned SMT1PR2 :1;
        unsigned SMT1PR3 :1;
        unsigned SMT1PR4 :1;
        unsigned SMT1PR5 :1;
        unsigned SMT1PR6 :1;
        unsigned SMT1PR7 :1;
    };
} SMT1PRLbits_t;
extern volatile SMT1PRLbits_t SMT1PRLbits __attribute__((address(0xD95)));
# 19211 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT1PRH __attribute__((address(0xD96)));

__asm("SMT1PRH equ 0D96h");


typedef union {
    struct {
        unsigned SMT1PR :8;
    };
    struct {
        unsigned SMT1PR8 :1;
        unsigned SMT1PR9 :1;
        unsigned SMT1PR10 :1;
        unsigned SMT1PR11 :1;
        unsigned SMT1PR12 :1;
        unsigned SMT1PR13 :1;
        unsigned SMT1PR14 :1;
        unsigned SMT1PR15 :1;
    };
} SMT1PRHbits_t;
extern volatile SMT1PRHbits_t SMT1PRHbits __attribute__((address(0xD96)));
# 19281 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT1PRU __attribute__((address(0xD97)));

__asm("SMT1PRU equ 0D97h");


typedef union {
    struct {
        unsigned SMT1PR :8;
    };
    struct {
        unsigned SMT1PR16 :1;
        unsigned SMT1PR17 :1;
        unsigned SMT1PR18 :1;
        unsigned SMT1PR19 :1;
        unsigned SMT1PR20 :1;
        unsigned SMT1PR21 :1;
        unsigned SMT1PR22 :1;
        unsigned SMT1PR23 :1;
    };
} SMT1PRUbits_t;
extern volatile SMT1PRUbits_t SMT1PRUbits __attribute__((address(0xD97)));
# 19351 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT1CON0 __attribute__((address(0xD98)));

__asm("SMT1CON0 equ 0D98h");


typedef union {
    struct {
        unsigned SMT1PS :2;
        unsigned CPOL :1;
        unsigned SPOL :1;
        unsigned WPOL :1;
        unsigned STP :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned SMT1PS0 :1;
        unsigned SMT1PS1 :1;
    };
} SMT1CON0bits_t;
extern volatile SMT1CON0bits_t SMT1CON0bits __attribute__((address(0xD98)));
# 19416 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT1CON1 __attribute__((address(0xD99)));

__asm("SMT1CON1 equ 0D99h");


typedef union {
    struct {
        unsigned MODE :4;
        unsigned :2;
        unsigned REPEAT :1;
        unsigned SMT1GO :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
    };
    struct {
        unsigned SMT1MODE :4;
        unsigned :2;
        unsigned SMT1REPEAT :1;
    };
    struct {
        unsigned SMT1MODE0 :1;
        unsigned SMT1MODE1 :1;
        unsigned SMT1MODE2 :1;
        unsigned SMT1MODE3 :1;
    };
} SMT1CON1bits_t;
extern volatile SMT1CON1bits_t SMT1CON1bits __attribute__((address(0xD99)));
# 19516 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT1STAT __attribute__((address(0xD9A)));

__asm("SMT1STAT equ 0D9Ah");


typedef union {
    struct {
        unsigned AS :1;
        unsigned WS :1;
        unsigned TS :1;
        unsigned :2;
        unsigned RST :1;
        unsigned CPWUP :1;
        unsigned CPRUP :1;
    };
    struct {
        unsigned SMT1AS :1;
        unsigned SMT1WS :1;
        unsigned SMT1TS :1;
        unsigned :2;
        unsigned SMT1RESET :1;
        unsigned SMT1CPWUP :1;
        unsigned SMT1CPRUP :1;
    };
} SMT1STATbits_t;
extern volatile SMT1STATbits_t SMT1STATbits __attribute__((address(0xD9A)));
# 19606 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT1CLK __attribute__((address(0xD9B)));

__asm("SMT1CLK equ 0D9Bh");


typedef union {
    struct {
        unsigned CSEL :8;
    };
    struct {
        unsigned CSEL0 :1;
        unsigned CSEL1 :1;
        unsigned CSEL2 :1;
    };
    struct {
        unsigned SMT1CSEL :8;
    };
    struct {
        unsigned SMT1CSEL0 :1;
        unsigned SMT1CSEL1 :1;
        unsigned SMT1CSEL2 :1;
    };
} SMT1CLKbits_t;
extern volatile SMT1CLKbits_t SMT1CLKbits __attribute__((address(0xD9B)));
# 19674 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT1SIG __attribute__((address(0xD9C)));

__asm("SMT1SIG equ 0D9Ch");


typedef union {
    struct {
        unsigned SSEL :8;
    };
    struct {
        unsigned SSEL0 :1;
        unsigned SSEL1 :1;
        unsigned SSEL2 :1;
        unsigned SSEL3 :1;
        unsigned SSEL4 :1;
    };
    struct {
        unsigned SMT1SSEL :8;
    };
    struct {
        unsigned SMT1SSEL0 :1;
        unsigned SMT1SSEL1 :1;
        unsigned SMT1SSEL2 :1;
        unsigned SMT1SSEL3 :1;
        unsigned SMT1SSEL4 :1;
    };
} SMT1SIGbits_t;
extern volatile SMT1SIGbits_t SMT1SIGbits __attribute__((address(0xD9C)));
# 19766 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT1WIN __attribute__((address(0xD9D)));

__asm("SMT1WIN equ 0D9Dh");


typedef union {
    struct {
        unsigned WSEL :8;
    };
    struct {
        unsigned WSEL0 :1;
        unsigned WSEL1 :1;
        unsigned WSEL2 :1;
        unsigned WSEL3 :1;
        unsigned WSEL4 :1;
    };
    struct {
        unsigned SMT1WSEL :8;
    };
    struct {
        unsigned SMT1WSEL0 :1;
        unsigned SMT1WSEL1 :1;
        unsigned SMT1WSEL2 :1;
        unsigned SMT1WSEL3 :1;
        unsigned SMT1WSEL4 :1;
    };
} SMT1WINbits_t;
extern volatile SMT1WINbits_t SMT1WINbits __attribute__((address(0xD9D)));
# 19859 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile __uint24 SMT2TMR __attribute__((address(0xD9E)));


__asm("SMT2TMR equ 0D9Eh");




extern volatile unsigned char SMT2TMRL __attribute__((address(0xD9E)));

__asm("SMT2TMRL equ 0D9Eh");


typedef union {
    struct {
        unsigned SMT2TMR :8;
    };
    struct {
        unsigned SMT2TMR0 :1;
        unsigned SMT2TMR1 :1;
        unsigned SMT2TMR2 :1;
        unsigned SMT2TMR3 :1;
        unsigned SMT2TMR4 :1;
        unsigned SMT2TMR5 :1;
        unsigned SMT2TMR6 :1;
        unsigned SMT2TMR7 :1;
    };
} SMT2TMRLbits_t;
extern volatile SMT2TMRLbits_t SMT2TMRLbits __attribute__((address(0xD9E)));
# 19937 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT2TMRH __attribute__((address(0xD9F)));

__asm("SMT2TMRH equ 0D9Fh");


typedef union {
    struct {
        unsigned SMT2TMR :8;
    };
    struct {
        unsigned SMT2TMR8 :1;
        unsigned SMT2TMR9 :1;
        unsigned SMT2TMR10 :1;
        unsigned SMT2TMR11 :1;
        unsigned SMT2TMR12 :1;
        unsigned SMT2TMR13 :1;
        unsigned SMT2TMR14 :1;
        unsigned SMT2TMR15 :1;
    };
} SMT2TMRHbits_t;
extern volatile SMT2TMRHbits_t SMT2TMRHbits __attribute__((address(0xD9F)));
# 20007 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT2TMRU __attribute__((address(0xDA0)));

__asm("SMT2TMRU equ 0DA0h");


typedef union {
    struct {
        unsigned SMT2TMR :8;
    };
    struct {
        unsigned SMT2TMR16 :1;
        unsigned SMT2TMR17 :1;
        unsigned SMT2TMR18 :1;
        unsigned SMT2TMR19 :1;
        unsigned SMT2TMR20 :1;
        unsigned SMT2TMR21 :1;
        unsigned SMT2TMR22 :1;
        unsigned SMT2TMR23 :1;
    };
} SMT2TMRUbits_t;
extern volatile SMT2TMRUbits_t SMT2TMRUbits __attribute__((address(0xDA0)));
# 20078 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile __uint24 SMT2CPR __attribute__((address(0xDA1)));


__asm("SMT2CPR equ 0DA1h");




extern volatile unsigned char SMT2CPRL __attribute__((address(0xDA1)));

__asm("SMT2CPRL equ 0DA1h");


typedef union {
    struct {
        unsigned SMT2CPR :8;
    };
    struct {
        unsigned SMT2CPR0 :1;
        unsigned SMT2CPR1 :1;
        unsigned SMT2CPR2 :1;
        unsigned SMT2CPR3 :1;
        unsigned SMT2CPR4 :1;
        unsigned SMT2CPR5 :1;
        unsigned SMT2CPR6 :1;
        unsigned SMT2CPR7 :1;
    };
} SMT2CPRLbits_t;
extern volatile SMT2CPRLbits_t SMT2CPRLbits __attribute__((address(0xDA1)));
# 20156 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT2CPRH __attribute__((address(0xDA2)));

__asm("SMT2CPRH equ 0DA2h");


typedef union {
    struct {
        unsigned SMT2CPR :8;
    };
    struct {
        unsigned SMT2CPR8 :1;
        unsigned SMT2CPR9 :1;
        unsigned SMT2CPR10 :1;
        unsigned SMT2CPR11 :1;
        unsigned SMT2CPR12 :1;
        unsigned SMT2CPR13 :1;
        unsigned SMT2CPR14 :1;
        unsigned SMT2CPR15 :1;
    };
} SMT2CPRHbits_t;
extern volatile SMT2CPRHbits_t SMT2CPRHbits __attribute__((address(0xDA2)));
# 20226 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT2CPRU __attribute__((address(0xDA3)));

__asm("SMT2CPRU equ 0DA3h");


typedef union {
    struct {
        unsigned SMT2CPR :8;
    };
    struct {
        unsigned SMT2CPR16 :1;
        unsigned SMT2CPR17 :1;
        unsigned SMT2CPR18 :1;
        unsigned SMT2CPR19 :1;
        unsigned SMT2CPR20 :1;
        unsigned SMT2CPR21 :1;
        unsigned SMT2CPR22 :1;
        unsigned SMT2CPR23 :1;
    };
} SMT2CPRUbits_t;
extern volatile SMT2CPRUbits_t SMT2CPRUbits __attribute__((address(0xDA3)));
# 20297 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile __uint24 SMT2CPW __attribute__((address(0xDA4)));


__asm("SMT2CPW equ 0DA4h");




extern volatile unsigned char SMT2CPWL __attribute__((address(0xDA4)));

__asm("SMT2CPWL equ 0DA4h");


typedef union {
    struct {
        unsigned SMT2CPW :8;
    };
    struct {
        unsigned SMT2CPW0 :1;
        unsigned SMT2CPW1 :1;
        unsigned SMT2CPW2 :1;
        unsigned SMT2CPW3 :1;
        unsigned SMT2CPW4 :1;
        unsigned SMT2CPW5 :1;
        unsigned SMT2CPW6 :1;
        unsigned SMT2CPW7 :1;
    };
} SMT2CPWLbits_t;
extern volatile SMT2CPWLbits_t SMT2CPWLbits __attribute__((address(0xDA4)));
# 20375 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT2CPWH __attribute__((address(0xDA5)));

__asm("SMT2CPWH equ 0DA5h");


typedef union {
    struct {
        unsigned SMT2CPW :8;
    };
    struct {
        unsigned SMT2CPW8 :1;
        unsigned SMT2CPW9 :1;
        unsigned SMT2CPW10 :1;
        unsigned SMT2CPW11 :1;
        unsigned SMT2CPW12 :1;
        unsigned SMT2CPW13 :1;
        unsigned SMT2CPW14 :1;
        unsigned SMT2CPW15 :1;
    };
} SMT2CPWHbits_t;
extern volatile SMT2CPWHbits_t SMT2CPWHbits __attribute__((address(0xDA5)));
# 20445 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT2CPWU __attribute__((address(0xDA6)));

__asm("SMT2CPWU equ 0DA6h");


typedef union {
    struct {
        unsigned SMT2CPW :8;
    };
    struct {
        unsigned SMT2CPW16 :1;
        unsigned SMT2CPW17 :1;
        unsigned SMT2CPW18 :1;
        unsigned SMT2CPW19 :1;
        unsigned SMT2CPW20 :1;
        unsigned SMT2CPW21 :1;
        unsigned SMT2CPW22 :1;
        unsigned SMT2CPW23 :1;
    };
} SMT2CPWUbits_t;
extern volatile SMT2CPWUbits_t SMT2CPWUbits __attribute__((address(0xDA6)));
# 20516 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile __uint24 SMT2PR __attribute__((address(0xDA7)));


__asm("SMT2PR equ 0DA7h");




extern volatile unsigned char SMT2PRL __attribute__((address(0xDA7)));

__asm("SMT2PRL equ 0DA7h");


typedef union {
    struct {
        unsigned SMT2PR :8;
    };
    struct {
        unsigned SMT2PR0 :1;
        unsigned SMT2PR1 :1;
        unsigned SMT2PR2 :1;
        unsigned SMT2PR3 :1;
        unsigned SMT2PR4 :1;
        unsigned SMT2PR5 :1;
        unsigned SMT2PR6 :1;
        unsigned SMT2PR7 :1;
    };
} SMT2PRLbits_t;
extern volatile SMT2PRLbits_t SMT2PRLbits __attribute__((address(0xDA7)));
# 20594 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT2PRH __attribute__((address(0xDA8)));

__asm("SMT2PRH equ 0DA8h");


typedef union {
    struct {
        unsigned SMT2PR :8;
    };
    struct {
        unsigned SMT2PR8 :1;
        unsigned SMT2PR9 :1;
        unsigned SMT2PR10 :1;
        unsigned SMT2PR11 :1;
        unsigned SMT2PR12 :1;
        unsigned SMT2PR13 :1;
        unsigned SMT2PR14 :1;
        unsigned SMT2PR15 :1;
    };
} SMT2PRHbits_t;
extern volatile SMT2PRHbits_t SMT2PRHbits __attribute__((address(0xDA8)));
# 20664 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT2PRU __attribute__((address(0xDA9)));

__asm("SMT2PRU equ 0DA9h");


typedef union {
    struct {
        unsigned SMT2PR :8;
    };
    struct {
        unsigned SMT2PR16 :1;
        unsigned SMT2PR17 :1;
        unsigned SMT2PR18 :1;
        unsigned SMT2PR19 :1;
        unsigned SMT2PR20 :1;
        unsigned SMT2PR21 :1;
        unsigned SMT2PR22 :1;
        unsigned SMT2PR23 :1;
    };
} SMT2PRUbits_t;
extern volatile SMT2PRUbits_t SMT2PRUbits __attribute__((address(0xDA9)));
# 20734 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT2CON0 __attribute__((address(0xDAA)));

__asm("SMT2CON0 equ 0DAAh");


typedef union {
    struct {
        unsigned SMT2PS :2;
        unsigned CPOL :1;
        unsigned SPOL :1;
        unsigned WPOL :1;
        unsigned STP :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned SMT2PS0 :1;
        unsigned SMT2PS1 :1;
    };
} SMT2CON0bits_t;
extern volatile SMT2CON0bits_t SMT2CON0bits __attribute__((address(0xDAA)));
# 20799 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT2CON1 __attribute__((address(0xDAB)));

__asm("SMT2CON1 equ 0DABh");


typedef union {
    struct {
        unsigned MODE :4;
        unsigned :2;
        unsigned REPEAT :1;
        unsigned SMT2GO :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
    };
    struct {
        unsigned SMT2MODE :4;
        unsigned :2;
        unsigned SMT2REPEAT :1;
    };
    struct {
        unsigned SMT2MODE0 :1;
        unsigned SMT2MODE1 :1;
        unsigned SMT2MODE2 :1;
        unsigned SMT2MODE3 :1;
    };
} SMT2CON1bits_t;
extern volatile SMT2CON1bits_t SMT2CON1bits __attribute__((address(0xDAB)));
# 20899 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT2STAT __attribute__((address(0xDAC)));

__asm("SMT2STAT equ 0DACh");


typedef union {
    struct {
        unsigned AS :1;
        unsigned WS :1;
        unsigned TS :1;
        unsigned :2;
        unsigned RST :1;
        unsigned CPWUP :1;
        unsigned CPRUP :1;
    };
    struct {
        unsigned SMT2AS :1;
        unsigned SMT2WS :1;
        unsigned SMT2TS :1;
        unsigned :2;
        unsigned SMT2RESET :1;
        unsigned SMT2CPWUP :1;
        unsigned SMT2CPRUP :1;
    };
} SMT2STATbits_t;
extern volatile SMT2STATbits_t SMT2STATbits __attribute__((address(0xDAC)));
# 20989 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT2CLK __attribute__((address(0xDAD)));

__asm("SMT2CLK equ 0DADh");


typedef union {
    struct {
        unsigned CSEL :8;
    };
    struct {
        unsigned CSEL0 :1;
        unsigned CSEL1 :1;
        unsigned CSEL2 :1;
    };
    struct {
        unsigned SMT2CSEL :8;
    };
    struct {
        unsigned SMT2CSEL0 :1;
        unsigned SMT2CSEL1 :1;
        unsigned SMT2CSEL2 :1;
    };
} SMT2CLKbits_t;
extern volatile SMT2CLKbits_t SMT2CLKbits __attribute__((address(0xDAD)));
# 21057 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT2SIG __attribute__((address(0xDAE)));

__asm("SMT2SIG equ 0DAEh");


typedef union {
    struct {
        unsigned SSEL :8;
    };
    struct {
        unsigned SSEL0 :1;
        unsigned SSEL1 :1;
        unsigned SSEL2 :1;
        unsigned SSEL3 :1;
        unsigned SSEL4 :1;
    };
    struct {
        unsigned SMT2SSEL :8;
    };
    struct {
        unsigned SMT2SSEL0 :1;
        unsigned SMT2SSEL1 :1;
        unsigned SMT2SSEL2 :1;
        unsigned SMT2SSEL3 :1;
        unsigned SMT2SSEL4 :1;
    };
} SMT2SIGbits_t;
extern volatile SMT2SIGbits_t SMT2SIGbits __attribute__((address(0xDAE)));
# 21149 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT2WIN __attribute__((address(0xDAF)));

__asm("SMT2WIN equ 0DAFh");


typedef union {
    struct {
        unsigned WSEL :8;
    };
    struct {
        unsigned WSEL0 :1;
        unsigned WSEL1 :1;
        unsigned WSEL2 :1;
        unsigned WSEL3 :1;
        unsigned WSEL4 :1;
    };
    struct {
        unsigned SMT2WSEL :8;
    };
    struct {
        unsigned SMT2WSEL0 :1;
        unsigned SMT2WSEL1 :1;
        unsigned SMT2WSEL2 :1;
        unsigned SMT2WSEL3 :1;
        unsigned SMT2WSEL4 :1;
    };
} SMT2WINbits_t;
extern volatile SMT2WINbits_t SMT2WINbits __attribute__((address(0xDAF)));
# 21241 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PPSLOCK __attribute__((address(0xE0F)));

__asm("PPSLOCK equ 0E0Fh");


typedef union {
    struct {
        unsigned PPSLOCKED :1;
    };
} PPSLOCKbits_t;
extern volatile PPSLOCKbits_t PPSLOCKbits __attribute__((address(0xE0F)));
# 21261 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char INTPPS __attribute__((address(0xE10)));

__asm("INTPPS equ 0E10h");


typedef union {
    struct {
        unsigned INTPPS :5;
    };
    struct {
        unsigned INTPPS0 :1;
        unsigned INTPPS1 :1;
        unsigned INTPPS2 :1;
        unsigned INTPPS3 :1;
        unsigned INTPPS4 :1;
    };
} INTPPSbits_t;
extern volatile INTPPSbits_t INTPPSbits __attribute__((address(0xE10)));
# 21313 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T0CKIPPS __attribute__((address(0xE11)));

__asm("T0CKIPPS equ 0E11h");


typedef union {
    struct {
        unsigned T0CKIPPS :5;
    };
    struct {
        unsigned T0CKIPPS0 :1;
        unsigned T0CKIPPS1 :1;
        unsigned T0CKIPPS2 :1;
        unsigned T0CKIPPS3 :1;
        unsigned T0CKIPPS4 :1;
    };
} T0CKIPPSbits_t;
extern volatile T0CKIPPSbits_t T0CKIPPSbits __attribute__((address(0xE11)));
# 21365 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T1CKIPPS __attribute__((address(0xE12)));

__asm("T1CKIPPS equ 0E12h");


typedef union {
    struct {
        unsigned T1CKIPPS :5;
    };
    struct {
        unsigned T1CKIPPS0 :1;
        unsigned T1CKIPPS1 :1;
        unsigned T1CKIPPS2 :1;
        unsigned T1CKIPPS3 :1;
        unsigned T1CKIPPS4 :1;
    };
} T1CKIPPSbits_t;
extern volatile T1CKIPPSbits_t T1CKIPPSbits __attribute__((address(0xE12)));
# 21417 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T1GPPS __attribute__((address(0xE13)));

__asm("T1GPPS equ 0E13h");


typedef union {
    struct {
        unsigned T1GPPS :5;
    };
    struct {
        unsigned T1GPPS0 :1;
        unsigned T1GPPS1 :1;
        unsigned T1GPPS2 :1;
        unsigned T1GPPS3 :1;
        unsigned T1GPPS4 :1;
    };
} T1GPPSbits_t;
extern volatile T1GPPSbits_t T1GPPSbits __attribute__((address(0xE13)));
# 21469 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CCP1PPS __attribute__((address(0xE14)));

__asm("CCP1PPS equ 0E14h");


typedef union {
    struct {
        unsigned CCP1PPS :5;
    };
    struct {
        unsigned CCP1PPS0 :1;
        unsigned CCP1PPS1 :1;
        unsigned CCP1PPS2 :1;
        unsigned CCP1PPS3 :1;
        unsigned CCP1PPS4 :1;
    };
} CCP1PPSbits_t;
extern volatile CCP1PPSbits_t CCP1PPSbits __attribute__((address(0xE14)));
# 21521 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CCP2PPS __attribute__((address(0xE15)));

__asm("CCP2PPS equ 0E15h");


typedef union {
    struct {
        unsigned CCP2PPS :5;
    };
    struct {
        unsigned CCP2PPS0 :1;
        unsigned CCP2PPS1 :1;
        unsigned CCP2PPS2 :1;
        unsigned CCP2PPS3 :1;
        unsigned CCP2PPS4 :1;
    };
} CCP2PPSbits_t;
extern volatile CCP2PPSbits_t CCP2PPSbits __attribute__((address(0xE15)));
# 21573 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char ATINPPS __attribute__((address(0xE16)));

__asm("ATINPPS equ 0E16h");


typedef union {
    struct {
        unsigned ATINPPS :5;
    };
    struct {
        unsigned ATINPPS0 :1;
        unsigned ATINPPS1 :1;
        unsigned ATINPPS2 :1;
        unsigned ATINPPS3 :1;
        unsigned ATINPPS4 :1;
    };
} ATINPPSbits_t;
extern volatile ATINPPSbits_t ATINPPSbits __attribute__((address(0xE16)));
# 21625 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CWG1INPPS __attribute__((address(0xE17)));

__asm("CWG1INPPS equ 0E17h");


extern volatile unsigned char CWGINPPS __attribute__((address(0xE17)));

__asm("CWGINPPS equ 0E17h");


typedef union {
    struct {
        unsigned CWG1INPPS :5;
    };
    struct {
        unsigned CWGINPPS0 :1;
        unsigned CWGINPPS1 :1;
        unsigned CWGINPPS2 :1;
        unsigned CWGINPPS3 :1;
        unsigned CWGINPPS4 :1;
    };
    struct {
        unsigned CWG1INPPS0 :1;
        unsigned CWG1INPPS1 :1;
        unsigned CWG1INPPS2 :1;
        unsigned CWG1INPPS3 :1;
        unsigned CWG1INPPS4 :1;
    };
} CWG1INPPSbits_t;
extern volatile CWG1INPPSbits_t CWG1INPPSbits __attribute__((address(0xE17)));
# 21712 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned CWG1INPPS :5;
    };
    struct {
        unsigned CWGINPPS0 :1;
        unsigned CWGINPPS1 :1;
        unsigned CWGINPPS2 :1;
        unsigned CWGINPPS3 :1;
        unsigned CWGINPPS4 :1;
    };
    struct {
        unsigned CWG1INPPS0 :1;
        unsigned CWG1INPPS1 :1;
        unsigned CWG1INPPS2 :1;
        unsigned CWG1INPPS3 :1;
        unsigned CWG1INPPS4 :1;
    };
} CWGINPPSbits_t;
extern volatile CWGINPPSbits_t CWGINPPSbits __attribute__((address(0xE17)));
# 21791 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T2CKIPPS __attribute__((address(0xE18)));

__asm("T2CKIPPS equ 0E18h");


extern volatile unsigned char T2PPS __attribute__((address(0xE18)));

__asm("T2PPS equ 0E18h");


typedef union {
    struct {
        unsigned T2CKIPPS :5;
    };
    struct {
        unsigned T2CKIPPS0 :1;
        unsigned T2CKIPPS1 :1;
        unsigned T2CKIPPS2 :1;
        unsigned T2CKIPPS3 :1;
        unsigned T2CKIPPS4 :1;
    };
    struct {
        unsigned T2PPS :5;
    };
    struct {
        unsigned T2PPS0 :1;
        unsigned T2PPS1 :1;
        unsigned T2PPS2 :1;
        unsigned T2PPS3 :1;
        unsigned T2PPS4 :1;
    };
} T2CKIPPSbits_t;
extern volatile T2CKIPPSbits_t T2CKIPPSbits __attribute__((address(0xE18)));
# 21886 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned T2CKIPPS :5;
    };
    struct {
        unsigned T2CKIPPS0 :1;
        unsigned T2CKIPPS1 :1;
        unsigned T2CKIPPS2 :1;
        unsigned T2CKIPPS3 :1;
        unsigned T2CKIPPS4 :1;
    };
    struct {
        unsigned T2PPS :5;
    };
    struct {
        unsigned T2PPS0 :1;
        unsigned T2PPS1 :1;
        unsigned T2PPS2 :1;
        unsigned T2PPS3 :1;
        unsigned T2PPS4 :1;
    };
} T2PPSbits_t;
extern volatile T2PPSbits_t T2PPSbits __attribute__((address(0xE18)));
# 21973 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T3CKIPPS __attribute__((address(0xE19)));

__asm("T3CKIPPS equ 0E19h");


typedef union {
    struct {
        unsigned T3CKIPPS :5;
    };
    struct {
        unsigned T3CKIPPS0 :1;
        unsigned T3CKIPPS1 :1;
        unsigned T3CKIPPS2 :1;
        unsigned T3CKIPPS3 :1;
        unsigned T3CKIPPS4 :1;
    };
} T3CKIPPSbits_t;
extern volatile T3CKIPPSbits_t T3CKIPPSbits __attribute__((address(0xE19)));
# 22025 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T3GPPS __attribute__((address(0xE1A)));

__asm("T3GPPS equ 0E1Ah");


typedef union {
    struct {
        unsigned T3GPPS :5;
    };
    struct {
        unsigned T3GPPS0 :1;
        unsigned T3GPPS1 :1;
        unsigned T3GPPS2 :1;
        unsigned T3GPPS3 :1;
        unsigned T3GPPS4 :1;
    };
} T3GPPSbits_t;
extern volatile T3GPPSbits_t T3GPPSbits __attribute__((address(0xE1A)));
# 22077 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T4CKIPPS __attribute__((address(0xE1B)));

__asm("T4CKIPPS equ 0E1Bh");


extern volatile unsigned char T4PPS __attribute__((address(0xE1B)));

__asm("T4PPS equ 0E1Bh");


typedef union {
    struct {
        unsigned T4CKIPPS :5;
    };
    struct {
        unsigned T4CKIPPS0 :1;
        unsigned T4CKIPPS1 :1;
        unsigned T4CKIPPS2 :1;
        unsigned T4CKIPPS3 :1;
        unsigned T4CKIPPS4 :1;
    };
    struct {
        unsigned T4PPS :5;
    };
    struct {
        unsigned T4PPS0 :1;
        unsigned T4PPS1 :1;
        unsigned T4PPS2 :1;
        unsigned T4PPS3 :1;
        unsigned T4PPS4 :1;
    };
} T4CKIPPSbits_t;
extern volatile T4CKIPPSbits_t T4CKIPPSbits __attribute__((address(0xE1B)));
# 22172 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned T4CKIPPS :5;
    };
    struct {
        unsigned T4CKIPPS0 :1;
        unsigned T4CKIPPS1 :1;
        unsigned T4CKIPPS2 :1;
        unsigned T4CKIPPS3 :1;
        unsigned T4CKIPPS4 :1;
    };
    struct {
        unsigned T4PPS :5;
    };
    struct {
        unsigned T4PPS0 :1;
        unsigned T4PPS1 :1;
        unsigned T4PPS2 :1;
        unsigned T4PPS3 :1;
        unsigned T4PPS4 :1;
    };
} T4PPSbits_t;
extern volatile T4PPSbits_t T4PPSbits __attribute__((address(0xE1B)));
# 22259 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T5CKIPPS __attribute__((address(0xE1C)));

__asm("T5CKIPPS equ 0E1Ch");


typedef union {
    struct {
        unsigned T5CKIPPS :5;
    };
    struct {
        unsigned T5CKIPPS0 :1;
        unsigned T5CKIPPS1 :1;
        unsigned T5CKIPPS2 :1;
        unsigned T5CKIPPS3 :1;
        unsigned T5CKIPPS4 :1;
    };
} T5CKIPPSbits_t;
extern volatile T5CKIPPSbits_t T5CKIPPSbits __attribute__((address(0xE1C)));
# 22311 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T5GPPS __attribute__((address(0xE1D)));

__asm("T5GPPS equ 0E1Dh");


typedef union {
    struct {
        unsigned T5GPPS :5;
    };
    struct {
        unsigned T5GPPS0 :1;
        unsigned T5GPPS1 :1;
        unsigned T5GPPS2 :1;
        unsigned T5GPPS3 :1;
        unsigned T5GPPS4 :1;
    };
} T5GPPSbits_t;
extern volatile T5GPPSbits_t T5GPPSbits __attribute__((address(0xE1D)));
# 22363 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char T6CKIPPS __attribute__((address(0xE1E)));

__asm("T6CKIPPS equ 0E1Eh");


extern volatile unsigned char T6PPS __attribute__((address(0xE1E)));

__asm("T6PPS equ 0E1Eh");


typedef union {
    struct {
        unsigned T6CKIPPS :5;
    };
    struct {
        unsigned T6CKIPPS0 :1;
        unsigned T6CKIPPS1 :1;
        unsigned T6CKIPPS2 :1;
        unsigned T6CKIPPS3 :1;
        unsigned T6CKIPPS4 :1;
    };
    struct {
        unsigned T6PPS :5;
    };
    struct {
        unsigned T6PPS0 :1;
        unsigned T6PPS1 :1;
        unsigned T6PPS2 :1;
        unsigned T6PPS3 :1;
        unsigned T6PPS4 :1;
    };
} T6CKIPPSbits_t;
extern volatile T6CKIPPSbits_t T6CKIPPSbits __attribute__((address(0xE1E)));
# 22458 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
typedef union {
    struct {
        unsigned T6CKIPPS :5;
    };
    struct {
        unsigned T6CKIPPS0 :1;
        unsigned T6CKIPPS1 :1;
        unsigned T6CKIPPS2 :1;
        unsigned T6CKIPPS3 :1;
        unsigned T6CKIPPS4 :1;
    };
    struct {
        unsigned T6PPS :5;
    };
    struct {
        unsigned T6PPS0 :1;
        unsigned T6PPS1 :1;
        unsigned T6PPS2 :1;
        unsigned T6PPS3 :1;
        unsigned T6PPS4 :1;
    };
} T6PPSbits_t;
extern volatile T6PPSbits_t T6PPSbits __attribute__((address(0xE1E)));
# 22545 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char ATCC1PPS __attribute__((address(0xE1F)));

__asm("ATCC1PPS equ 0E1Fh");


typedef union {
    struct {
        unsigned ATCC1PPS :5;
    };
    struct {
        unsigned ATCC1PPS0 :1;
        unsigned ATCC1PPS1 :1;
        unsigned ATCC1PPS2 :1;
        unsigned ATCC1PPS3 :1;
        unsigned ATCC1PPS4 :1;
    };
} ATCC1PPSbits_t;
extern volatile ATCC1PPSbits_t ATCC1PPSbits __attribute__((address(0xE1F)));
# 22597 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SSPCLKPPS __attribute__((address(0xE20)));

__asm("SSPCLKPPS equ 0E20h");


typedef union {
    struct {
        unsigned SSPCLKPPS :5;
    };
    struct {
        unsigned SSPCLKPPS0 :1;
        unsigned SSPCLKPPS1 :1;
        unsigned SSPCLKPPS2 :1;
        unsigned SSPCLKPPS3 :1;
        unsigned SSPCLKPPS4 :1;
    };
} SSPCLKPPSbits_t;
extern volatile SSPCLKPPSbits_t SSPCLKPPSbits __attribute__((address(0xE20)));
# 22649 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SSPDATPPS __attribute__((address(0xE21)));

__asm("SSPDATPPS equ 0E21h");


typedef union {
    struct {
        unsigned SSPDATPPS :5;
    };
    struct {
        unsigned SSPDATPPS0 :1;
        unsigned SSPDATPPS1 :1;
        unsigned SSPDATPPS2 :1;
        unsigned SSPDATPPS3 :1;
        unsigned SSPDATPPS4 :1;
    };
} SSPDATPPSbits_t;
extern volatile SSPDATPPSbits_t SSPDATPPSbits __attribute__((address(0xE21)));
# 22701 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SSPSSPPS __attribute__((address(0xE22)));

__asm("SSPSSPPS equ 0E22h");


typedef union {
    struct {
        unsigned SSPSSPPS :5;
    };
    struct {
        unsigned SSPSSPPS0 :1;
        unsigned SSPSSPPS1 :1;
        unsigned SSPSSPPS2 :1;
        unsigned SSPSSPPS3 :1;
        unsigned SSPSSPPS4 :1;
    };
} SSPSSPPSbits_t;
extern volatile SSPSSPPSbits_t SSPSSPPSbits __attribute__((address(0xE22)));
# 22753 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char ATCC2PPS __attribute__((address(0xE23)));

__asm("ATCC2PPS equ 0E23h");


typedef union {
    struct {
        unsigned ATCC2PPS :5;
    };
    struct {
        unsigned ATCC2PPS0 :1;
        unsigned ATCC2PPS1 :1;
        unsigned ATCC2PPS2 :1;
        unsigned ATCC2PPS3 :1;
        unsigned ATCC2PPS4 :1;
    };
} ATCC2PPSbits_t;
extern volatile ATCC2PPSbits_t ATCC2PPSbits __attribute__((address(0xE23)));
# 22805 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char RXPPS __attribute__((address(0xE24)));

__asm("RXPPS equ 0E24h");


typedef union {
    struct {
        unsigned RXPPS :5;
    };
    struct {
        unsigned RXPPS0 :1;
        unsigned RXPPS1 :1;
        unsigned RXPPS2 :1;
        unsigned RXPPS3 :1;
        unsigned RXPPS4 :1;
    };
} RXPPSbits_t;
extern volatile RXPPSbits_t RXPPSbits __attribute__((address(0xE24)));
# 22857 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CKPPS __attribute__((address(0xE25)));

__asm("CKPPS equ 0E25h");


typedef union {
    struct {
        unsigned CKPPS :5;
    };
    struct {
        unsigned CKPPS0 :1;
        unsigned CKPPS1 :1;
        unsigned CKPPS2 :1;
        unsigned CKPPS3 :1;
        unsigned CKPPS4 :1;
    };
} CKPPSbits_t;
extern volatile CKPPSbits_t CKPPSbits __attribute__((address(0xE25)));
# 22909 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT1SIGPPS __attribute__((address(0xE26)));

__asm("SMT1SIGPPS equ 0E26h");


typedef union {
    struct {
        unsigned SMT1SIGPPS :5;
    };
    struct {
        unsigned SMT1SIGPPS0 :1;
        unsigned SMT1SIGPPS1 :1;
        unsigned SMT1SIGPPS2 :1;
        unsigned SMT1SIGPPS3 :1;
        unsigned SMT1SIGPPS4 :1;
    };
} SMT1SIGPPSbits_t;
extern volatile SMT1SIGPPSbits_t SMT1SIGPPSbits __attribute__((address(0xE26)));
# 22961 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT1WINPPS __attribute__((address(0xE27)));

__asm("SMT1WINPPS equ 0E27h");


typedef union {
    struct {
        unsigned SMT1WINPPS :5;
    };
    struct {
        unsigned SMTWINPPS0 :1;
        unsigned SMTWINPPS1 :1;
        unsigned SMTWINPPS2 :1;
        unsigned SMTWINPPS3 :1;
        unsigned SMTWINPPS4 :1;
    };
} SMT1WINPPSbits_t;
extern volatile SMT1WINPPSbits_t SMT1WINPPSbits __attribute__((address(0xE27)));
# 23013 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLCIN0PPS __attribute__((address(0xE28)));

__asm("CLCIN0PPS equ 0E28h");


typedef union {
    struct {
        unsigned CLCN0PPS :5;
    };
    struct {
        unsigned CLCIN0PPS0 :1;
        unsigned CLCIN0PPS1 :1;
        unsigned CLCIN0PPS2 :1;
        unsigned CLCIN0PPS3 :1;
        unsigned CLCIN0PPS4 :1;
    };
} CLCIN0PPSbits_t;
extern volatile CLCIN0PPSbits_t CLCIN0PPSbits __attribute__((address(0xE28)));
# 23065 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLCIN1PPS __attribute__((address(0xE29)));

__asm("CLCIN1PPS equ 0E29h");


typedef union {
    struct {
        unsigned CLCIN1PPS :5;
    };
    struct {
        unsigned CLCIN1PPS0 :1;
        unsigned CLCIN1PPS1 :1;
        unsigned CLCIN1PPS2 :1;
        unsigned CLCIN1PPS3 :1;
        unsigned CLCIN1PPS4 :1;
    };
} CLCIN1PPSbits_t;
extern volatile CLCIN1PPSbits_t CLCIN1PPSbits __attribute__((address(0xE29)));
# 23117 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLCIN2PPS __attribute__((address(0xE2A)));

__asm("CLCIN2PPS equ 0E2Ah");


typedef union {
    struct {
        unsigned CLCIN2PPS :5;
    };
    struct {
        unsigned CLCIN2PPS0 :1;
        unsigned CLCIN2PPS1 :1;
        unsigned CLCIN2PPS2 :1;
        unsigned CLCIN2PPS3 :1;
        unsigned CLCIN2PPS4 :1;
    };
} CLCIN2PPSbits_t;
extern volatile CLCIN2PPSbits_t CLCIN2PPSbits __attribute__((address(0xE2A)));
# 23169 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLCIN3PPS __attribute__((address(0xE2B)));

__asm("CLCIN3PPS equ 0E2Bh");


typedef union {
    struct {
        unsigned CLCIN3PPS :5;
    };
    struct {
        unsigned CLCIN3PPS0 :1;
        unsigned CLCIN3PPS1 :1;
        unsigned CLCIN3PPS2 :1;
        unsigned CLCIN3PPS3 :1;
        unsigned CLCIN3PPS4 :1;
    };
} CLCIN3PPSbits_t;
extern volatile CLCIN3PPSbits_t CLCIN3PPSbits __attribute__((address(0xE2B)));
# 23221 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT2SIGPPS __attribute__((address(0xE2C)));

__asm("SMT2SIGPPS equ 0E2Ch");


typedef union {
    struct {
        unsigned SMT2SIGPPS :5;
    };
    struct {
        unsigned SMT2SIGPPS0 :1;
        unsigned SMT2SIGPPS1 :1;
        unsigned SMT2SIGPPS2 :1;
        unsigned SMT2SIGPPS3 :1;
        unsigned SMT2SIGPPS4 :1;
    };
} SMT2SIGPPSbits_t;
extern volatile SMT2SIGPPSbits_t SMT2SIGPPSbits __attribute__((address(0xE2C)));
# 23273 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char SMT2WINPPS __attribute__((address(0xE2D)));

__asm("SMT2WINPPS equ 0E2Dh");


typedef union {
    struct {
        unsigned SMT2WINPPS :5;
    };
    struct {
        unsigned SMT2WINPPS0 :1;
        unsigned SMT2WINPPS1 :1;
        unsigned SMT2WINPPS2 :1;
        unsigned SMT2WINPPS3 :1;
        unsigned SMT2WINPPS4 :1;
    };
} SMT2WINPPSbits_t;
extern volatile SMT2WINPPSbits_t SMT2WINPPSbits __attribute__((address(0xE2D)));
# 23325 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char ATCC3PPS __attribute__((address(0xE2E)));

__asm("ATCC3PPS equ 0E2Eh");


typedef union {
    struct {
        unsigned ATCC3PPS :5;
    };
    struct {
        unsigned ATCC3PPS0 :1;
        unsigned ATCC3PPS1 :1;
        unsigned ATCC3PPS2 :1;
        unsigned ATCC3PPS3 :1;
        unsigned ATCC3PPS4 :1;
    };
} ATCC3PPSbits_t;
extern volatile ATCC3PPSbits_t ATCC3PPSbits __attribute__((address(0xE2E)));
# 23377 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char RA0PPS __attribute__((address(0xE90)));

__asm("RA0PPS equ 0E90h");


typedef union {
    struct {
        unsigned RA0PPS0 :1;
        unsigned RA0PPS1 :1;
        unsigned RA0PPS2 :1;
        unsigned RA0PPS3 :1;
        unsigned RA0PPS4 :1;
    };
} RA0PPSbits_t;
extern volatile RA0PPSbits_t RA0PPSbits __attribute__((address(0xE90)));
# 23421 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char RA1PPS __attribute__((address(0xE91)));

__asm("RA1PPS equ 0E91h");


typedef union {
    struct {
        unsigned RA1PPS0 :1;
        unsigned RA1PPS1 :1;
        unsigned RA1PPS2 :1;
        unsigned RA1PPS3 :1;
        unsigned RA1PPS4 :1;
    };
} RA1PPSbits_t;
extern volatile RA1PPSbits_t RA1PPSbits __attribute__((address(0xE91)));
# 23465 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char RA2PPS __attribute__((address(0xE92)));

__asm("RA2PPS equ 0E92h");


typedef union {
    struct {
        unsigned RA2PPS0 :1;
        unsigned RA2PPS1 :1;
        unsigned RA2PPS2 :1;
        unsigned RA2PPS3 :1;
        unsigned RA2PPS4 :1;
    };
} RA2PPSbits_t;
extern volatile RA2PPSbits_t RA2PPSbits __attribute__((address(0xE92)));
# 23509 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char RA4PPS __attribute__((address(0xE94)));

__asm("RA4PPS equ 0E94h");


typedef union {
    struct {
        unsigned RA4PPS0 :1;
        unsigned RA4PPS1 :1;
        unsigned RA4PPS2 :1;
        unsigned RA4PPS3 :1;
        unsigned RA4PPS4 :1;
    };
} RA4PPSbits_t;
extern volatile RA4PPSbits_t RA4PPSbits __attribute__((address(0xE94)));
# 23553 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char RA5PPS __attribute__((address(0xE95)));

__asm("RA5PPS equ 0E95h");


typedef union {
    struct {
        unsigned RA5PPS0 :1;
        unsigned RA5PPS1 :1;
        unsigned RA5PPS2 :1;
        unsigned RA5PPS3 :1;
        unsigned RA5PPS4 :1;
    };
} RA5PPSbits_t;
extern volatile RA5PPSbits_t RA5PPSbits __attribute__((address(0xE95)));
# 23597 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char RB4PPS __attribute__((address(0xE9C)));

__asm("RB4PPS equ 0E9Ch");


typedef union {
    struct {
        unsigned RB4PPS0 :1;
        unsigned RB4PPS1 :1;
        unsigned RB4PPS2 :1;
        unsigned RB4PPS3 :1;
        unsigned RB4PPS4 :1;
    };
} RB4PPSbits_t;
extern volatile RB4PPSbits_t RB4PPSbits __attribute__((address(0xE9C)));
# 23641 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char RB5PPS __attribute__((address(0xE9D)));

__asm("RB5PPS equ 0E9Dh");


typedef union {
    struct {
        unsigned RB5PPS0 :1;
        unsigned RB5PPS1 :1;
        unsigned RB5PPS2 :1;
        unsigned RB5PPS3 :1;
        unsigned RB5PPS4 :1;
    };
} RB5PPSbits_t;
extern volatile RB5PPSbits_t RB5PPSbits __attribute__((address(0xE9D)));
# 23685 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char RB6PPS __attribute__((address(0xE9E)));

__asm("RB6PPS equ 0E9Eh");


typedef union {
    struct {
        unsigned RB6PPS0 :1;
        unsigned RB6PPS1 :1;
        unsigned RB6PPS2 :1;
        unsigned RB6PPS3 :1;
        unsigned RB6PPS4 :1;
    };
} RB6PPSbits_t;
extern volatile RB6PPSbits_t RB6PPSbits __attribute__((address(0xE9E)));
# 23729 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char RB7PPS __attribute__((address(0xE9F)));

__asm("RB7PPS equ 0E9Fh");


typedef union {
    struct {
        unsigned RB7PPS0 :1;
        unsigned RB7PPS1 :1;
        unsigned RB7PPS2 :1;
        unsigned RB7PPS3 :1;
        unsigned RB7PPS4 :1;
    };
} RB7PPSbits_t;
extern volatile RB7PPSbits_t RB7PPSbits __attribute__((address(0xE9F)));
# 23773 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char RC0PPS __attribute__((address(0xEA0)));

__asm("RC0PPS equ 0EA0h");


typedef union {
    struct {
        unsigned RC0PPS0 :1;
        unsigned RC0PPS1 :1;
        unsigned RC0PPS2 :1;
        unsigned RC0PPS3 :1;
        unsigned RC0PPS4 :1;
    };
} RC0PPSbits_t;
extern volatile RC0PPSbits_t RC0PPSbits __attribute__((address(0xEA0)));
# 23817 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char RC1PPS __attribute__((address(0xEA1)));

__asm("RC1PPS equ 0EA1h");


typedef union {
    struct {
        unsigned RC1PPS0 :1;
        unsigned RC1PPS1 :1;
        unsigned RC1PPS2 :1;
        unsigned RC1PPS3 :1;
        unsigned RC1PPS4 :1;
    };
} RC1PPSbits_t;
extern volatile RC1PPSbits_t RC1PPSbits __attribute__((address(0xEA1)));
# 23861 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char RC2PPS __attribute__((address(0xEA2)));

__asm("RC2PPS equ 0EA2h");


typedef union {
    struct {
        unsigned RC2PPS0 :1;
        unsigned RC2PPS1 :1;
        unsigned RC2PPS2 :1;
        unsigned RC2PPS3 :1;
        unsigned RC2PPS4 :1;
    };
} RC2PPSbits_t;
extern volatile RC2PPSbits_t RC2PPSbits __attribute__((address(0xEA2)));
# 23905 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char RC3PPS __attribute__((address(0xEA3)));

__asm("RC3PPS equ 0EA3h");


typedef union {
    struct {
        unsigned RC3PPS0 :1;
        unsigned RC3PPS1 :1;
        unsigned RC3PPS2 :1;
        unsigned RC3PPS3 :1;
        unsigned RC3PPS4 :1;
    };
} RC3PPSbits_t;
extern volatile RC3PPSbits_t RC3PPSbits __attribute__((address(0xEA3)));
# 23949 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char RC4PPS __attribute__((address(0xEA4)));

__asm("RC4PPS equ 0EA4h");


typedef union {
    struct {
        unsigned RC4PPS0 :1;
        unsigned RC4PPS1 :1;
        unsigned RC4PPS2 :1;
        unsigned RC4PPS3 :1;
        unsigned RC4PPS4 :1;
    };
} RC4PPSbits_t;
extern volatile RC4PPSbits_t RC4PPSbits __attribute__((address(0xEA4)));
# 23993 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char RC5PPS __attribute__((address(0xEA5)));

__asm("RC5PPS equ 0EA5h");


typedef union {
    struct {
        unsigned RC5PPS0 :1;
        unsigned RC5PPS1 :1;
        unsigned RC5PPS2 :1;
        unsigned RC5PPS3 :1;
        unsigned RC5PPS4 :1;
    };
} RC5PPSbits_t;
extern volatile RC5PPSbits_t RC5PPSbits __attribute__((address(0xEA5)));
# 24037 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char RC6PPS __attribute__((address(0xEA6)));

__asm("RC6PPS equ 0EA6h");


typedef union {
    struct {
        unsigned RC6PPS0 :1;
        unsigned RC6PPS1 :1;
        unsigned RC6PPS2 :1;
        unsigned RC6PPS3 :1;
        unsigned RC6PPS4 :1;
    };
} RC6PPSbits_t;
extern volatile RC6PPSbits_t RC6PPSbits __attribute__((address(0xEA6)));
# 24081 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char RC7PPS __attribute__((address(0xEA7)));

__asm("RC7PPS equ 0EA7h");


typedef union {
    struct {
        unsigned RC7PPS0 :1;
        unsigned RC7PPS1 :1;
        unsigned RC7PPS2 :1;
        unsigned RC7PPS3 :1;
        unsigned RC7PPS4 :1;
    };
} RC7PPSbits_t;
extern volatile RC7PPSbits_t RC7PPSbits __attribute__((address(0xEA7)));
# 24125 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLCDATA __attribute__((address(0xF0F)));

__asm("CLCDATA equ 0F0Fh");


typedef union {
    struct {
        unsigned MLC1OUT :1;
        unsigned MLC2OUT :1;
        unsigned MLC3OUT :1;
        unsigned MLC4OUT :1;
    };
} CLCDATAbits_t;
extern volatile CLCDATAbits_t CLCDATAbits __attribute__((address(0xF0F)));
# 24163 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC1CON __attribute__((address(0xF10)));

__asm("CLC1CON equ 0F10h");


typedef union {
    struct {
        unsigned LC1MODE :3;
        unsigned LC1INTN :1;
        unsigned LC1INTP :1;
        unsigned LC1OUT :1;
        unsigned :1;
        unsigned LC1EN :1;
    };
    struct {
        unsigned LC1MODE0 :1;
        unsigned LC1MODE1 :1;
        unsigned LC1MODE2 :1;
    };
    struct {
        unsigned MODE :3;
        unsigned INTN :1;
        unsigned INTP :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
    };
} CLC1CONbits_t;
extern volatile CLC1CONbits_t CLC1CONbits __attribute__((address(0xF10)));
# 24281 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC1POL __attribute__((address(0xF11)));

__asm("CLC1POL equ 0F11h");


typedef union {
    struct {
        unsigned LC1G1POL :1;
        unsigned LC1G2POL :1;
        unsigned LC1G3POL :1;
        unsigned LC1G4POL :1;
        unsigned :3;
        unsigned LC1POL :1;
    };
    struct {
        unsigned G1POL :1;
        unsigned G2POL :1;
        unsigned G3POL :1;
        unsigned G4POL :1;
        unsigned :3;
        unsigned POL :1;
    };
} CLC1POLbits_t;
extern volatile CLC1POLbits_t CLC1POLbits __attribute__((address(0xF11)));
# 24359 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC1SEL0 __attribute__((address(0xF12)));

__asm("CLC1SEL0 equ 0F12h");


typedef union {
    struct {
        unsigned LC1D1S0 :1;
        unsigned LC1D1S1 :1;
        unsigned LC1D1S2 :1;
        unsigned LC1D1S3 :1;
        unsigned LC1D1S4 :1;
        unsigned LC1D1S5 :1;
    };
    struct {
        unsigned LC1D1S :8;
    };
    struct {
        unsigned D1S :8;
    };
    struct {
        unsigned D1S0 :1;
        unsigned D1S1 :1;
        unsigned D1S2 :1;
        unsigned D1S3 :1;
        unsigned D1S4 :1;
        unsigned D1S5 :1;
    };
} CLC1SEL0bits_t;
extern volatile CLC1SEL0bits_t CLC1SEL0bits __attribute__((address(0xF12)));
# 24463 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC1SEL1 __attribute__((address(0xF13)));

__asm("CLC1SEL1 equ 0F13h");


typedef union {
    struct {
        unsigned LC1D2S0 :1;
        unsigned LC1D2S1 :1;
        unsigned LC1D2S2 :1;
        unsigned LC1D2S3 :1;
        unsigned LC1D2S4 :1;
        unsigned LC1D2S5 :1;
    };
    struct {
        unsigned LC1D2S :8;
    };
    struct {
        unsigned D2S :8;
    };
    struct {
        unsigned D2S0 :1;
        unsigned D2S1 :1;
        unsigned D2S2 :1;
        unsigned D2S3 :1;
        unsigned D2S4 :1;
        unsigned D2S5 :1;
    };
} CLC1SEL1bits_t;
extern volatile CLC1SEL1bits_t CLC1SEL1bits __attribute__((address(0xF13)));
# 24567 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC1SEL2 __attribute__((address(0xF14)));

__asm("CLC1SEL2 equ 0F14h");


typedef union {
    struct {
        unsigned LC1D3S0 :1;
        unsigned LC1D3S1 :1;
        unsigned LC1D3S2 :1;
        unsigned LC1D3S3 :1;
        unsigned LC1D3S4 :1;
        unsigned LC1D3S5 :1;
    };
    struct {
        unsigned LC1D3S :8;
    };
    struct {
        unsigned D3S :8;
    };
    struct {
        unsigned D3S0 :1;
        unsigned D3S1 :1;
        unsigned D3S2 :1;
        unsigned D3S3 :1;
        unsigned D3S4 :1;
        unsigned D3S5 :1;
    };
} CLC1SEL2bits_t;
extern volatile CLC1SEL2bits_t CLC1SEL2bits __attribute__((address(0xF14)));
# 24671 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC1SEL3 __attribute__((address(0xF15)));

__asm("CLC1SEL3 equ 0F15h");


typedef union {
    struct {
        unsigned LC1D4S0 :1;
        unsigned LC1D4S1 :1;
        unsigned LC1D4S2 :1;
        unsigned LC1D4S3 :1;
        unsigned LC1D4S4 :1;
        unsigned LC1D4S5 :1;
    };
    struct {
        unsigned LC1D4S :8;
    };
    struct {
        unsigned D4S :8;
    };
    struct {
        unsigned D4S0 :1;
        unsigned D4S1 :1;
        unsigned D4S2 :1;
        unsigned D4S3 :1;
        unsigned D4S4 :1;
        unsigned D4S5 :1;
    };
} CLC1SEL3bits_t;
extern volatile CLC1SEL3bits_t CLC1SEL3bits __attribute__((address(0xF15)));
# 24775 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC1GLS0 __attribute__((address(0xF16)));

__asm("CLC1GLS0 equ 0F16h");


typedef union {
    struct {
        unsigned LC1G1D1N :1;
        unsigned LC1G1D1T :1;
        unsigned LC1G1D2N :1;
        unsigned LC1G1D2T :1;
        unsigned LC1G1D3N :1;
        unsigned LC1G1D3T :1;
        unsigned LC1G1D4N :1;
        unsigned LC1G1D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC1GLS0bits_t;
extern volatile CLC1GLS0bits_t CLC1GLS0bits __attribute__((address(0xF16)));
# 24887 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC1GLS1 __attribute__((address(0xF17)));

__asm("CLC1GLS1 equ 0F17h");


typedef union {
    struct {
        unsigned LC1G2D1N :1;
        unsigned LC1G2D1T :1;
        unsigned LC1G2D2N :1;
        unsigned LC1G2D2T :1;
        unsigned LC1G2D3N :1;
        unsigned LC1G2D3T :1;
        unsigned LC1G2D4N :1;
        unsigned LC1G2D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC1GLS1bits_t;
extern volatile CLC1GLS1bits_t CLC1GLS1bits __attribute__((address(0xF17)));
# 24999 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC1GLS2 __attribute__((address(0xF18)));

__asm("CLC1GLS2 equ 0F18h");


typedef union {
    struct {
        unsigned LC1G3D1N :1;
        unsigned LC1G3D1T :1;
        unsigned LC1G3D2N :1;
        unsigned LC1G3D2T :1;
        unsigned LC1G3D3N :1;
        unsigned LC1G3D3T :1;
        unsigned LC1G3D4N :1;
        unsigned LC1G3D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC1GLS2bits_t;
extern volatile CLC1GLS2bits_t CLC1GLS2bits __attribute__((address(0xF18)));
# 25111 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC1GLS3 __attribute__((address(0xF19)));

__asm("CLC1GLS3 equ 0F19h");


typedef union {
    struct {
        unsigned LC1G4D1N :1;
        unsigned LC1G4D1T :1;
        unsigned LC1G4D2N :1;
        unsigned LC1G4D2T :1;
        unsigned LC1G4D3N :1;
        unsigned LC1G4D3T :1;
        unsigned LC1G4D4N :1;
        unsigned LC1G4D4T :1;
    };
    struct {
        unsigned G4D1N :1;
        unsigned G4D1T :1;
        unsigned G4D2N :1;
        unsigned G4D2T :1;
        unsigned G4D3N :1;
        unsigned G4D3T :1;
        unsigned G4D4N :1;
        unsigned G4D4T :1;
    };
} CLC1GLS3bits_t;
extern volatile CLC1GLS3bits_t CLC1GLS3bits __attribute__((address(0xF19)));
# 25223 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC2CON __attribute__((address(0xF1A)));

__asm("CLC2CON equ 0F1Ah");


typedef union {
    struct {
        unsigned LC2MODE :3;
        unsigned LC2INTN :1;
        unsigned LC2INTP :1;
        unsigned LC2OUT :1;
        unsigned :1;
        unsigned LC2EN :1;
    };
    struct {
        unsigned LC2MODE0 :1;
        unsigned LC2MODE1 :1;
        unsigned LC2MODE2 :1;
    };
    struct {
        unsigned MODE :3;
        unsigned INTN :1;
        unsigned INTP :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
    };
} CLC2CONbits_t;
extern volatile CLC2CONbits_t CLC2CONbits __attribute__((address(0xF1A)));
# 25341 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC2POL __attribute__((address(0xF1B)));

__asm("CLC2POL equ 0F1Bh");


typedef union {
    struct {
        unsigned LC2G1POL :1;
        unsigned LC2G2POL :1;
        unsigned LC2G3POL :1;
        unsigned LC2G4POL :1;
        unsigned :3;
        unsigned LC2POL :1;
    };
    struct {
        unsigned G1POL :1;
        unsigned G2POL :1;
        unsigned G3POL :1;
        unsigned G4POL :1;
        unsigned :3;
        unsigned POL :1;
    };
} CLC2POLbits_t;
extern volatile CLC2POLbits_t CLC2POLbits __attribute__((address(0xF1B)));
# 25419 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC2SEL0 __attribute__((address(0xF1C)));

__asm("CLC2SEL0 equ 0F1Ch");


typedef union {
    struct {
        unsigned LC2D1S0 :1;
        unsigned LC2D1S1 :1;
        unsigned LC2D1S2 :1;
        unsigned LC2D1S3 :1;
        unsigned LC2D1S4 :1;
        unsigned LC2D1S5 :1;
    };
    struct {
        unsigned LC2D1S :8;
    };
    struct {
        unsigned D1S :8;
    };
    struct {
        unsigned D1S0 :1;
        unsigned D1S1 :1;
        unsigned D1S2 :1;
        unsigned D1S3 :1;
        unsigned D1S4 :1;
        unsigned D1S5 :1;
    };
} CLC2SEL0bits_t;
extern volatile CLC2SEL0bits_t CLC2SEL0bits __attribute__((address(0xF1C)));
# 25523 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC2SEL1 __attribute__((address(0xF1D)));

__asm("CLC2SEL1 equ 0F1Dh");


typedef union {
    struct {
        unsigned LC2D2S0 :1;
        unsigned LC2D2S1 :1;
        unsigned LC2D2S2 :1;
        unsigned LC2D2S3 :1;
        unsigned LC2D2S4 :1;
        unsigned LC2D2S5 :1;
    };
    struct {
        unsigned LC2D2S :8;
    };
    struct {
        unsigned D2S :8;
    };
    struct {
        unsigned D2S0 :1;
        unsigned D2S1 :1;
        unsigned D2S2 :1;
        unsigned D2S3 :1;
        unsigned D2S4 :1;
        unsigned D2S5 :1;
    };
} CLC2SEL1bits_t;
extern volatile CLC2SEL1bits_t CLC2SEL1bits __attribute__((address(0xF1D)));
# 25627 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC2SEL2 __attribute__((address(0xF1E)));

__asm("CLC2SEL2 equ 0F1Eh");


typedef union {
    struct {
        unsigned LC2D3S0 :1;
        unsigned LC2D3S1 :1;
        unsigned LC2D3S2 :1;
        unsigned LC2D3S3 :1;
        unsigned LC2D3S4 :1;
        unsigned LC2D3S5 :1;
    };
    struct {
        unsigned LC2D3S :8;
    };
    struct {
        unsigned D3S :8;
    };
    struct {
        unsigned D3S0 :1;
        unsigned D3S1 :1;
        unsigned D3S2 :1;
        unsigned D3S3 :1;
        unsigned D3S4 :1;
        unsigned D3S5 :1;
    };
} CLC2SEL2bits_t;
extern volatile CLC2SEL2bits_t CLC2SEL2bits __attribute__((address(0xF1E)));
# 25731 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC2SEL3 __attribute__((address(0xF1F)));

__asm("CLC2SEL3 equ 0F1Fh");


typedef union {
    struct {
        unsigned LC2D4S0 :1;
        unsigned LC2D4S1 :1;
        unsigned LC2D4S2 :1;
        unsigned LC2D4S3 :1;
        unsigned LC2D4S4 :1;
        unsigned LC2D4S5 :1;
    };
    struct {
        unsigned LC2D4S :8;
    };
    struct {
        unsigned D4S :8;
    };
    struct {
        unsigned D4S0 :1;
        unsigned D4S1 :1;
        unsigned D4S2 :1;
        unsigned D4S3 :1;
        unsigned D4S4 :1;
        unsigned D4S5 :1;
    };
} CLC2SEL3bits_t;
extern volatile CLC2SEL3bits_t CLC2SEL3bits __attribute__((address(0xF1F)));
# 25835 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC2GLS0 __attribute__((address(0xF20)));

__asm("CLC2GLS0 equ 0F20h");


typedef union {
    struct {
        unsigned LC2G1D1N :1;
        unsigned LC2G1D1T :1;
        unsigned LC2G1D2N :1;
        unsigned LC2G1D2T :1;
        unsigned LC2G1D3N :1;
        unsigned LC2G1D3T :1;
        unsigned LC2G1D4N :1;
        unsigned LC2G1D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC2GLS0bits_t;
extern volatile CLC2GLS0bits_t CLC2GLS0bits __attribute__((address(0xF20)));
# 25947 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC2GLS1 __attribute__((address(0xF21)));

__asm("CLC2GLS1 equ 0F21h");


typedef union {
    struct {
        unsigned LC2G2D1N :1;
        unsigned LC2G2D1T :1;
        unsigned LC2G2D2N :1;
        unsigned LC2G2D2T :1;
        unsigned LC2G2D3N :1;
        unsigned LC2G2D3T :1;
        unsigned LC2G2D4N :1;
        unsigned LC2G2D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC2GLS1bits_t;
extern volatile CLC2GLS1bits_t CLC2GLS1bits __attribute__((address(0xF21)));
# 26059 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC2GLS2 __attribute__((address(0xF22)));

__asm("CLC2GLS2 equ 0F22h");


typedef union {
    struct {
        unsigned LC2G3D1N :1;
        unsigned LC2G3D1T :1;
        unsigned LC2G3D2N :1;
        unsigned LC2G3D2T :1;
        unsigned LC2G3D3N :1;
        unsigned LC2G3D3T :1;
        unsigned LC2G3D4N :1;
        unsigned LC2G3D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC2GLS2bits_t;
extern volatile CLC2GLS2bits_t CLC2GLS2bits __attribute__((address(0xF22)));
# 26171 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC2GLS3 __attribute__((address(0xF23)));

__asm("CLC2GLS3 equ 0F23h");


typedef union {
    struct {
        unsigned LC2G4D1N :1;
        unsigned LC2G4D1T :1;
        unsigned LC2G4D2N :1;
        unsigned LC2G4D2T :1;
        unsigned LC2G4D3N :1;
        unsigned LC2G4D3T :1;
        unsigned LC2G4D4N :1;
        unsigned LC2G4D4T :1;
    };
    struct {
        unsigned G4D1N :1;
        unsigned G4D1T :1;
        unsigned G4D2N :1;
        unsigned G4D2T :1;
        unsigned G4D3N :1;
        unsigned G4D3T :1;
        unsigned G4D4N :1;
        unsigned G4D4T :1;
    };
} CLC2GLS3bits_t;
extern volatile CLC2GLS3bits_t CLC2GLS3bits __attribute__((address(0xF23)));
# 26283 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC3CON __attribute__((address(0xF24)));

__asm("CLC3CON equ 0F24h");


typedef union {
    struct {
        unsigned LC3MODE :3;
        unsigned LC3INTN :1;
        unsigned LC3INTP :1;
        unsigned LC3OUT :1;
        unsigned :1;
        unsigned LC3EN :1;
    };
    struct {
        unsigned LC3MODE0 :1;
        unsigned LC3MODE1 :1;
        unsigned LC3MODE2 :1;
    };
    struct {
        unsigned MODE :3;
        unsigned INTN :1;
        unsigned INTP :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
    };
} CLC3CONbits_t;
extern volatile CLC3CONbits_t CLC3CONbits __attribute__((address(0xF24)));
# 26401 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC3POL __attribute__((address(0xF25)));

__asm("CLC3POL equ 0F25h");


typedef union {
    struct {
        unsigned LC3G1POL :1;
        unsigned LC3G2POL :1;
        unsigned LC3G3POL :1;
        unsigned LC3G4POL :1;
        unsigned :3;
        unsigned LC3POL :1;
    };
    struct {
        unsigned G1POL :1;
        unsigned G2POL :1;
        unsigned G3POL :1;
        unsigned G4POL :1;
        unsigned :3;
        unsigned POL :1;
    };
} CLC3POLbits_t;
extern volatile CLC3POLbits_t CLC3POLbits __attribute__((address(0xF25)));
# 26479 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC3SEL0 __attribute__((address(0xF26)));

__asm("CLC3SEL0 equ 0F26h");


typedef union {
    struct {
        unsigned LC3D1S0 :1;
        unsigned LC3D1S1 :1;
        unsigned LC3D1S2 :1;
        unsigned LC3D1S3 :1;
        unsigned LC3D1S4 :1;
        unsigned LC3D1S5 :1;
    };
    struct {
        unsigned LC3D1S :8;
    };
    struct {
        unsigned D1S :8;
    };
    struct {
        unsigned D1S0 :1;
        unsigned D1S1 :1;
        unsigned D1S2 :1;
        unsigned D1S3 :1;
        unsigned D1S4 :1;
        unsigned D1S5 :1;
    };
} CLC3SEL0bits_t;
extern volatile CLC3SEL0bits_t CLC3SEL0bits __attribute__((address(0xF26)));
# 26583 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC3SEL1 __attribute__((address(0xF27)));

__asm("CLC3SEL1 equ 0F27h");


typedef union {
    struct {
        unsigned LC3D2S0 :1;
        unsigned LC3D2S1 :1;
        unsigned LC3D2S2 :1;
        unsigned LC3D2S3 :1;
        unsigned LC3D2S4 :1;
        unsigned LC3D2S5 :1;
    };
    struct {
        unsigned LC3D2S :8;
    };
    struct {
        unsigned D2S :8;
    };
    struct {
        unsigned D2S0 :1;
        unsigned D2S1 :1;
        unsigned D2S2 :1;
        unsigned D2S3 :1;
        unsigned D2S4 :1;
        unsigned D2S5 :1;
    };
} CLC3SEL1bits_t;
extern volatile CLC3SEL1bits_t CLC3SEL1bits __attribute__((address(0xF27)));
# 26687 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC3SEL2 __attribute__((address(0xF28)));

__asm("CLC3SEL2 equ 0F28h");


typedef union {
    struct {
        unsigned LC3D3S0 :1;
        unsigned LC3D3S1 :1;
        unsigned LC3D3S2 :1;
        unsigned LC3D3S3 :1;
        unsigned LC3D3S4 :1;
        unsigned LC3D3S5 :1;
    };
    struct {
        unsigned LC3D3S :8;
    };
    struct {
        unsigned D3S :8;
    };
    struct {
        unsigned D3S0 :1;
        unsigned D3S1 :1;
        unsigned D3S2 :1;
        unsigned D3S3 :1;
        unsigned D3S4 :1;
        unsigned D3S5 :1;
    };
} CLC3SEL2bits_t;
extern volatile CLC3SEL2bits_t CLC3SEL2bits __attribute__((address(0xF28)));
# 26791 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC3SEL3 __attribute__((address(0xF29)));

__asm("CLC3SEL3 equ 0F29h");


typedef union {
    struct {
        unsigned LC3D4S0 :1;
        unsigned LC3D4S1 :1;
        unsigned LC3D4S2 :1;
        unsigned LC3D4S3 :1;
        unsigned LC3D4S4 :1;
        unsigned LC3D4S5 :1;
    };
    struct {
        unsigned LC3D4S :8;
    };
    struct {
        unsigned D4S :8;
    };
    struct {
        unsigned D4S0 :1;
        unsigned D4S1 :1;
        unsigned D4S2 :1;
        unsigned D4S3 :1;
        unsigned D4S4 :1;
        unsigned D4S5 :1;
    };
} CLC3SEL3bits_t;
extern volatile CLC3SEL3bits_t CLC3SEL3bits __attribute__((address(0xF29)));
# 26895 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC3GLS0 __attribute__((address(0xF2A)));

__asm("CLC3GLS0 equ 0F2Ah");


typedef union {
    struct {
        unsigned LC3G1D1N :1;
        unsigned LC3G1D1T :1;
        unsigned LC3G1D2N :1;
        unsigned LC3G1D2T :1;
        unsigned LC3G1D3N :1;
        unsigned LC3G1D3T :1;
        unsigned LC3G1D4N :1;
        unsigned LC3G1D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC3GLS0bits_t;
extern volatile CLC3GLS0bits_t CLC3GLS0bits __attribute__((address(0xF2A)));
# 27007 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC3GLS1 __attribute__((address(0xF2B)));

__asm("CLC3GLS1 equ 0F2Bh");


typedef union {
    struct {
        unsigned LC3G2D1N :1;
        unsigned LC3G2D1T :1;
        unsigned LC3G2D2N :1;
        unsigned LC3G2D2T :1;
        unsigned LC3G2D3N :1;
        unsigned LC3G2D3T :1;
        unsigned LC3G2D4N :1;
        unsigned LC3G2D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC3GLS1bits_t;
extern volatile CLC3GLS1bits_t CLC3GLS1bits __attribute__((address(0xF2B)));
# 27119 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC3GLS2 __attribute__((address(0xF2C)));

__asm("CLC3GLS2 equ 0F2Ch");


typedef union {
    struct {
        unsigned LC3G3D1N :1;
        unsigned LC3G3D1T :1;
        unsigned LC3G3D2N :1;
        unsigned LC3G3D2T :1;
        unsigned LC3G3D3N :1;
        unsigned LC3G3D3T :1;
        unsigned LC3G3D4N :1;
        unsigned LC3G3D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC3GLS2bits_t;
extern volatile CLC3GLS2bits_t CLC3GLS2bits __attribute__((address(0xF2C)));
# 27231 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC3GLS3 __attribute__((address(0xF2D)));

__asm("CLC3GLS3 equ 0F2Dh");


typedef union {
    struct {
        unsigned LC3G4D1N :1;
        unsigned LC3G4D1T :1;
        unsigned LC3G4D2N :1;
        unsigned LC3G4D2T :1;
        unsigned LC3G4D3N :1;
        unsigned LC3G4D3T :1;
        unsigned LC3G4D4N :1;
        unsigned LC3G4D4T :1;
    };
    struct {
        unsigned G4D1N :1;
        unsigned G4D1T :1;
        unsigned G4D2N :1;
        unsigned G4D2T :1;
        unsigned G4D3N :1;
        unsigned G4D3T :1;
        unsigned G4D4N :1;
        unsigned G4D4T :1;
    };
} CLC3GLS3bits_t;
extern volatile CLC3GLS3bits_t CLC3GLS3bits __attribute__((address(0xF2D)));
# 27343 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC4CON __attribute__((address(0xF2E)));

__asm("CLC4CON equ 0F2Eh");


typedef union {
    struct {
        unsigned LC4MODE :3;
        unsigned LC4INTN :1;
        unsigned LC4INTP :1;
        unsigned LC4OUT :1;
        unsigned :1;
        unsigned LC4EN :1;
    };
    struct {
        unsigned LC4MODE0 :1;
        unsigned LC4MODE1 :1;
        unsigned LC4MODE2 :1;
    };
    struct {
        unsigned MODE :3;
        unsigned INTN :1;
        unsigned INTP :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
    };
} CLC4CONbits_t;
extern volatile CLC4CONbits_t CLC4CONbits __attribute__((address(0xF2E)));
# 27461 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC4POL __attribute__((address(0xF2F)));

__asm("CLC4POL equ 0F2Fh");


typedef union {
    struct {
        unsigned LC4G1POL :1;
        unsigned LC4G2POL :1;
        unsigned LC4G3POL :1;
        unsigned LC4G4POL :1;
        unsigned :3;
        unsigned LC4POL :1;
    };
    struct {
        unsigned G1POL :1;
        unsigned G2POL :1;
        unsigned G3POL :1;
        unsigned G4POL :1;
        unsigned :3;
        unsigned POL :1;
    };
} CLC4POLbits_t;
extern volatile CLC4POLbits_t CLC4POLbits __attribute__((address(0xF2F)));
# 27539 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC4SEL0 __attribute__((address(0xF30)));

__asm("CLC4SEL0 equ 0F30h");


typedef union {
    struct {
        unsigned LC4D1S0 :1;
        unsigned LC4D1S1 :1;
        unsigned LC4D1S2 :1;
        unsigned LC4D1S3 :1;
        unsigned LC4D1S4 :1;
        unsigned LC4D1S5 :1;
    };
    struct {
        unsigned LC4D1S :8;
    };
    struct {
        unsigned D1S :8;
    };
    struct {
        unsigned D1S0 :1;
        unsigned D1S1 :1;
        unsigned D1S2 :1;
        unsigned D1S3 :1;
        unsigned D1S4 :1;
        unsigned D1S5 :1;
    };
} CLC4SEL0bits_t;
extern volatile CLC4SEL0bits_t CLC4SEL0bits __attribute__((address(0xF30)));
# 27643 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC4SEL1 __attribute__((address(0xF31)));

__asm("CLC4SEL1 equ 0F31h");


typedef union {
    struct {
        unsigned LC4D2S0 :1;
        unsigned LC4D2S1 :1;
        unsigned LC4D2S2 :1;
        unsigned LC4D2S3 :1;
        unsigned LC4D2S4 :1;
        unsigned LC4D2S5 :1;
    };
    struct {
        unsigned LC4D2S :8;
    };
    struct {
        unsigned D2S :8;
    };
    struct {
        unsigned D2S0 :1;
        unsigned D2S1 :1;
        unsigned D2S2 :1;
        unsigned D2S3 :1;
        unsigned D2S4 :1;
        unsigned D2S5 :1;
    };
} CLC4SEL1bits_t;
extern volatile CLC4SEL1bits_t CLC4SEL1bits __attribute__((address(0xF31)));
# 27747 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC4SEL2 __attribute__((address(0xF32)));

__asm("CLC4SEL2 equ 0F32h");


typedef union {
    struct {
        unsigned LC4D3S0 :1;
        unsigned LC4D3S1 :1;
        unsigned LC4D3S2 :1;
        unsigned LC4D3S3 :1;
        unsigned LC4D3S4 :1;
        unsigned LC4D3S5 :1;
    };
    struct {
        unsigned LC4D3S :8;
    };
    struct {
        unsigned D3S :8;
    };
    struct {
        unsigned D3S0 :1;
        unsigned D3S1 :1;
        unsigned D3S2 :1;
        unsigned D3S3 :1;
        unsigned D3S4 :1;
        unsigned D3S5 :1;
    };
} CLC4SEL2bits_t;
extern volatile CLC4SEL2bits_t CLC4SEL2bits __attribute__((address(0xF32)));
# 27851 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC4SEL3 __attribute__((address(0xF33)));

__asm("CLC4SEL3 equ 0F33h");


typedef union {
    struct {
        unsigned LC4D4S0 :1;
        unsigned LC4D4S1 :1;
        unsigned LC4D4S2 :1;
        unsigned LC4D4S3 :1;
        unsigned LC4D4S4 :1;
        unsigned LC4D4S5 :1;
    };
    struct {
        unsigned LC4D4S :8;
    };
    struct {
        unsigned D4S :8;
    };
    struct {
        unsigned D4S0 :1;
        unsigned D4S1 :1;
        unsigned D4S2 :1;
        unsigned D4S3 :1;
        unsigned D4S4 :1;
        unsigned D4S5 :1;
    };
} CLC4SEL3bits_t;
extern volatile CLC4SEL3bits_t CLC4SEL3bits __attribute__((address(0xF33)));
# 27955 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC4GLS0 __attribute__((address(0xF34)));

__asm("CLC4GLS0 equ 0F34h");


typedef union {
    struct {
        unsigned LC4G1D1N :1;
        unsigned LC4G1D1T :1;
        unsigned LC4G1D2N :1;
        unsigned LC4G1D2T :1;
        unsigned LC4G1D3N :1;
        unsigned LC4G1D3T :1;
        unsigned LC4G1D4N :1;
        unsigned LC4G1D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC4GLS0bits_t;
extern volatile CLC4GLS0bits_t CLC4GLS0bits __attribute__((address(0xF34)));
# 28067 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC4GLS1 __attribute__((address(0xF35)));

__asm("CLC4GLS1 equ 0F35h");


typedef union {
    struct {
        unsigned LC4G2D1N :1;
        unsigned LC4G2D1T :1;
        unsigned LC4G2D2N :1;
        unsigned LC4G2D2T :1;
        unsigned LC4G2D3N :1;
        unsigned LC4G2D3T :1;
        unsigned LC4G2D4N :1;
        unsigned LC4G2D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC4GLS1bits_t;
extern volatile CLC4GLS1bits_t CLC4GLS1bits __attribute__((address(0xF35)));
# 28179 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC4GLS2 __attribute__((address(0xF36)));

__asm("CLC4GLS2 equ 0F36h");


typedef union {
    struct {
        unsigned LC4G3D1N :1;
        unsigned LC4G3D1T :1;
        unsigned LC4G3D2N :1;
        unsigned LC4G3D2T :1;
        unsigned LC4G3D3N :1;
        unsigned LC4G3D3T :1;
        unsigned LC4G3D4N :1;
        unsigned LC4G3D4T :1;
    };
    struct {
        unsigned D1N :1;
        unsigned D1T :1;
        unsigned D2N :1;
        unsigned D2T :1;
        unsigned D3N :1;
        unsigned D3T :1;
        unsigned D4N :1;
        unsigned D4T :1;
    };
} CLC4GLS2bits_t;
extern volatile CLC4GLS2bits_t CLC4GLS2bits __attribute__((address(0xF36)));
# 28291 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char CLC4GLS3 __attribute__((address(0xF37)));

__asm("CLC4GLS3 equ 0F37h");


typedef union {
    struct {
        unsigned LC4G4D1N :1;
        unsigned LC4G4D1T :1;
        unsigned LC4G4D2N :1;
        unsigned LC4G4D2T :1;
        unsigned LC4G4D3N :1;
        unsigned LC4G4D3T :1;
        unsigned LC4G4D4N :1;
        unsigned LC4G4D4T :1;
    };
    struct {
        unsigned G4D1N :1;
        unsigned G4D1T :1;
        unsigned G4D2N :1;
        unsigned G4D2T :1;
        unsigned G4D3N :1;
        unsigned G4D3T :1;
        unsigned G4D4N :1;
        unsigned G4D4T :1;
    };
} CLC4GLS3bits_t;
extern volatile CLC4GLS3bits_t CLC4GLS3bits __attribute__((address(0xF37)));
# 28403 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char STATUS_SHAD __attribute__((address(0xFE4)));

__asm("STATUS_SHAD equ 0FE4h");


typedef union {
    struct {
        unsigned C_SHAD :1;
        unsigned DC_SHAD :1;
        unsigned Z_SHAD :1;
    };
} STATUS_SHADbits_t;
extern volatile STATUS_SHADbits_t STATUS_SHADbits __attribute__((address(0xFE4)));
# 28435 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char WREG_SHAD __attribute__((address(0xFE5)));

__asm("WREG_SHAD equ 0FE5h");


typedef union {
    struct {
        unsigned WREG_SHAD :8;
    };
} WREG_SHADbits_t;
extern volatile WREG_SHADbits_t WREG_SHADbits __attribute__((address(0xFE5)));
# 28455 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char BSR_SHAD __attribute__((address(0xFE6)));

__asm("BSR_SHAD equ 0FE6h");


typedef union {
    struct {
        unsigned BSR_SHAD :5;
    };
} BSR_SHADbits_t;
extern volatile BSR_SHADbits_t BSR_SHADbits __attribute__((address(0xFE6)));
# 28475 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char PCLATH_SHAD __attribute__((address(0xFE7)));

__asm("PCLATH_SHAD equ 0FE7h");


typedef union {
    struct {
        unsigned PCLATH_SHAD :7;
    };
} PCLATH_SHADbits_t;
extern volatile PCLATH_SHADbits_t PCLATH_SHADbits __attribute__((address(0xFE7)));
# 28495 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char FSR0L_SHAD __attribute__((address(0xFE8)));

__asm("FSR0L_SHAD equ 0FE8h");


typedef union {
    struct {
        unsigned FSR0L_SHAD :8;
    };
} FSR0L_SHADbits_t;
extern volatile FSR0L_SHADbits_t FSR0L_SHADbits __attribute__((address(0xFE8)));
# 28515 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char FSR0H_SHAD __attribute__((address(0xFE9)));

__asm("FSR0H_SHAD equ 0FE9h");


typedef union {
    struct {
        unsigned FSR0H_SHAD :8;
    };
} FSR0H_SHADbits_t;
extern volatile FSR0H_SHADbits_t FSR0H_SHADbits __attribute__((address(0xFE9)));
# 28535 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char FSR1L_SHAD __attribute__((address(0xFEA)));

__asm("FSR1L_SHAD equ 0FEAh");


typedef union {
    struct {
        unsigned FSR1L_SHAD :8;
    };
} FSR1L_SHADbits_t;
extern volatile FSR1L_SHADbits_t FSR1L_SHADbits __attribute__((address(0xFEA)));
# 28555 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char FSR1H_SHAD __attribute__((address(0xFEB)));

__asm("FSR1H_SHAD equ 0FEBh");


typedef union {
    struct {
        unsigned FSR1H_SHAD :8;
    };
} FSR1H_SHADbits_t;
extern volatile FSR1H_SHADbits_t FSR1H_SHADbits __attribute__((address(0xFEB)));
# 28575 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char STKPTR __attribute__((address(0xFED)));

__asm("STKPTR equ 0FEDh");


typedef union {
    struct {
        unsigned STKPTR :5;
    };
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __attribute__((address(0xFED)));
# 28595 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char TOSL __attribute__((address(0xFEE)));

__asm("TOSL equ 0FEEh");


typedef union {
    struct {
        unsigned TOSL :8;
    };
} TOSLbits_t;
extern volatile TOSLbits_t TOSLbits __attribute__((address(0xFEE)));
# 28615 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile unsigned char TOSH __attribute__((address(0xFEF)));

__asm("TOSH equ 0FEFh");


typedef union {
    struct {
        unsigned TOSH :7;
    };
} TOSHbits_t;
extern volatile TOSHbits_t TOSHbits __attribute__((address(0xFEF)));
# 28645 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/proc/pic16f1619.h" 3
extern volatile __bit ABDEN __attribute__((address(0xCF8)));


extern volatile __bit ABDOVF __attribute__((address(0xCFF)));


extern volatile __bit ACC16 __attribute__((address(0x3088)));


extern volatile __bit ACC17 __attribute__((address(0x3089)));


extern volatile __bit ACC18 __attribute__((address(0x308A)));


extern volatile __bit ACC19 __attribute__((address(0x308B)));


extern volatile __bit ACC20 __attribute__((address(0x308C)));


extern volatile __bit ACC21 __attribute__((address(0x308D)));


extern volatile __bit ACC22 __attribute__((address(0x308E)));


extern volatile __bit ACC23 __attribute__((address(0x308F)));


extern volatile __bit ACC24 __attribute__((address(0x3090)));


extern volatile __bit ACC25 __attribute__((address(0x3091)));


extern volatile __bit ACC26 __attribute__((address(0x3092)));


extern volatile __bit ACC27 __attribute__((address(0x3093)));


extern volatile __bit ACC28 __attribute__((address(0x3094)));


extern volatile __bit ACC29 __attribute__((address(0x3095)));


extern volatile __bit ACC30 __attribute__((address(0x3096)));


extern volatile __bit ACC31 __attribute__((address(0x3097)));


extern volatile __bit ACC32 __attribute__((address(0x3098)));


extern volatile __bit ACC33 __attribute__((address(0x3099)));


extern volatile __bit ACC34 __attribute__((address(0x309A)));


extern volatile __bit ACCM __attribute__((address(0x3CCC)));


extern volatile __bit ACCS __attribute__((address(0x40A9)));


extern volatile __bit ACKDT __attribute__((address(0x10B5)));


extern volatile __bit ACKEN __attribute__((address(0x10B4)));


extern volatile __bit ACKSTAT __attribute__((address(0x10B6)));


extern volatile __bit ACKTIM __attribute__((address(0x10BF)));


extern volatile __bit ADCS0 __attribute__((address(0x4F4)));


extern volatile __bit ADCS1 __attribute__((address(0x4F5)));


extern volatile __bit ADCS2 __attribute__((address(0x4F6)));


extern volatile __bit ADD0 __attribute__((address(0x1090)));


extern volatile __bit ADD1 __attribute__((address(0x1091)));


extern volatile __bit ADD2 __attribute__((address(0x1092)));


extern volatile __bit ADD3 __attribute__((address(0x1093)));


extern volatile __bit ADD4 __attribute__((address(0x1094)));


extern volatile __bit ADD5 __attribute__((address(0x1095)));


extern volatile __bit ADD6 __attribute__((address(0x1096)));


extern volatile __bit ADD7 __attribute__((address(0x1097)));


extern volatile __bit ADDEN __attribute__((address(0xCEB)));


extern volatile __bit ADFM __attribute__((address(0x4F7)));


extern volatile __bit ADFVR0 __attribute__((address(0x8B8)));


extern volatile __bit ADFVR1 __attribute__((address(0x8B9)));


extern volatile __bit ADGO __attribute__((address(0x4E9)));


extern volatile __bit ADIE __attribute__((address(0x486)));


extern volatile __bit ADIF __attribute__((address(0x86)));


extern volatile __bit ADON __attribute__((address(0x4E8)));


extern volatile __bit ADPREF0 __attribute__((address(0x4F0)));


extern volatile __bit ADPREF1 __attribute__((address(0x4F1)));


extern volatile __bit AHEN __attribute__((address(0x10B9)));


extern volatile __bit ANSA0 __attribute__((address(0xC60)));


extern volatile __bit ANSA1 __attribute__((address(0xC61)));


extern volatile __bit ANSA2 __attribute__((address(0xC62)));


extern volatile __bit ANSA4 __attribute__((address(0xC64)));


extern volatile __bit ANSB4 __attribute__((address(0xC6C)));


extern volatile __bit ANSB5 __attribute__((address(0xC6D)));


extern volatile __bit ANSB6 __attribute__((address(0xC6E)));


extern volatile __bit ANSB7 __attribute__((address(0xC6F)));


extern volatile __bit ANSC0 __attribute__((address(0xC70)));


extern volatile __bit ANSC1 __attribute__((address(0xC71)));


extern volatile __bit ANSC2 __attribute__((address(0xC72)));


extern volatile __bit ANSC3 __attribute__((address(0xC73)));


extern volatile __bit ANSC6 __attribute__((address(0xC76)));


extern volatile __bit ANSC7 __attribute__((address(0xC77)));


extern volatile __bit APMOD __attribute__((address(0x40A1)));


extern volatile __bit AT1ACCS __attribute__((address(0x40A9)));


extern volatile __bit AT1APMOD __attribute__((address(0x40A1)));


extern volatile __bit AT1CAP1P __attribute__((address(0x448B)));


extern volatile __bit AT1CAP2P __attribute__((address(0x44AB)));


extern volatile __bit AT1CAP3P __attribute__((address(0x44CB)));


extern volatile __bit AT1CC10 __attribute__((address(0x4478)));


extern volatile __bit AT1CC11 __attribute__((address(0x4479)));


extern volatile __bit AT1CC12 __attribute__((address(0x447A)));


extern volatile __bit AT1CC13 __attribute__((address(0x447B)));


extern volatile __bit AT1CC14 __attribute__((address(0x447C)));


extern volatile __bit AT1CC15 __attribute__((address(0x447D)));


extern volatile __bit AT1CC16 __attribute__((address(0x447E)));


extern volatile __bit AT1CC17 __attribute__((address(0x447F)));


extern volatile __bit AT1CC18 __attribute__((address(0x4480)));


extern volatile __bit AT1CC19 __attribute__((address(0x4481)));


extern volatile __bit AT1CC1EN __attribute__((address(0x448F)));


extern volatile __bit AT1CC1IE __attribute__((address(0x40C8)));


extern volatile __bit AT1CC1IF __attribute__((address(0x40C0)));


extern volatile __bit AT1CC1MODE __attribute__((address(0x4488)));


extern volatile __bit AT1CC1POL __attribute__((address(0x448C)));


extern volatile __bit AT1CC20 __attribute__((address(0x4498)));


extern volatile __bit AT1CC21 __attribute__((address(0x4499)));


extern volatile __bit AT1CC22 __attribute__((address(0x449A)));


extern volatile __bit AT1CC23 __attribute__((address(0x449B)));


extern volatile __bit AT1CC24 __attribute__((address(0x449C)));


extern volatile __bit AT1CC25 __attribute__((address(0x449D)));


extern volatile __bit AT1CC26 __attribute__((address(0x449E)));


extern volatile __bit AT1CC27 __attribute__((address(0x449F)));


extern volatile __bit AT1CC28 __attribute__((address(0x44A0)));


extern volatile __bit AT1CC29 __attribute__((address(0x44A1)));


extern volatile __bit AT1CC2EN __attribute__((address(0x44AF)));


extern volatile __bit AT1CC2IE __attribute__((address(0x40C9)));


extern volatile __bit AT1CC2IF __attribute__((address(0x40C1)));


extern volatile __bit AT1CC2MODE __attribute__((address(0x44A8)));


extern volatile __bit AT1CC2POL __attribute__((address(0x44AC)));


extern volatile __bit AT1CC30 __attribute__((address(0x44B8)));


extern volatile __bit AT1CC31 __attribute__((address(0x44B9)));


extern volatile __bit AT1CC32 __attribute__((address(0x44BA)));


extern volatile __bit AT1CC33 __attribute__((address(0x44BB)));


extern volatile __bit AT1CC34 __attribute__((address(0x44BC)));


extern volatile __bit AT1CC35 __attribute__((address(0x44BD)));


extern volatile __bit AT1CC36 __attribute__((address(0x44BE)));


extern volatile __bit AT1CC37 __attribute__((address(0x44BF)));


extern volatile __bit AT1CC38 __attribute__((address(0x44C0)));


extern volatile __bit AT1CC39 __attribute__((address(0x44C1)));


extern volatile __bit AT1CC3EN __attribute__((address(0x44CF)));


extern volatile __bit AT1CC3IE __attribute__((address(0x40CA)));


extern volatile __bit AT1CC3IF __attribute__((address(0x40C2)));


extern volatile __bit AT1CC3MODE __attribute__((address(0x44C8)));


extern volatile __bit AT1CC3POL __attribute__((address(0x44CC)));


extern volatile __bit AT1CP1S0 __attribute__((address(0x4470)));


extern volatile __bit AT1CP1S1 __attribute__((address(0x4471)));


extern volatile __bit AT1CP1S2 __attribute__((address(0x4472)));


extern volatile __bit AT1CP2S0 __attribute__((address(0x4490)));


extern volatile __bit AT1CP2S1 __attribute__((address(0x4491)));


extern volatile __bit AT1CP2S2 __attribute__((address(0x4492)));


extern volatile __bit AT1CP3S0 __attribute__((address(0x44B0)));


extern volatile __bit AT1CP3S1 __attribute__((address(0x44B1)));


extern volatile __bit AT1CP3S2 __attribute__((address(0x44B2)));


extern volatile __bit AT1CS __attribute__((address(0x4460)));


extern volatile __bit AT1CS0 __attribute__((address(0x4460)));


extern volatile __bit AT1EN __attribute__((address(0x40A7)));


extern volatile __bit AT1ERR0 __attribute__((address(0x40E0)));


extern volatile __bit AT1ERR1 __attribute__((address(0x40E1)));


extern volatile __bit AT1ERR10 __attribute__((address(0x40EA)));


extern volatile __bit AT1ERR11 __attribute__((address(0x40EB)));


extern volatile __bit AT1ERR12 __attribute__((address(0x40EC)));


extern volatile __bit AT1ERR13 __attribute__((address(0x40ED)));


extern volatile __bit AT1ERR14 __attribute__((address(0x40EE)));


extern volatile __bit AT1ERR15 __attribute__((address(0x40EF)));


extern volatile __bit AT1ERR2 __attribute__((address(0x40E2)));


extern volatile __bit AT1ERR3 __attribute__((address(0x40E3)));


extern volatile __bit AT1ERR4 __attribute__((address(0x40E4)));


extern volatile __bit AT1ERR5 __attribute__((address(0x40E5)));


extern volatile __bit AT1ERR6 __attribute__((address(0x40E6)));


extern volatile __bit AT1ERR7 __attribute__((address(0x40E7)));


extern volatile __bit AT1ERR8 __attribute__((address(0x40E8)));


extern volatile __bit AT1ERR9 __attribute__((address(0x40E9)));


extern volatile __bit AT1IE __attribute__((address(0x4A2)));


extern volatile __bit AT1IF __attribute__((address(0xA2)));


extern volatile __bit AT1MISS0 __attribute__((address(0x4070)));


extern volatile __bit AT1MISS1 __attribute__((address(0x4071)));


extern volatile __bit AT1MISS10 __attribute__((address(0x407A)));


extern volatile __bit AT1MISS11 __attribute__((address(0x407B)));


extern volatile __bit AT1MISS12 __attribute__((address(0x407C)));


extern volatile __bit AT1MISS13 __attribute__((address(0x407D)));


extern volatile __bit AT1MISS14 __attribute__((address(0x407E)));


extern volatile __bit AT1MISS15 __attribute__((address(0x407F)));


extern volatile __bit AT1MISS2 __attribute__((address(0x4072)));


extern volatile __bit AT1MISS3 __attribute__((address(0x4073)));


extern volatile __bit AT1MISS4 __attribute__((address(0x4074)));


extern volatile __bit AT1MISS5 __attribute__((address(0x4075)));


extern volatile __bit AT1MISS6 __attribute__((address(0x4076)));


extern volatile __bit AT1MISS7 __attribute__((address(0x4077)));


extern volatile __bit AT1MISS8 __attribute__((address(0x4078)));


extern volatile __bit AT1MISS9 __attribute__((address(0x4079)));


extern volatile __bit AT1MISSIE __attribute__((address(0x40B9)));


extern volatile __bit AT1MISSIF __attribute__((address(0x40B1)));


extern volatile __bit AT1MODE __attribute__((address(0x40A0)));


extern volatile __bit AT1MPP __attribute__((address(0x40AA)));


extern volatile __bit AT1PER0 __attribute__((address(0x4080)));


extern volatile __bit AT1PER1 __attribute__((address(0x4081)));


extern volatile __bit AT1PER10 __attribute__((address(0x408A)));


extern volatile __bit AT1PER11 __attribute__((address(0x408B)));


extern volatile __bit AT1PER12 __attribute__((address(0x408C)));


extern volatile __bit AT1PER13 __attribute__((address(0x408D)));


extern volatile __bit AT1PER14 __attribute__((address(0x408E)));


extern volatile __bit AT1PER2 __attribute__((address(0x4082)));


extern volatile __bit AT1PER3 __attribute__((address(0x4083)));


extern volatile __bit AT1PER4 __attribute__((address(0x4084)));


extern volatile __bit AT1PER5 __attribute__((address(0x4085)));


extern volatile __bit AT1PER6 __attribute__((address(0x4086)));


extern volatile __bit AT1PER7 __attribute__((address(0x4087)));


extern volatile __bit AT1PER8 __attribute__((address(0x4088)));


extern volatile __bit AT1PER9 __attribute__((address(0x4089)));


extern volatile __bit AT1PERIE __attribute__((address(0x40B8)));


extern volatile __bit AT1PERIF __attribute__((address(0x40B0)));


extern volatile __bit AT1PHP __attribute__((address(0x40AE)));


extern volatile __bit AT1PHS0 __attribute__((address(0x4090)));


extern volatile __bit AT1PHS1 __attribute__((address(0x4091)));


extern volatile __bit AT1PHS2 __attribute__((address(0x4092)));


extern volatile __bit AT1PHS3 __attribute__((address(0x4093)));


extern volatile __bit AT1PHS4 __attribute__((address(0x4094)));


extern volatile __bit AT1PHS5 __attribute__((address(0x4095)));


extern volatile __bit AT1PHS6 __attribute__((address(0x4096)));


extern volatile __bit AT1PHS7 __attribute__((address(0x4097)));


extern volatile __bit AT1PHS8 __attribute__((address(0x4098)));


extern volatile __bit AT1PHS9 __attribute__((address(0x4099)));


extern volatile __bit AT1PHSIE __attribute__((address(0x40BA)));


extern volatile __bit AT1PHSIF __attribute__((address(0x40B2)));


extern volatile __bit AT1POL __attribute__((address(0x40A3)));


extern volatile __bit AT1POV __attribute__((address(0x408F)));


extern volatile __bit AT1PREC __attribute__((address(0x40A6)));


extern volatile __bit AT1PRP __attribute__((address(0x40AC)));


extern volatile __bit AT1PS0 __attribute__((address(0x40A4)));


extern volatile __bit AT1PS1 __attribute__((address(0x40A5)));


extern volatile __bit AT1RES0 __attribute__((address(0x4060)));


extern volatile __bit AT1RES1 __attribute__((address(0x4061)));


extern volatile __bit AT1RES2 __attribute__((address(0x4062)));


extern volatile __bit AT1RES3 __attribute__((address(0x4063)));


extern volatile __bit AT1RES4 __attribute__((address(0x4064)));


extern volatile __bit AT1RES5 __attribute__((address(0x4065)));


extern volatile __bit AT1RES6 __attribute__((address(0x4066)));


extern volatile __bit AT1RES7 __attribute__((address(0x4067)));


extern volatile __bit AT1RES8 __attribute__((address(0x4068)));


extern volatile __bit AT1RES9 __attribute__((address(0x4069)));


extern volatile __bit AT1SSEL0 __attribute__((address(0x4468)));


extern volatile __bit AT1SSEL1 __attribute__((address(0x4469)));


extern volatile __bit AT1SSEL2 __attribute__((address(0x446A)));


extern volatile __bit AT1STPT0 __attribute__((address(0x40D0)));


extern volatile __bit AT1STPT1 __attribute__((address(0x40D1)));


extern volatile __bit AT1STPT10 __attribute__((address(0x40DA)));


extern volatile __bit AT1STPT11 __attribute__((address(0x40DB)));


extern volatile __bit AT1STPT12 __attribute__((address(0x40DC)));


extern volatile __bit AT1STPT13 __attribute__((address(0x40DD)));


extern volatile __bit AT1STPT14 __attribute__((address(0x40DE)));


extern volatile __bit AT1STPT2 __attribute__((address(0x40D2)));


extern volatile __bit AT1STPT3 __attribute__((address(0x40D3)));


extern volatile __bit AT1STPT4 __attribute__((address(0x40D4)));


extern volatile __bit AT1STPT5 __attribute__((address(0x40D5)));


extern volatile __bit AT1STPT6 __attribute__((address(0x40D6)));


extern volatile __bit AT1STPT7 __attribute__((address(0x40D7)));


extern volatile __bit AT1STPT8 __attribute__((address(0x40D8)));


extern volatile __bit AT1STPT9 __attribute__((address(0x40D9)));


extern volatile __bit AT1VALID __attribute__((address(0x40A8)));


extern volatile __bit ATCC1PPS0 __attribute__((address(0x70F8)));


extern volatile __bit ATCC1PPS1 __attribute__((address(0x70F9)));


extern volatile __bit ATCC1PPS2 __attribute__((address(0x70FA)));


extern volatile __bit ATCC1PPS3 __attribute__((address(0x70FB)));


extern volatile __bit ATCC1PPS4 __attribute__((address(0x70FC)));


extern volatile __bit ATCC2PPS0 __attribute__((address(0x7118)));


extern volatile __bit ATCC2PPS1 __attribute__((address(0x7119)));


extern volatile __bit ATCC2PPS2 __attribute__((address(0x711A)));


extern volatile __bit ATCC2PPS3 __attribute__((address(0x711B)));


extern volatile __bit ATCC2PPS4 __attribute__((address(0x711C)));


extern volatile __bit ATCC3PPS0 __attribute__((address(0x7170)));


extern volatile __bit ATCC3PPS1 __attribute__((address(0x7171)));


extern volatile __bit ATCC3PPS2 __attribute__((address(0x7172)));


extern volatile __bit ATCC3PPS3 __attribute__((address(0x7173)));


extern volatile __bit ATCC3PPS4 __attribute__((address(0x7174)));


extern volatile __bit ATINPPS0 __attribute__((address(0x70B0)));


extern volatile __bit ATINPPS1 __attribute__((address(0x70B1)));


extern volatile __bit ATINPPS2 __attribute__((address(0x70B2)));


extern volatile __bit ATINPPS3 __attribute__((address(0x70B3)));


extern volatile __bit ATINPPS4 __attribute__((address(0x70B4)));


extern volatile __bit BCL1IE __attribute__((address(0x48B)));


extern volatile __bit BCL1IF __attribute__((address(0x8B)));


extern volatile __bit BF __attribute__((address(0x10A0)));


extern volatile __bit BOEN __attribute__((address(0x10BC)));


extern volatile __bit BORFS __attribute__((address(0x8B6)));


extern volatile __bit BORRDY __attribute__((address(0x8B0)));


extern volatile __bit BRG16 __attribute__((address(0xCFB)));


extern volatile __bit BRGH __attribute__((address(0xCF2)));


extern volatile __bit BSR0 __attribute__((address(0x40)));


extern volatile __bit BSR1 __attribute__((address(0x41)));


extern volatile __bit BSR2 __attribute__((address(0x42)));


extern volatile __bit BSR3 __attribute__((address(0x43)));


extern volatile __bit BSR4 __attribute__((address(0x44)));


extern volatile __bit BUF0 __attribute__((address(0x1088)));


extern volatile __bit BUF1 __attribute__((address(0x1089)));


extern volatile __bit BUF2 __attribute__((address(0x108A)));


extern volatile __bit BUF3 __attribute__((address(0x108B)));


extern volatile __bit BUF4 __attribute__((address(0x108C)));


extern volatile __bit BUF5 __attribute__((address(0x108D)));


extern volatile __bit BUF6 __attribute__((address(0x108E)));


extern volatile __bit BUF7 __attribute__((address(0x108F)));


extern volatile __bit C1AS __attribute__((address(0x34A1)));


extern volatile __bit C1HYS __attribute__((address(0x889)));


extern volatile __bit C1IE __attribute__((address(0x48D)));


extern volatile __bit C1IF __attribute__((address(0x8D)));


extern volatile __bit C1INTN __attribute__((address(0x896)));


extern volatile __bit C1INTP __attribute__((address(0x897)));


extern volatile __bit C1NCH0 __attribute__((address(0x890)));


extern volatile __bit C1NCH1 __attribute__((address(0x891)));


extern volatile __bit C1NCH2 __attribute__((address(0x892)));


extern volatile __bit C1ON __attribute__((address(0x88F)));


extern volatile __bit C1OUT __attribute__((address(0x88E)));


extern volatile __bit C1PCH0 __attribute__((address(0x894)));


extern volatile __bit C1PCH1 __attribute__((address(0x895)));


extern volatile __bit C1POL __attribute__((address(0x88C)));


extern volatile __bit C1SP __attribute__((address(0x88A)));


extern volatile __bit C1SYNC __attribute__((address(0x888)));


extern volatile __bit C2AS __attribute__((address(0x34A2)));


extern volatile __bit C2HYS __attribute__((address(0x899)));


extern volatile __bit C2IE __attribute__((address(0x48E)));


extern volatile __bit C2IF __attribute__((address(0x8E)));


extern volatile __bit C2INTN __attribute__((address(0x8A6)));


extern volatile __bit C2INTP __attribute__((address(0x8A7)));


extern volatile __bit C2NCH0 __attribute__((address(0x8A0)));


extern volatile __bit C2NCH1 __attribute__((address(0x8A1)));


extern volatile __bit C2NCH2 __attribute__((address(0x8A2)));


extern volatile __bit C2ON __attribute__((address(0x89F)));


extern volatile __bit C2OUT __attribute__((address(0x89E)));


extern volatile __bit C2PCH0 __attribute__((address(0x8A4)));


extern volatile __bit C2PCH1 __attribute__((address(0x8A5)));


extern volatile __bit C2POL __attribute__((address(0x89C)));


extern volatile __bit C2SP __attribute__((address(0x89A)));


extern volatile __bit C2SYNC __attribute__((address(0x898)));


extern volatile __bit CAP1P __attribute__((address(0x448B)));


extern volatile __bit CAP2P __attribute__((address(0x44AB)));


extern volatile __bit CAP3P __attribute__((address(0x44CB)));


extern volatile __bit CARRY __attribute__((address(0x18)));


extern volatile __bit CC10 __attribute__((address(0x4478)));


extern volatile __bit CC11 __attribute__((address(0x4479)));


extern volatile __bit CC12 __attribute__((address(0x447A)));


extern volatile __bit CC14 __attribute__((address(0x447C)));


extern volatile __bit CC15 __attribute__((address(0x447D)));


extern volatile __bit CC16 __attribute__((address(0x447E)));


extern volatile __bit CC17 __attribute__((address(0x447F)));


extern volatile __bit CC18 __attribute__((address(0x4480)));


extern volatile __bit CC19 __attribute__((address(0x4481)));


extern volatile __bit CC1EN __attribute__((address(0x448F)));


extern volatile __bit CC1MODE __attribute__((address(0x4488)));


extern volatile __bit CC1POL __attribute__((address(0x448C)));


extern volatile __bit CC20 __attribute__((address(0x4498)));


extern volatile __bit CC21 __attribute__((address(0x4499)));


extern volatile __bit CC22 __attribute__((address(0x449A)));


extern volatile __bit CC24 __attribute__((address(0x449C)));


extern volatile __bit CC26 __attribute__((address(0x449E)));


extern volatile __bit CC27 __attribute__((address(0x449F)));


extern volatile __bit CC28 __attribute__((address(0x44A0)));


extern volatile __bit CC29 __attribute__((address(0x44A1)));


extern volatile __bit CC2EN __attribute__((address(0x44AF)));


extern volatile __bit CC2MODE __attribute__((address(0x44A8)));


extern volatile __bit CC2POL __attribute__((address(0x44AC)));


extern volatile __bit CC30 __attribute__((address(0x44B8)));


extern volatile __bit CC31 __attribute__((address(0x44B9)));


extern volatile __bit CC32 __attribute__((address(0x44BA)));


extern volatile __bit CC33 __attribute__((address(0x44BB)));


extern volatile __bit CC34 __attribute__((address(0x44BC)));


extern volatile __bit CC35 __attribute__((address(0x44BD)));


extern volatile __bit CC36 __attribute__((address(0x44BE)));


extern volatile __bit CC37 __attribute__((address(0x44BF)));


extern volatile __bit CC38 __attribute__((address(0x44C0)));


extern volatile __bit CC39 __attribute__((address(0x44C1)));


extern volatile __bit CC3EN __attribute__((address(0x44CF)));


extern volatile __bit CC3MODE __attribute__((address(0x44C8)));


extern volatile __bit CC3POL __attribute__((address(0x44CC)));


extern volatile __bit CCP1CTS0 __attribute__((address(0x14A0)));


extern volatile __bit CCP1CTS1 __attribute__((address(0x14A1)));


extern volatile __bit CCP1CTS2 __attribute__((address(0x14A2)));


extern volatile __bit CCP1EN __attribute__((address(0x149F)));


extern volatile __bit CCP1FMT __attribute__((address(0x149C)));


extern volatile __bit CCP1IE __attribute__((address(0x482)));


extern volatile __bit CCP1IF __attribute__((address(0x82)));


extern volatile __bit CCP1MODE0 __attribute__((address(0x1498)));


extern volatile __bit CCP1MODE1 __attribute__((address(0x1499)));


extern volatile __bit CCP1MODE2 __attribute__((address(0x149A)));


extern volatile __bit CCP1MODE3 __attribute__((address(0x149B)));


extern volatile __bit CCP1OUT __attribute__((address(0x149D)));


extern volatile __bit CCP1PPS0 __attribute__((address(0x70A0)));


extern volatile __bit CCP1PPS1 __attribute__((address(0x70A1)));


extern volatile __bit CCP1PPS2 __attribute__((address(0x70A2)));


extern volatile __bit CCP1PPS3 __attribute__((address(0x70A3)));


extern volatile __bit CCP1PPS4 __attribute__((address(0x70A4)));


extern volatile __bit CCP1TSEL0 __attribute__((address(0x14F0)));


extern volatile __bit CCP1TSEL1 __attribute__((address(0x14F1)));


extern volatile __bit CCP2CTS0 __attribute__((address(0x14D8)));


extern volatile __bit CCP2CTS1 __attribute__((address(0x14D9)));


extern volatile __bit CCP2CTS2 __attribute__((address(0x14DA)));


extern volatile __bit CCP2EN __attribute__((address(0x14D7)));


extern volatile __bit CCP2FMT __attribute__((address(0x14D4)));


extern volatile __bit CCP2IE __attribute__((address(0x488)));


extern volatile __bit CCP2IF __attribute__((address(0x88)));


extern volatile __bit CCP2MODE0 __attribute__((address(0x14D0)));


extern volatile __bit CCP2MODE1 __attribute__((address(0x14D1)));


extern volatile __bit CCP2MODE2 __attribute__((address(0x14D2)));


extern volatile __bit CCP2MODE3 __attribute__((address(0x14D3)));


extern volatile __bit CCP2OUT __attribute__((address(0x14D5)));


extern volatile __bit CCP2PPS0 __attribute__((address(0x70A8)));


extern volatile __bit CCP2PPS1 __attribute__((address(0x70A9)));


extern volatile __bit CCP2PPS2 __attribute__((address(0x70AA)));


extern volatile __bit CCP2PPS3 __attribute__((address(0x70AB)));


extern volatile __bit CCP2PPS4 __attribute__((address(0x70AC)));


extern volatile __bit CCP2TSEL0 __attribute__((address(0x14F2)));


extern volatile __bit CCP2TSEL1 __attribute__((address(0x14F3)));


extern volatile __bit CCW5 __attribute__((address(0x449D)));


extern volatile __bit CDAFVR0 __attribute__((address(0x8BA)));


extern volatile __bit CDAFVR1 __attribute__((address(0x8BB)));


extern volatile __bit CFGS __attribute__((address(0xCAE)));


extern volatile __bit CHS0 __attribute__((address(0x4EA)));


extern volatile __bit CHS1 __attribute__((address(0x4EB)));


extern volatile __bit CHS2 __attribute__((address(0x4EC)));


extern volatile __bit CHS3 __attribute__((address(0x4ED)));


extern volatile __bit CHS4 __attribute__((address(0x4EE)));


extern volatile __bit CKE __attribute__((address(0x10A6)));


extern volatile __bit CKP __attribute__((address(0x10AC)));


extern volatile __bit CKPPS0 __attribute__((address(0x7128)));


extern volatile __bit CKPPS1 __attribute__((address(0x7129)));


extern volatile __bit CKPPS2 __attribute__((address(0x712A)));


extern volatile __bit CKPPS3 __attribute__((address(0x712B)));


extern volatile __bit CKPPS4 __attribute__((address(0x712C)));


extern volatile __bit CLC1IE __attribute__((address(0x490)));


extern volatile __bit CLC1IF __attribute__((address(0x90)));


extern volatile __bit CLC2IE __attribute__((address(0x491)));


extern volatile __bit CLC2IF __attribute__((address(0x91)));


extern volatile __bit CLC3IE __attribute__((address(0x492)));


extern volatile __bit CLC3IF __attribute__((address(0x92)));


extern volatile __bit CLC4IE __attribute__((address(0x493)));


extern volatile __bit CLC4IF __attribute__((address(0x93)));


extern volatile __bit CLCIN0PPS0 __attribute__((address(0x7140)));


extern volatile __bit CLCIN0PPS1 __attribute__((address(0x7141)));


extern volatile __bit CLCIN0PPS2 __attribute__((address(0x7142)));


extern volatile __bit CLCIN0PPS3 __attribute__((address(0x7143)));


extern volatile __bit CLCIN0PPS4 __attribute__((address(0x7144)));


extern volatile __bit CLCIN1PPS0 __attribute__((address(0x7148)));


extern volatile __bit CLCIN1PPS1 __attribute__((address(0x7149)));


extern volatile __bit CLCIN1PPS2 __attribute__((address(0x714A)));


extern volatile __bit CLCIN1PPS3 __attribute__((address(0x714B)));


extern volatile __bit CLCIN1PPS4 __attribute__((address(0x714C)));


extern volatile __bit CLCIN2PPS0 __attribute__((address(0x7150)));


extern volatile __bit CLCIN2PPS1 __attribute__((address(0x7151)));


extern volatile __bit CLCIN2PPS2 __attribute__((address(0x7152)));


extern volatile __bit CLCIN2PPS3 __attribute__((address(0x7153)));


extern volatile __bit CLCIN2PPS4 __attribute__((address(0x7154)));


extern volatile __bit CLCIN3PPS0 __attribute__((address(0x7158)));


extern volatile __bit CLCIN3PPS1 __attribute__((address(0x7159)));


extern volatile __bit CLCIN3PPS2 __attribute__((address(0x715A)));


extern volatile __bit CLCIN3PPS3 __attribute__((address(0x715B)));


extern volatile __bit CLCIN3PPS4 __attribute__((address(0x715C)));


extern volatile __bit CP1S0 __attribute__((address(0x4470)));


extern volatile __bit CP1S1 __attribute__((address(0x4471)));


extern volatile __bit CP1S2 __attribute__((address(0x4472)));


extern volatile __bit CP2S0 __attribute__((address(0x4490)));


extern volatile __bit CP2S1 __attribute__((address(0x4491)));


extern volatile __bit CP2S2 __attribute__((address(0x4492)));


extern volatile __bit CP3S0 __attribute__((address(0x44B0)));


extern volatile __bit CP3S1 __attribute__((address(0x44B1)));


extern volatile __bit CP3S2 __attribute__((address(0x44B2)));


extern volatile __bit CRCACC0 __attribute__((address(0x3C98)));


extern volatile __bit CRCACC1 __attribute__((address(0x3C99)));


extern volatile __bit CRCACC10 __attribute__((address(0x3CA2)));


extern volatile __bit CRCACC11 __attribute__((address(0x3CA3)));


extern volatile __bit CRCACC12 __attribute__((address(0x3CA4)));


extern volatile __bit CRCACC13 __attribute__((address(0x3CA5)));


extern volatile __bit CRCACC14 __attribute__((address(0x3CA6)));


extern volatile __bit CRCACC15 __attribute__((address(0x3CA7)));


extern volatile __bit CRCACC2 __attribute__((address(0x3C9A)));


extern volatile __bit CRCACC3 __attribute__((address(0x3C9B)));


extern volatile __bit CRCACC4 __attribute__((address(0x3C9C)));


extern volatile __bit CRCACC5 __attribute__((address(0x3C9D)));


extern volatile __bit CRCACC6 __attribute__((address(0x3C9E)));


extern volatile __bit CRCACC7 __attribute__((address(0x3C9F)));


extern volatile __bit CRCACC8 __attribute__((address(0x3CA0)));


extern volatile __bit CRCACC9 __attribute__((address(0x3CA1)));


extern volatile __bit CRCACCM __attribute__((address(0x3CCC)));


extern volatile __bit CRCBUSY __attribute__((address(0x3CCD)));


extern volatile __bit CRCDAT0 __attribute__((address(0x3C88)));


extern volatile __bit CRCDAT1 __attribute__((address(0x3C89)));


extern volatile __bit CRCDAT10 __attribute__((address(0x3C92)));


extern volatile __bit CRCDAT11 __attribute__((address(0x3C93)));


extern volatile __bit CRCDAT12 __attribute__((address(0x3C94)));


extern volatile __bit CRCDAT13 __attribute__((address(0x3C95)));


extern volatile __bit CRCDAT14 __attribute__((address(0x3C96)));


extern volatile __bit CRCDAT15 __attribute__((address(0x3C97)));


extern volatile __bit CRCDAT2 __attribute__((address(0x3C8A)));


extern volatile __bit CRCDAT3 __attribute__((address(0x3C8B)));


extern volatile __bit CRCDAT4 __attribute__((address(0x3C8C)));


extern volatile __bit CRCDAT5 __attribute__((address(0x3C8D)));


extern volatile __bit CRCDAT6 __attribute__((address(0x3C8E)));


extern volatile __bit CRCDAT8 __attribute__((address(0x3C90)));


extern volatile __bit CRCDAT9 __attribute__((address(0x3C91)));


extern volatile __bit CRCDLEN0 __attribute__((address(0x3CD4)));


extern volatile __bit CRCDLEN1 __attribute__((address(0x3CD5)));


extern volatile __bit CRCDLEN2 __attribute__((address(0x3CD6)));


extern volatile __bit CRCDLEN3 __attribute__((address(0x3CD7)));


extern volatile __bit CRCEN __attribute__((address(0x3CCF)));


extern volatile __bit CRCFULL __attribute__((address(0x3CC8)));


extern volatile __bit CRCGO __attribute__((address(0x3CCE)));


extern volatile __bit CRCIE __attribute__((address(0x49E)));


extern volatile __bit CRCIF __attribute__((address(0x9E)));


extern volatile __bit CRCPLEN0 __attribute__((address(0x3CD0)));


extern volatile __bit CRCPLEN1 __attribute__((address(0x3CD1)));


extern volatile __bit CRCPLEN2 __attribute__((address(0x3CD2)));


extern volatile __bit CRCPLEN3 __attribute__((address(0x3CD3)));


extern volatile __bit CRCSHIFT0 __attribute__((address(0x3CA8)));


extern volatile __bit CRCSHIFT1 __attribute__((address(0x3CA9)));


extern volatile __bit CRCSHIFT10 __attribute__((address(0x3CB2)));


extern volatile __bit CRCSHIFT11 __attribute__((address(0x3CB3)));


extern volatile __bit CRCSHIFT12 __attribute__((address(0x3CB4)));


extern volatile __bit CRCSHIFT13 __attribute__((address(0x3CB5)));


extern volatile __bit CRCSHIFT14 __attribute__((address(0x3CB6)));


extern volatile __bit CRCSHIFT15 __attribute__((address(0x3CB7)));


extern volatile __bit CRCSHIFT2 __attribute__((address(0x3CAA)));


extern volatile __bit CRCSHIFT3 __attribute__((address(0x3CAB)));


extern volatile __bit CRCSHIFT4 __attribute__((address(0x3CAC)));


extern volatile __bit CRCSHIFT5 __attribute__((address(0x3CAD)));


extern volatile __bit CRCSHIFT6 __attribute__((address(0x3CAE)));


extern volatile __bit CRCSHIFT7 __attribute__((address(0x3CAF)));


extern volatile __bit CRCSHIFT8 __attribute__((address(0x3CB0)));


extern volatile __bit CRCSHIFT9 __attribute__((address(0x3CB1)));


extern volatile __bit CRCSHIFTM __attribute__((address(0x3CC9)));


extern volatile __bit CRCXOR1 __attribute__((address(0x3CB9)));


extern volatile __bit CRCXOR10 __attribute__((address(0x3CC2)));


extern volatile __bit CRCXOR11 __attribute__((address(0x3CC3)));


extern volatile __bit CRCXOR12 __attribute__((address(0x3CC4)));


extern volatile __bit CRCXOR13 __attribute__((address(0x3CC5)));


extern volatile __bit CRCXOR14 __attribute__((address(0x3CC6)));


extern volatile __bit CRCXOR15 __attribute__((address(0x3CC7)));


extern volatile __bit CRCXOR2 __attribute__((address(0x3CBA)));


extern volatile __bit CRCXOR3 __attribute__((address(0x3CBB)));


extern volatile __bit CRCXOR4 __attribute__((address(0x3CBC)));


extern volatile __bit CRCXOR5 __attribute__((address(0x3CBD)));


extern volatile __bit CRCXOR6 __attribute__((address(0x3CBE)));


extern volatile __bit CRCXOR7 __attribute__((address(0x3CBF)));


extern volatile __bit CRCXOR8 __attribute__((address(0x3CC0)));


extern volatile __bit CRCXOR9 __attribute__((address(0x3CC1)));


extern volatile __bit CRDCDAT7 __attribute__((address(0x3C8F)));


extern volatile __bit CREN __attribute__((address(0xCEC)));


extern volatile __bit CSRC __attribute__((address(0xCF7)));


extern volatile __bit CWG1C1AS __attribute__((address(0x34A1)));


extern volatile __bit CWG1C2AS __attribute__((address(0x34A2)));


extern volatile __bit CWG1CS __attribute__((address(0x34C8)));


extern volatile __bit CWG1DBF0 __attribute__((address(0x3490)));


extern volatile __bit CWG1DBF1 __attribute__((address(0x3491)));


extern volatile __bit CWG1DBF2 __attribute__((address(0x3492)));


extern volatile __bit CWG1DBF3 __attribute__((address(0x3493)));


extern volatile __bit CWG1DBF4 __attribute__((address(0x3494)));


extern volatile __bit CWG1DBF5 __attribute__((address(0x3495)));


extern volatile __bit CWG1DBR0 __attribute__((address(0x3488)));


extern volatile __bit CWG1DBR1 __attribute__((address(0x3489)));


extern volatile __bit CWG1DBR2 __attribute__((address(0x348A)));


extern volatile __bit CWG1DBR3 __attribute__((address(0x348B)));


extern volatile __bit CWG1DBR4 __attribute__((address(0x348C)));


extern volatile __bit CWG1DBR5 __attribute__((address(0x348D)));


extern volatile __bit CWG1EN __attribute__((address(0x34B7)));


extern volatile __bit CWG1IN __attribute__((address(0x34BD)));


extern volatile __bit CWG1INAS __attribute__((address(0x34A0)));


extern volatile __bit CWG1INPPS0 __attribute__((address(0x70B8)));


extern volatile __bit CWG1INPPS1 __attribute__((address(0x70B9)));


extern volatile __bit CWG1INPPS2 __attribute__((address(0x70BA)));


extern volatile __bit CWG1INPPS3 __attribute__((address(0x70BB)));


extern volatile __bit CWG1INPPS4 __attribute__((address(0x70BC)));


extern volatile __bit CWG1IS0 __attribute__((address(0x34D0)));


extern volatile __bit CWG1IS1 __attribute__((address(0x34D1)));


extern volatile __bit CWG1IS2 __attribute__((address(0x34D2)));


extern volatile __bit CWG1IS3 __attribute__((address(0x34D3)));


extern volatile __bit CWG1LD __attribute__((address(0x34B6)));


extern volatile __bit CWG1LSAC0 __attribute__((address(0x349A)));


extern volatile __bit CWG1LSAC1 __attribute__((address(0x349B)));


extern volatile __bit CWG1LSBD0 __attribute__((address(0x349C)));


extern volatile __bit CWG1LSBD1 __attribute__((address(0x349D)));


extern volatile __bit CWG1MODE0 __attribute__((address(0x34B0)));


extern volatile __bit CWG1MODE1 __attribute__((address(0x34B1)));


extern volatile __bit CWG1MODE2 __attribute__((address(0x34B2)));


extern volatile __bit CWG1OVRA __attribute__((address(0x34AC)));


extern volatile __bit CWG1OVRB __attribute__((address(0x34AD)));


extern volatile __bit CWG1OVRC __attribute__((address(0x34AE)));


extern volatile __bit CWG1OVRD __attribute__((address(0x34AF)));


extern volatile __bit CWG1POLA __attribute__((address(0x34B8)));


extern volatile __bit CWG1POLB __attribute__((address(0x34B9)));


extern volatile __bit CWG1POLC __attribute__((address(0x34BA)));


extern volatile __bit CWG1POLD __attribute__((address(0x34BB)));


extern volatile __bit CWG1REN __attribute__((address(0x349E)));


extern volatile __bit CWG1SHUTDOWN __attribute__((address(0x349F)));


extern volatile __bit CWG1STRA __attribute__((address(0x34A8)));


extern volatile __bit CWG1STRB __attribute__((address(0x34A9)));


extern volatile __bit CWG1STRC __attribute__((address(0x34AA)));


extern volatile __bit CWG1STRD __attribute__((address(0x34AB)));


extern volatile __bit CWG1TMR2AS __attribute__((address(0x34A4)));


extern volatile __bit CWG1TMR4AS __attribute__((address(0x34A5)));


extern volatile __bit CWG1TMR6AS __attribute__((address(0x34A6)));


extern volatile __bit CWGIE __attribute__((address(0x495)));


extern volatile __bit CWGIF __attribute__((address(0x95)));


extern volatile __bit CWGINPPS0 __attribute__((address(0x70B8)));


extern volatile __bit CWGINPPS1 __attribute__((address(0x70B9)));


extern volatile __bit CWGINPPS2 __attribute__((address(0x70BA)));


extern volatile __bit CWGINPPS3 __attribute__((address(0x70BB)));


extern volatile __bit CWGINPPS4 __attribute__((address(0x70BC)));


extern volatile __bit C_SHAD __attribute__((address(0x7F20)));


extern volatile __bit D1PSS0 __attribute__((address(0x8C2)));


extern volatile __bit D1PSS1 __attribute__((address(0x8C3)));


extern volatile __bit DAC1EN __attribute__((address(0x8C7)));


extern volatile __bit DAC1OE __attribute__((address(0x8C5)));


extern volatile __bit DAC1R0 __attribute__((address(0x8C8)));


extern volatile __bit DAC1R1 __attribute__((address(0x8C9)));


extern volatile __bit DAC1R2 __attribute__((address(0x8CA)));


extern volatile __bit DAC1R3 __attribute__((address(0x8CB)));


extern volatile __bit DAC1R4 __attribute__((address(0x8CC)));


extern volatile __bit DAC1R5 __attribute__((address(0x8CD)));


extern volatile __bit DAC1R6 __attribute__((address(0x8CE)));


extern volatile __bit DAC1R7 __attribute__((address(0x8CF)));


extern volatile __bit DAT0 __attribute__((address(0x3C88)));


extern volatile __bit DAT1 __attribute__((address(0x3C89)));


extern volatile __bit DAT10 __attribute__((address(0x3C92)));


extern volatile __bit DAT11 __attribute__((address(0x3C93)));


extern volatile __bit DAT12 __attribute__((address(0x3C94)));


extern volatile __bit DAT13 __attribute__((address(0x3C95)));


extern volatile __bit DAT14 __attribute__((address(0x3C96)));


extern volatile __bit DAT15 __attribute__((address(0x3C97)));


extern volatile __bit DAT2 __attribute__((address(0x3C8A)));


extern volatile __bit DAT3 __attribute__((address(0x3C8B)));


extern volatile __bit DAT4 __attribute__((address(0x3C8C)));


extern volatile __bit DAT5 __attribute__((address(0x3C8D)));


extern volatile __bit DAT6 __attribute__((address(0x3C8E)));


extern volatile __bit DAT7 __attribute__((address(0x3C8F)));


extern volatile __bit DAT8 __attribute__((address(0x3C90)));


extern volatile __bit DAT9 __attribute__((address(0x3C91)));


extern volatile __bit DBF0 __attribute__((address(0x3490)));


extern volatile __bit DBF1 __attribute__((address(0x3491)));


extern volatile __bit DBF2 __attribute__((address(0x3492)));


extern volatile __bit DBF3 __attribute__((address(0x3493)));


extern volatile __bit DBF4 __attribute__((address(0x3494)));


extern volatile __bit DBF5 __attribute__((address(0x3495)));


extern volatile __bit DBR0 __attribute__((address(0x3488)));


extern volatile __bit DBR1 __attribute__((address(0x3489)));


extern volatile __bit DBR2 __attribute__((address(0x348A)));


extern volatile __bit DBR3 __attribute__((address(0x348B)));


extern volatile __bit DBR4 __attribute__((address(0x348C)));


extern volatile __bit DBR5 __attribute__((address(0x348D)));


extern volatile __bit DC __attribute__((address(0x19)));


extern volatile __bit DC_SHAD __attribute__((address(0x7F21)));


extern volatile __bit DHEN __attribute__((address(0x10B8)));


extern volatile __bit DLEN0 __attribute__((address(0x3CD4)));


extern volatile __bit DLEN1 __attribute__((address(0x3CD5)));


extern volatile __bit DLEN2 __attribute__((address(0x3CD6)));


extern volatile __bit DLEN3 __attribute__((address(0x3CD7)));


extern volatile __bit D_nA __attribute__((address(0x10A5)));


extern volatile __bit ERR0 __attribute__((address(0x40E0)));


extern volatile __bit ERR1 __attribute__((address(0x40E1)));


extern volatile __bit ERR10 __attribute__((address(0x40EA)));


extern volatile __bit ERR11 __attribute__((address(0x40EB)));


extern volatile __bit ERR12 __attribute__((address(0x40EC)));


extern volatile __bit ERR13 __attribute__((address(0x40ED)));


extern volatile __bit ERR14 __attribute__((address(0x40EE)));


extern volatile __bit ERR15 __attribute__((address(0x40EF)));


extern volatile __bit ERR2 __attribute__((address(0x40E2)));


extern volatile __bit ERR3 __attribute__((address(0x40E3)));


extern volatile __bit ERR4 __attribute__((address(0x40E4)));


extern volatile __bit ERR5 __attribute__((address(0x40E5)));


extern volatile __bit ERR6 __attribute__((address(0x40E6)));


extern volatile __bit ERR7 __attribute__((address(0x40E7)));


extern volatile __bit ERR8 __attribute__((address(0x40E8)));


extern volatile __bit ERR9 __attribute__((address(0x40E9)));


extern volatile __bit ERRH0 __attribute__((address(0x40E8)));


extern volatile __bit ERRH1 __attribute__((address(0x40E9)));


extern volatile __bit ERRH2 __attribute__((address(0x40EA)));


extern volatile __bit ERRH3 __attribute__((address(0x40EB)));


extern volatile __bit ERRH4 __attribute__((address(0x40EC)));


extern volatile __bit ERRH5 __attribute__((address(0x40ED)));


extern volatile __bit ERRH6 __attribute__((address(0x40EE)));


extern volatile __bit ERRH7 __attribute__((address(0x40EF)));


extern volatile __bit ERRL0 __attribute__((address(0x40E0)));


extern volatile __bit ERRL1 __attribute__((address(0x40E1)));


extern volatile __bit ERRL2 __attribute__((address(0x40E2)));


extern volatile __bit ERRL3 __attribute__((address(0x40E3)));


extern volatile __bit ERRL4 __attribute__((address(0x40E4)));


extern volatile __bit ERRL5 __attribute__((address(0x40E5)));


extern volatile __bit ERRL6 __attribute__((address(0x40E6)));


extern volatile __bit ERRL7 __attribute__((address(0x40E7)));


extern volatile __bit FERR __attribute__((address(0xCEA)));


extern volatile __bit FREE __attribute__((address(0xCAC)));


extern volatile __bit FULL __attribute__((address(0x3CC8)));


extern volatile __bit FVREN __attribute__((address(0x8BF)));


extern volatile __bit FVRRDY __attribute__((address(0x8BE)));


extern volatile __bit G1EN __attribute__((address(0x34B7)));


extern volatile __bit GCEN __attribute__((address(0x10B7)));


extern volatile __bit GIE __attribute__((address(0x5F)));


extern volatile __bit GO __attribute__((address(0x4E9)));


extern volatile __bit GO_nDONE __attribute__((address(0x4E9)));


extern volatile __bit HADR0 __attribute__((address(0x38D0)));


extern volatile __bit HADR1 __attribute__((address(0x38D1)));


extern volatile __bit HADR10 __attribute__((address(0x38DA)));


extern volatile __bit HADR11 __attribute__((address(0x38DB)));


extern volatile __bit HADR12 __attribute__((address(0x38DC)));


extern volatile __bit HADR13 __attribute__((address(0x38DD)));


extern volatile __bit HADR14 __attribute__((address(0x38DE)));


extern volatile __bit HADR15 __attribute__((address(0x38DF)));


extern volatile __bit HADR3 __attribute__((address(0x38D3)));


extern volatile __bit HADR4 __attribute__((address(0x38D4)));


extern volatile __bit HADR5 __attribute__((address(0x38D5)));


extern volatile __bit HADR6 __attribute__((address(0x38D6)));


extern volatile __bit HADR7 __attribute__((address(0x38D7)));


extern volatile __bit HADR8 __attribute__((address(0x38D8)));


extern volatile __bit HADR9 __attribute__((address(0x38D9)));


extern volatile __bit HARD2 __attribute__((address(0x38D2)));


extern volatile __bit HFIOFL __attribute__((address(0x4D3)));


extern volatile __bit HFIOFR __attribute__((address(0x4D4)));


extern volatile __bit HFIOFS __attribute__((address(0x4D0)));


extern volatile __bit HIDC4 __attribute__((address(0x2074)));


extern volatile __bit HIDC5 __attribute__((address(0x2075)));


extern volatile __bit IN __attribute__((address(0x34BD)));


extern volatile __bit IN0 __attribute__((address(0x2C70)));


extern volatile __bit IN1 __attribute__((address(0x2C71)));


extern volatile __bit IN10 __attribute__((address(0x2C7A)));


extern volatile __bit IN11 __attribute__((address(0x2C7B)));


extern volatile __bit IN12 __attribute__((address(0x2C7C)));


extern volatile __bit IN13 __attribute__((address(0x2C7D)));


extern volatile __bit IN14 __attribute__((address(0x2C7E)));


extern volatile __bit IN15 __attribute__((address(0x2C7F)));


extern volatile __bit IN2 __attribute__((address(0x2C72)));


extern volatile __bit IN3 __attribute__((address(0x2C73)));


extern volatile __bit IN4 __attribute__((address(0x2C74)));


extern volatile __bit IN5 __attribute__((address(0x2C75)));


extern volatile __bit IN6 __attribute__((address(0x2C76)));


extern volatile __bit IN7 __attribute__((address(0x2C77)));


extern volatile __bit IN8 __attribute__((address(0x2C78)));


extern volatile __bit IN9 __attribute__((address(0x2C79)));


extern volatile __bit INAS __attribute__((address(0x34A0)));


extern volatile __bit INLVLA0 __attribute__((address(0x1C60)));


extern volatile __bit INLVLA1 __attribute__((address(0x1C61)));


extern volatile __bit INLVLA2 __attribute__((address(0x1C62)));


extern volatile __bit INLVLA3 __attribute__((address(0x1C63)));


extern volatile __bit INLVLA4 __attribute__((address(0x1C64)));


extern volatile __bit INLVLA5 __attribute__((address(0x1C65)));


extern volatile __bit INLVLB4 __attribute__((address(0x1C6C)));


extern volatile __bit INLVLB5 __attribute__((address(0x1C6D)));


extern volatile __bit INLVLB6 __attribute__((address(0x1C6E)));


extern volatile __bit INLVLB7 __attribute__((address(0x1C6F)));


extern volatile __bit INLVLC0 __attribute__((address(0x1C70)));


extern volatile __bit INLVLC1 __attribute__((address(0x1C71)));


extern volatile __bit INLVLC2 __attribute__((address(0x1C72)));


extern volatile __bit INLVLC3 __attribute__((address(0x1C73)));


extern volatile __bit INLVLC4 __attribute__((address(0x1C74)));


extern volatile __bit INLVLC5 __attribute__((address(0x1C75)));


extern volatile __bit INLVLC6 __attribute__((address(0x1C76)));


extern volatile __bit INLVLC7 __attribute__((address(0x1C77)));


extern volatile __bit INTE __attribute__((address(0x5C)));


extern volatile __bit INTEDG __attribute__((address(0x4AE)));


extern volatile __bit INTF __attribute__((address(0x59)));


extern volatile __bit INTM __attribute__((address(0x38E3)));


extern volatile __bit INTPPS0 __attribute__((address(0x7080)));


extern volatile __bit INTPPS1 __attribute__((address(0x7081)));


extern volatile __bit INTPPS2 __attribute__((address(0x7082)));


extern volatile __bit INTPPS3 __attribute__((address(0x7083)));


extern volatile __bit INTPPS4 __attribute__((address(0x7084)));


extern volatile __bit INVALID __attribute__((address(0x38E4)));


extern volatile __bit IOCAF0 __attribute__((address(0x1C98)));


extern volatile __bit IOCAF1 __attribute__((address(0x1C99)));


extern volatile __bit IOCAF2 __attribute__((address(0x1C9A)));


extern volatile __bit IOCAF3 __attribute__((address(0x1C9B)));


extern volatile __bit IOCAF4 __attribute__((address(0x1C9C)));


extern volatile __bit IOCAF5 __attribute__((address(0x1C9D)));


extern volatile __bit IOCAN0 __attribute__((address(0x1C90)));


extern volatile __bit IOCAN1 __attribute__((address(0x1C91)));


extern volatile __bit IOCAN2 __attribute__((address(0x1C92)));


extern volatile __bit IOCAN3 __attribute__((address(0x1C93)));


extern volatile __bit IOCAN4 __attribute__((address(0x1C94)));


extern volatile __bit IOCAN5 __attribute__((address(0x1C95)));


extern volatile __bit IOCAP0 __attribute__((address(0x1C88)));


extern volatile __bit IOCAP1 __attribute__((address(0x1C89)));


extern volatile __bit IOCAP2 __attribute__((address(0x1C8A)));


extern volatile __bit IOCAP3 __attribute__((address(0x1C8B)));


extern volatile __bit IOCAP4 __attribute__((address(0x1C8C)));


extern volatile __bit IOCAP5 __attribute__((address(0x1C8D)));


extern volatile __bit IOCBF4 __attribute__((address(0x1CB4)));


extern volatile __bit IOCBF5 __attribute__((address(0x1CB5)));


extern volatile __bit IOCBF6 __attribute__((address(0x1CB6)));


extern volatile __bit IOCBF7 __attribute__((address(0x1CB7)));


extern volatile __bit IOCBN4 __attribute__((address(0x1CAC)));


extern volatile __bit IOCBN5 __attribute__((address(0x1CAD)));


extern volatile __bit IOCBN6 __attribute__((address(0x1CAE)));


extern volatile __bit IOCBN7 __attribute__((address(0x1CAF)));


extern volatile __bit IOCBP4 __attribute__((address(0x1CA4)));


extern volatile __bit IOCBP5 __attribute__((address(0x1CA5)));


extern volatile __bit IOCBP6 __attribute__((address(0x1CA6)));


extern volatile __bit IOCBP7 __attribute__((address(0x1CA7)));


extern volatile __bit IOCCF0 __attribute__((address(0x1CC8)));


extern volatile __bit IOCCF1 __attribute__((address(0x1CC9)));


extern volatile __bit IOCCF2 __attribute__((address(0x1CCA)));


extern volatile __bit IOCCF3 __attribute__((address(0x1CCB)));


extern volatile __bit IOCCF4 __attribute__((address(0x1CCC)));


extern volatile __bit IOCCF5 __attribute__((address(0x1CCD)));


extern volatile __bit IOCCF6 __attribute__((address(0x1CCE)));


extern volatile __bit IOCCF7 __attribute__((address(0x1CCF)));


extern volatile __bit IOCCN0 __attribute__((address(0x1CC0)));


extern volatile __bit IOCCN1 __attribute__((address(0x1CC1)));


extern volatile __bit IOCCN2 __attribute__((address(0x1CC2)));


extern volatile __bit IOCCN3 __attribute__((address(0x1CC3)));


extern volatile __bit IOCCN4 __attribute__((address(0x1CC4)));


extern volatile __bit IOCCN5 __attribute__((address(0x1CC5)));


extern volatile __bit IOCCN6 __attribute__((address(0x1CC6)));


extern volatile __bit IOCCN7 __attribute__((address(0x1CC7)));


extern volatile __bit IOCCP0 __attribute__((address(0x1CB8)));


extern volatile __bit IOCCP1 __attribute__((address(0x1CB9)));


extern volatile __bit IOCCP2 __attribute__((address(0x1CBA)));


extern volatile __bit IOCCP3 __attribute__((address(0x1CBB)));


extern volatile __bit IOCCP4 __attribute__((address(0x1CBC)));


extern volatile __bit IOCCP5 __attribute__((address(0x1CBD)));


extern volatile __bit IOCCP6 __attribute__((address(0x1CBE)));


extern volatile __bit IOCCP7 __attribute__((address(0x1CBF)));


extern volatile __bit IOCIE __attribute__((address(0x5B)));


extern volatile __bit IOCIF __attribute__((address(0x58)));


extern volatile __bit IRCF0 __attribute__((address(0x4CB)));


extern volatile __bit IRCF1 __attribute__((address(0x4CC)));


extern volatile __bit IRCF2 __attribute__((address(0x4CD)));


extern volatile __bit IRCF3 __attribute__((address(0x4CE)));


extern volatile __bit IS0 __attribute__((address(0x34D0)));


extern volatile __bit IS1 __attribute__((address(0x34D1)));


extern volatile __bit IS2 __attribute__((address(0x34D2)));


extern volatile __bit IS3 __attribute__((address(0x34D3)));


extern volatile __bit K10 __attribute__((address(0x2C80)));


extern volatile __bit K11 __attribute__((address(0x2C81)));


extern volatile __bit K110 __attribute__((address(0x2C8A)));


extern volatile __bit K111 __attribute__((address(0x2C8B)));


extern volatile __bit K112 __attribute__((address(0x2C8C)));


extern volatile __bit K113 __attribute__((address(0x2C8D)));


extern volatile __bit K114 __attribute__((address(0x2C8E)));


extern volatile __bit K115 __attribute__((address(0x2C8F)));


extern volatile __bit K12 __attribute__((address(0x2C82)));


extern volatile __bit K13 __attribute__((address(0x2C83)));


extern volatile __bit K14 __attribute__((address(0x2C84)));


extern volatile __bit K15 __attribute__((address(0x2C85)));


extern volatile __bit K16 __attribute__((address(0x2C86)));


extern volatile __bit K17 __attribute__((address(0x2C87)));


extern volatile __bit K18 __attribute__((address(0x2C88)));


extern volatile __bit K19 __attribute__((address(0x2C89)));


extern volatile __bit K20 __attribute__((address(0x2C90)));


extern volatile __bit K21 __attribute__((address(0x2C91)));


extern volatile __bit K210 __attribute__((address(0x2C9A)));


extern volatile __bit K211 __attribute__((address(0x2C9B)));


extern volatile __bit K212 __attribute__((address(0x2C9C)));


extern volatile __bit K213 __attribute__((address(0x2C9D)));


extern volatile __bit K214 __attribute__((address(0x2C9E)));


extern volatile __bit K215 __attribute__((address(0x2C9F)));


extern volatile __bit K22 __attribute__((address(0x2C92)));


extern volatile __bit K23 __attribute__((address(0x2C93)));


extern volatile __bit K24 __attribute__((address(0x2C94)));


extern volatile __bit K25 __attribute__((address(0x2C95)));


extern volatile __bit K26 __attribute__((address(0x2C96)));


extern volatile __bit K27 __attribute__((address(0x2C97)));


extern volatile __bit K28 __attribute__((address(0x2C98)));


extern volatile __bit K29 __attribute__((address(0x2C99)));


extern volatile __bit K30 __attribute__((address(0x2CA0)));


extern volatile __bit K31 __attribute__((address(0x2CA1)));


extern volatile __bit K310 __attribute__((address(0x2CAA)));


extern volatile __bit K311 __attribute__((address(0x2CAB)));


extern volatile __bit K312 __attribute__((address(0x2CAC)));


extern volatile __bit K313 __attribute__((address(0x2CAD)));


extern volatile __bit K314 __attribute__((address(0x2CAE)));


extern volatile __bit K315 __attribute__((address(0x2CAF)));


extern volatile __bit K32 __attribute__((address(0x2CA2)));


extern volatile __bit K33 __attribute__((address(0x2CA3)));


extern volatile __bit K34 __attribute__((address(0x2CA4)));


extern volatile __bit K35 __attribute__((address(0x2CA5)));


extern volatile __bit K36 __attribute__((address(0x2CA6)));


extern volatile __bit K37 __attribute__((address(0x2CA7)));


extern volatile __bit K38 __attribute__((address(0x2CA8)));


extern volatile __bit K39 __attribute__((address(0x2CA9)));


extern volatile __bit LADR10 __attribute__((address(0x38CA)));


extern volatile __bit LADR11 __attribute__((address(0x38CB)));


extern volatile __bit LADR12 __attribute__((address(0x38CC)));


extern volatile __bit LADR13 __attribute__((address(0x38CD)));


extern volatile __bit LADR14 __attribute__((address(0x38CE)));


extern volatile __bit LADR15 __attribute__((address(0x38CF)));


extern volatile __bit LADR2 __attribute__((address(0x38C2)));


extern volatile __bit LADR3 __attribute__((address(0x38C3)));


extern volatile __bit LADR4 __attribute__((address(0x38C4)));


extern volatile __bit LADR5 __attribute__((address(0x38C5)));


extern volatile __bit LADR6 __attribute__((address(0x38C6)));


extern volatile __bit LADR7 __attribute__((address(0x38C7)));


extern volatile __bit LADR8 __attribute__((address(0x38C8)));


extern volatile __bit LADR9 __attribute__((address(0x38C9)));


extern volatile __bit LATA0 __attribute__((address(0x860)));


extern volatile __bit LATA1 __attribute__((address(0x861)));


extern volatile __bit LATA2 __attribute__((address(0x862)));


extern volatile __bit LATA3 __attribute__((address(0x863)));


extern volatile __bit LATA4 __attribute__((address(0x864)));


extern volatile __bit LATA5 __attribute__((address(0x865)));


extern volatile __bit LATB4 __attribute__((address(0x86C)));


extern volatile __bit LATB5 __attribute__((address(0x86D)));


extern volatile __bit LATB6 __attribute__((address(0x86E)));


extern volatile __bit LATB7 __attribute__((address(0x86F)));


extern volatile __bit LATC0 __attribute__((address(0x870)));


extern volatile __bit LATC1 __attribute__((address(0x871)));


extern volatile __bit LATC2 __attribute__((address(0x872)));


extern volatile __bit LATC3 __attribute__((address(0x873)));


extern volatile __bit LATC4 __attribute__((address(0x874)));


extern volatile __bit LATC5 __attribute__((address(0x875)));


extern volatile __bit LATC6 __attribute__((address(0x876)));


extern volatile __bit LATC7 __attribute__((address(0x877)));


extern volatile __bit LC1D1S0 __attribute__((address(0x7890)));


extern volatile __bit LC1D1S1 __attribute__((address(0x7891)));


extern volatile __bit LC1D1S2 __attribute__((address(0x7892)));


extern volatile __bit LC1D1S3 __attribute__((address(0x7893)));


extern volatile __bit LC1D1S4 __attribute__((address(0x7894)));


extern volatile __bit LC1D1S5 __attribute__((address(0x7895)));


extern volatile __bit LC1D2S0 __attribute__((address(0x7898)));


extern volatile __bit LC1D2S1 __attribute__((address(0x7899)));


extern volatile __bit LC1D2S2 __attribute__((address(0x789A)));


extern volatile __bit LC1D2S3 __attribute__((address(0x789B)));


extern volatile __bit LC1D2S4 __attribute__((address(0x789C)));


extern volatile __bit LC1D2S5 __attribute__((address(0x789D)));


extern volatile __bit LC1D3S0 __attribute__((address(0x78A0)));


extern volatile __bit LC1D3S1 __attribute__((address(0x78A1)));


extern volatile __bit LC1D3S2 __attribute__((address(0x78A2)));


extern volatile __bit LC1D3S3 __attribute__((address(0x78A3)));


extern volatile __bit LC1D3S4 __attribute__((address(0x78A4)));


extern volatile __bit LC1D3S5 __attribute__((address(0x78A5)));


extern volatile __bit LC1D4S0 __attribute__((address(0x78A8)));


extern volatile __bit LC1D4S1 __attribute__((address(0x78A9)));


extern volatile __bit LC1D4S2 __attribute__((address(0x78AA)));


extern volatile __bit LC1D4S3 __attribute__((address(0x78AB)));


extern volatile __bit LC1D4S4 __attribute__((address(0x78AC)));


extern volatile __bit LC1D4S5 __attribute__((address(0x78AD)));


extern volatile __bit LC1EN __attribute__((address(0x7887)));


extern volatile __bit LC1G1D1N __attribute__((address(0x78B0)));


extern volatile __bit LC1G1D1T __attribute__((address(0x78B1)));


extern volatile __bit LC1G1D2N __attribute__((address(0x78B2)));


extern volatile __bit LC1G1D2T __attribute__((address(0x78B3)));


extern volatile __bit LC1G1D3N __attribute__((address(0x78B4)));


extern volatile __bit LC1G1D3T __attribute__((address(0x78B5)));


extern volatile __bit LC1G1D4N __attribute__((address(0x78B6)));


extern volatile __bit LC1G1D4T __attribute__((address(0x78B7)));


extern volatile __bit LC1G1POL __attribute__((address(0x7888)));


extern volatile __bit LC1G2D1N __attribute__((address(0x78B8)));


extern volatile __bit LC1G2D1T __attribute__((address(0x78B9)));


extern volatile __bit LC1G2D2N __attribute__((address(0x78BA)));


extern volatile __bit LC1G2D2T __attribute__((address(0x78BB)));


extern volatile __bit LC1G2D3N __attribute__((address(0x78BC)));


extern volatile __bit LC1G2D3T __attribute__((address(0x78BD)));


extern volatile __bit LC1G2D4N __attribute__((address(0x78BE)));


extern volatile __bit LC1G2D4T __attribute__((address(0x78BF)));


extern volatile __bit LC1G2POL __attribute__((address(0x7889)));


extern volatile __bit LC1G3D1N __attribute__((address(0x78C0)));


extern volatile __bit LC1G3D1T __attribute__((address(0x78C1)));


extern volatile __bit LC1G3D2N __attribute__((address(0x78C2)));


extern volatile __bit LC1G3D2T __attribute__((address(0x78C3)));


extern volatile __bit LC1G3D3N __attribute__((address(0x78C4)));


extern volatile __bit LC1G3D3T __attribute__((address(0x78C5)));


extern volatile __bit LC1G3D4N __attribute__((address(0x78C6)));


extern volatile __bit LC1G3D4T __attribute__((address(0x78C7)));


extern volatile __bit LC1G3POL __attribute__((address(0x788A)));


extern volatile __bit LC1G4D1N __attribute__((address(0x78C8)));


extern volatile __bit LC1G4D1T __attribute__((address(0x78C9)));


extern volatile __bit LC1G4D2N __attribute__((address(0x78CA)));


extern volatile __bit LC1G4D2T __attribute__((address(0x78CB)));


extern volatile __bit LC1G4D3N __attribute__((address(0x78CC)));


extern volatile __bit LC1G4D3T __attribute__((address(0x78CD)));


extern volatile __bit LC1G4D4N __attribute__((address(0x78CE)));


extern volatile __bit LC1G4D4T __attribute__((address(0x78CF)));


extern volatile __bit LC1G4POL __attribute__((address(0x788B)));


extern volatile __bit LC1INTN __attribute__((address(0x7883)));


extern volatile __bit LC1INTP __attribute__((address(0x7884)));


extern volatile __bit LC1MODE0 __attribute__((address(0x7880)));


extern volatile __bit LC1MODE1 __attribute__((address(0x7881)));


extern volatile __bit LC1MODE2 __attribute__((address(0x7882)));


extern volatile __bit LC1OUT __attribute__((address(0x7885)));


extern volatile __bit LC1POL __attribute__((address(0x788F)));


extern volatile __bit LC2D1S0 __attribute__((address(0x78E0)));


extern volatile __bit LC2D1S1 __attribute__((address(0x78E1)));


extern volatile __bit LC2D1S2 __attribute__((address(0x78E2)));


extern volatile __bit LC2D1S3 __attribute__((address(0x78E3)));


extern volatile __bit LC2D1S4 __attribute__((address(0x78E4)));


extern volatile __bit LC2D1S5 __attribute__((address(0x78E5)));


extern volatile __bit LC2D2S0 __attribute__((address(0x78E8)));


extern volatile __bit LC2D2S1 __attribute__((address(0x78E9)));


extern volatile __bit LC2D2S2 __attribute__((address(0x78EA)));


extern volatile __bit LC2D2S3 __attribute__((address(0x78EB)));


extern volatile __bit LC2D2S4 __attribute__((address(0x78EC)));


extern volatile __bit LC2D2S5 __attribute__((address(0x78ED)));


extern volatile __bit LC2D3S0 __attribute__((address(0x78F0)));


extern volatile __bit LC2D3S1 __attribute__((address(0x78F1)));


extern volatile __bit LC2D3S2 __attribute__((address(0x78F2)));


extern volatile __bit LC2D3S3 __attribute__((address(0x78F3)));


extern volatile __bit LC2D3S4 __attribute__((address(0x78F4)));


extern volatile __bit LC2D3S5 __attribute__((address(0x78F5)));


extern volatile __bit LC2D4S0 __attribute__((address(0x78F8)));


extern volatile __bit LC2D4S1 __attribute__((address(0x78F9)));


extern volatile __bit LC2D4S2 __attribute__((address(0x78FA)));


extern volatile __bit LC2D4S3 __attribute__((address(0x78FB)));


extern volatile __bit LC2D4S4 __attribute__((address(0x78FC)));


extern volatile __bit LC2D4S5 __attribute__((address(0x78FD)));


extern volatile __bit LC2EN __attribute__((address(0x78D7)));


extern volatile __bit LC2G1D1N __attribute__((address(0x7900)));


extern volatile __bit LC2G1D1T __attribute__((address(0x7901)));


extern volatile __bit LC2G1D2N __attribute__((address(0x7902)));


extern volatile __bit LC2G1D2T __attribute__((address(0x7903)));


extern volatile __bit LC2G1D3N __attribute__((address(0x7904)));


extern volatile __bit LC2G1D3T __attribute__((address(0x7905)));


extern volatile __bit LC2G1D4N __attribute__((address(0x7906)));


extern volatile __bit LC2G1D4T __attribute__((address(0x7907)));


extern volatile __bit LC2G1POL __attribute__((address(0x78D8)));


extern volatile __bit LC2G2D1N __attribute__((address(0x7908)));


extern volatile __bit LC2G2D1T __attribute__((address(0x7909)));


extern volatile __bit LC2G2D2N __attribute__((address(0x790A)));


extern volatile __bit LC2G2D2T __attribute__((address(0x790B)));


extern volatile __bit LC2G2D3N __attribute__((address(0x790C)));


extern volatile __bit LC2G2D3T __attribute__((address(0x790D)));


extern volatile __bit LC2G2D4N __attribute__((address(0x790E)));


extern volatile __bit LC2G2D4T __attribute__((address(0x790F)));


extern volatile __bit LC2G2POL __attribute__((address(0x78D9)));


extern volatile __bit LC2G3D1N __attribute__((address(0x7910)));


extern volatile __bit LC2G3D1T __attribute__((address(0x7911)));


extern volatile __bit LC2G3D2N __attribute__((address(0x7912)));


extern volatile __bit LC2G3D2T __attribute__((address(0x7913)));


extern volatile __bit LC2G3D3N __attribute__((address(0x7914)));


extern volatile __bit LC2G3D3T __attribute__((address(0x7915)));


extern volatile __bit LC2G3D4N __attribute__((address(0x7916)));


extern volatile __bit LC2G3D4T __attribute__((address(0x7917)));


extern volatile __bit LC2G3POL __attribute__((address(0x78DA)));


extern volatile __bit LC2G4D1N __attribute__((address(0x7918)));


extern volatile __bit LC2G4D1T __attribute__((address(0x7919)));


extern volatile __bit LC2G4D2N __attribute__((address(0x791A)));


extern volatile __bit LC2G4D2T __attribute__((address(0x791B)));


extern volatile __bit LC2G4D3N __attribute__((address(0x791C)));


extern volatile __bit LC2G4D3T __attribute__((address(0x791D)));


extern volatile __bit LC2G4D4N __attribute__((address(0x791E)));


extern volatile __bit LC2G4D4T __attribute__((address(0x791F)));


extern volatile __bit LC2G4POL __attribute__((address(0x78DB)));


extern volatile __bit LC2INTN __attribute__((address(0x78D3)));


extern volatile __bit LC2INTP __attribute__((address(0x78D4)));


extern volatile __bit LC2MODE0 __attribute__((address(0x78D0)));


extern volatile __bit LC2MODE1 __attribute__((address(0x78D1)));


extern volatile __bit LC2MODE2 __attribute__((address(0x78D2)));


extern volatile __bit LC2OUT __attribute__((address(0x78D5)));


extern volatile __bit LC2POL __attribute__((address(0x78DF)));


extern volatile __bit LC3D1S0 __attribute__((address(0x7930)));


extern volatile __bit LC3D1S1 __attribute__((address(0x7931)));


extern volatile __bit LC3D1S2 __attribute__((address(0x7932)));


extern volatile __bit LC3D1S3 __attribute__((address(0x7933)));


extern volatile __bit LC3D1S4 __attribute__((address(0x7934)));


extern volatile __bit LC3D1S5 __attribute__((address(0x7935)));


extern volatile __bit LC3D2S0 __attribute__((address(0x7938)));


extern volatile __bit LC3D2S1 __attribute__((address(0x7939)));


extern volatile __bit LC3D2S2 __attribute__((address(0x793A)));


extern volatile __bit LC3D2S3 __attribute__((address(0x793B)));


extern volatile __bit LC3D2S4 __attribute__((address(0x793C)));


extern volatile __bit LC3D2S5 __attribute__((address(0x793D)));


extern volatile __bit LC3D3S0 __attribute__((address(0x7940)));


extern volatile __bit LC3D3S1 __attribute__((address(0x7941)));


extern volatile __bit LC3D3S2 __attribute__((address(0x7942)));


extern volatile __bit LC3D3S3 __attribute__((address(0x7943)));


extern volatile __bit LC3D3S4 __attribute__((address(0x7944)));


extern volatile __bit LC3D3S5 __attribute__((address(0x7945)));


extern volatile __bit LC3D4S0 __attribute__((address(0x7948)));


extern volatile __bit LC3D4S1 __attribute__((address(0x7949)));


extern volatile __bit LC3D4S2 __attribute__((address(0x794A)));


extern volatile __bit LC3D4S3 __attribute__((address(0x794B)));


extern volatile __bit LC3D4S4 __attribute__((address(0x794C)));


extern volatile __bit LC3D4S5 __attribute__((address(0x794D)));


extern volatile __bit LC3EN __attribute__((address(0x7927)));


extern volatile __bit LC3G1D1N __attribute__((address(0x7950)));


extern volatile __bit LC3G1D1T __attribute__((address(0x7951)));


extern volatile __bit LC3G1D2N __attribute__((address(0x7952)));


extern volatile __bit LC3G1D2T __attribute__((address(0x7953)));


extern volatile __bit LC3G1D3N __attribute__((address(0x7954)));


extern volatile __bit LC3G1D3T __attribute__((address(0x7955)));


extern volatile __bit LC3G1D4N __attribute__((address(0x7956)));


extern volatile __bit LC3G1D4T __attribute__((address(0x7957)));


extern volatile __bit LC3G1POL __attribute__((address(0x7928)));


extern volatile __bit LC3G2D1N __attribute__((address(0x7958)));


extern volatile __bit LC3G2D1T __attribute__((address(0x7959)));


extern volatile __bit LC3G2D2N __attribute__((address(0x795A)));


extern volatile __bit LC3G2D2T __attribute__((address(0x795B)));


extern volatile __bit LC3G2D3N __attribute__((address(0x795C)));


extern volatile __bit LC3G2D3T __attribute__((address(0x795D)));


extern volatile __bit LC3G2D4N __attribute__((address(0x795E)));


extern volatile __bit LC3G2D4T __attribute__((address(0x795F)));


extern volatile __bit LC3G2POL __attribute__((address(0x7929)));


extern volatile __bit LC3G3D1N __attribute__((address(0x7960)));


extern volatile __bit LC3G3D1T __attribute__((address(0x7961)));


extern volatile __bit LC3G3D2N __attribute__((address(0x7962)));


extern volatile __bit LC3G3D2T __attribute__((address(0x7963)));


extern volatile __bit LC3G3D3N __attribute__((address(0x7964)));


extern volatile __bit LC3G3D3T __attribute__((address(0x7965)));


extern volatile __bit LC3G3D4N __attribute__((address(0x7966)));


extern volatile __bit LC3G3D4T __attribute__((address(0x7967)));


extern volatile __bit LC3G3POL __attribute__((address(0x792A)));


extern volatile __bit LC3G4D1N __attribute__((address(0x7968)));


extern volatile __bit LC3G4D1T __attribute__((address(0x7969)));


extern volatile __bit LC3G4D2N __attribute__((address(0x796A)));


extern volatile __bit LC3G4D2T __attribute__((address(0x796B)));


extern volatile __bit LC3G4D3N __attribute__((address(0x796C)));


extern volatile __bit LC3G4D3T __attribute__((address(0x796D)));


extern volatile __bit LC3G4D4N __attribute__((address(0x796E)));


extern volatile __bit LC3G4D4T __attribute__((address(0x796F)));


extern volatile __bit LC3G4POL __attribute__((address(0x792B)));


extern volatile __bit LC3INTN __attribute__((address(0x7923)));


extern volatile __bit LC3INTP __attribute__((address(0x7924)));


extern volatile __bit LC3MODE0 __attribute__((address(0x7920)));


extern volatile __bit LC3MODE1 __attribute__((address(0x7921)));


extern volatile __bit LC3MODE2 __attribute__((address(0x7922)));


extern volatile __bit LC3OUT __attribute__((address(0x7925)));


extern volatile __bit LC3POL __attribute__((address(0x792F)));


extern volatile __bit LC4D1S0 __attribute__((address(0x7980)));


extern volatile __bit LC4D1S1 __attribute__((address(0x7981)));


extern volatile __bit LC4D1S2 __attribute__((address(0x7982)));


extern volatile __bit LC4D1S3 __attribute__((address(0x7983)));


extern volatile __bit LC4D1S4 __attribute__((address(0x7984)));


extern volatile __bit LC4D1S5 __attribute__((address(0x7985)));


extern volatile __bit LC4D2S0 __attribute__((address(0x7988)));


extern volatile __bit LC4D2S1 __attribute__((address(0x7989)));


extern volatile __bit LC4D2S2 __attribute__((address(0x798A)));


extern volatile __bit LC4D2S3 __attribute__((address(0x798B)));


extern volatile __bit LC4D2S4 __attribute__((address(0x798C)));


extern volatile __bit LC4D2S5 __attribute__((address(0x798D)));


extern volatile __bit LC4D3S0 __attribute__((address(0x7990)));


extern volatile __bit LC4D3S1 __attribute__((address(0x7991)));


extern volatile __bit LC4D3S2 __attribute__((address(0x7992)));


extern volatile __bit LC4D3S3 __attribute__((address(0x7993)));


extern volatile __bit LC4D3S4 __attribute__((address(0x7994)));


extern volatile __bit LC4D3S5 __attribute__((address(0x7995)));


extern volatile __bit LC4D4S0 __attribute__((address(0x7998)));


extern volatile __bit LC4D4S1 __attribute__((address(0x7999)));


extern volatile __bit LC4D4S2 __attribute__((address(0x799A)));


extern volatile __bit LC4D4S3 __attribute__((address(0x799B)));


extern volatile __bit LC4D4S4 __attribute__((address(0x799C)));


extern volatile __bit LC4D4S5 __attribute__((address(0x799D)));


extern volatile __bit LC4EN __attribute__((address(0x7977)));


extern volatile __bit LC4G1D1N __attribute__((address(0x79A0)));


extern volatile __bit LC4G1D1T __attribute__((address(0x79A1)));


extern volatile __bit LC4G1D2N __attribute__((address(0x79A2)));


extern volatile __bit LC4G1D2T __attribute__((address(0x79A3)));


extern volatile __bit LC4G1D3N __attribute__((address(0x79A4)));


extern volatile __bit LC4G1D3T __attribute__((address(0x79A5)));


extern volatile __bit LC4G1D4N __attribute__((address(0x79A6)));


extern volatile __bit LC4G1D4T __attribute__((address(0x79A7)));


extern volatile __bit LC4G1POL __attribute__((address(0x7978)));


extern volatile __bit LC4G2D1N __attribute__((address(0x79A8)));


extern volatile __bit LC4G2D1T __attribute__((address(0x79A9)));


extern volatile __bit LC4G2D2N __attribute__((address(0x79AA)));


extern volatile __bit LC4G2D2T __attribute__((address(0x79AB)));


extern volatile __bit LC4G2D3N __attribute__((address(0x79AC)));


extern volatile __bit LC4G2D3T __attribute__((address(0x79AD)));


extern volatile __bit LC4G2D4N __attribute__((address(0x79AE)));


extern volatile __bit LC4G2D4T __attribute__((address(0x79AF)));


extern volatile __bit LC4G2POL __attribute__((address(0x7979)));


extern volatile __bit LC4G3D1N __attribute__((address(0x79B0)));


extern volatile __bit LC4G3D1T __attribute__((address(0x79B1)));


extern volatile __bit LC4G3D2N __attribute__((address(0x79B2)));


extern volatile __bit LC4G3D2T __attribute__((address(0x79B3)));


extern volatile __bit LC4G3D3N __attribute__((address(0x79B4)));


extern volatile __bit LC4G3D3T __attribute__((address(0x79B5)));


extern volatile __bit LC4G3D4N __attribute__((address(0x79B6)));


extern volatile __bit LC4G3D4T __attribute__((address(0x79B7)));


extern volatile __bit LC4G3POL __attribute__((address(0x797A)));


extern volatile __bit LC4G4D1N __attribute__((address(0x79B8)));


extern volatile __bit LC4G4D1T __attribute__((address(0x79B9)));


extern volatile __bit LC4G4D2N __attribute__((address(0x79BA)));


extern volatile __bit LC4G4D2T __attribute__((address(0x79BB)));


extern volatile __bit LC4G4D3N __attribute__((address(0x79BC)));


extern volatile __bit LC4G4D3T __attribute__((address(0x79BD)));


extern volatile __bit LC4G4D4N __attribute__((address(0x79BE)));


extern volatile __bit LC4G4D4T __attribute__((address(0x79BF)));


extern volatile __bit LC4G4POL __attribute__((address(0x797B)));


extern volatile __bit LC4INTN __attribute__((address(0x7973)));


extern volatile __bit LC4INTP __attribute__((address(0x7974)));


extern volatile __bit LC4MODE0 __attribute__((address(0x7970)));


extern volatile __bit LC4MODE1 __attribute__((address(0x7971)));


extern volatile __bit LC4MODE2 __attribute__((address(0x7972)));


extern volatile __bit LC4OUT __attribute__((address(0x7975)));


extern volatile __bit LC4POL __attribute__((address(0x797F)));


extern volatile __bit LD __attribute__((address(0x34B6)));


extern volatile __bit LDAR0 __attribute__((address(0x38C0)));


extern volatile __bit LDAR1 __attribute__((address(0x38C1)));


extern volatile __bit LFIOFR __attribute__((address(0x4D1)));


extern volatile __bit LSAC0 __attribute__((address(0x349A)));


extern volatile __bit LSAC1 __attribute__((address(0x349B)));


extern volatile __bit LSBD0 __attribute__((address(0x349C)));


extern volatile __bit LSBD1 __attribute__((address(0x349D)));


extern volatile __bit LWLO __attribute__((address(0xCAD)));


extern volatile __bit MC1OUT __attribute__((address(0x8A8)));


extern volatile __bit MC2OUT __attribute__((address(0x8A9)));


extern volatile __bit MFIOFR __attribute__((address(0x4D2)));


extern volatile __bit MISS0 __attribute__((address(0x4070)));


extern volatile __bit MISS1 __attribute__((address(0x4071)));


extern volatile __bit MISS10 __attribute__((address(0x407A)));


extern volatile __bit MISS11 __attribute__((address(0x407B)));


extern volatile __bit MISS12 __attribute__((address(0x407C)));


extern volatile __bit MISS13 __attribute__((address(0x407D)));


extern volatile __bit MISS14 __attribute__((address(0x407E)));


extern volatile __bit MISS15 __attribute__((address(0x407F)));


extern volatile __bit MISS2 __attribute__((address(0x4072)));


extern volatile __bit MISS3 __attribute__((address(0x4073)));


extern volatile __bit MISS4 __attribute__((address(0x4074)));


extern volatile __bit MISS5 __attribute__((address(0x4075)));


extern volatile __bit MISS6 __attribute__((address(0x4076)));


extern volatile __bit MISS7 __attribute__((address(0x4077)));


extern volatile __bit MISS8 __attribute__((address(0x4078)));


extern volatile __bit MISS9 __attribute__((address(0x4079)));


extern volatile __bit MLC1OUT __attribute__((address(0x7878)));


extern volatile __bit MLC2OUT __attribute__((address(0x7879)));


extern volatile __bit MLC3OUT __attribute__((address(0x787A)));


extern volatile __bit MLC4OUT __attribute__((address(0x787B)));


extern volatile __bit MODE __attribute__((address(0x40A0)));


extern volatile __bit MPP __attribute__((address(0x40AA)));


extern volatile __bit MSK0 __attribute__((address(0x1098)));


extern volatile __bit MSK1 __attribute__((address(0x1099)));


extern volatile __bit MSK2 __attribute__((address(0x109A)));


extern volatile __bit MSK3 __attribute__((address(0x109B)));


extern volatile __bit MSK4 __attribute__((address(0x109C)));


extern volatile __bit MSK5 __attribute__((address(0x109D)));


extern volatile __bit MSK6 __attribute__((address(0x109E)));


extern volatile __bit MSK7 __attribute__((address(0x109F)));


extern volatile __bit ODA0 __attribute__((address(0x1460)));


extern volatile __bit ODA1 __attribute__((address(0x1461)));


extern volatile __bit ODA2 __attribute__((address(0x1462)));


extern volatile __bit ODA4 __attribute__((address(0x1464)));


extern volatile __bit ODA5 __attribute__((address(0x1465)));


extern volatile __bit ODB4 __attribute__((address(0x146C)));


extern volatile __bit ODB5 __attribute__((address(0x146D)));


extern volatile __bit ODB6 __attribute__((address(0x146E)));


extern volatile __bit ODB7 __attribute__((address(0x146F)));


extern volatile __bit ODC0 __attribute__((address(0x1470)));


extern volatile __bit ODC1 __attribute__((address(0x1471)));


extern volatile __bit ODC2 __attribute__((address(0x1472)));


extern volatile __bit ODC3 __attribute__((address(0x1473)));


extern volatile __bit ODC4 __attribute__((address(0x1474)));


extern volatile __bit ODC5 __attribute__((address(0x1475)));


extern volatile __bit ODC6 __attribute__((address(0x1476)));


extern volatile __bit ODC7 __attribute__((address(0x1477)));


extern volatile __bit OERR __attribute__((address(0xCE9)));


extern volatile __bit OSCFIE __attribute__((address(0x48F)));


extern volatile __bit OSFIF __attribute__((address(0x8F)));


extern volatile __bit OSTS __attribute__((address(0x4D5)));


extern volatile __bit OUT0 __attribute__((address(0x2CB0)));


extern volatile __bit OUT1 __attribute__((address(0x2CB1)));


extern volatile __bit OUT10 __attribute__((address(0x2CBA)));


extern volatile __bit OUT11 __attribute__((address(0x2CBB)));


extern volatile __bit OUT12 __attribute__((address(0x2CBC)));


extern volatile __bit OUT13 __attribute__((address(0x2CBD)));


extern volatile __bit OUT14 __attribute__((address(0x2CBE)));


extern volatile __bit OUT15 __attribute__((address(0x2CBF)));


extern volatile __bit OUT16 __attribute__((address(0x2CC0)));


extern volatile __bit OUT17 __attribute__((address(0x2CC1)));


extern volatile __bit OUT18 __attribute__((address(0x2CC2)));


extern volatile __bit OUT19 __attribute__((address(0x2CC3)));


extern volatile __bit OUT2 __attribute__((address(0x2CB2)));


extern volatile __bit OUT20 __attribute__((address(0x2CC4)));


extern volatile __bit OUT21 __attribute__((address(0x2CC5)));


extern volatile __bit OUT22 __attribute__((address(0x2CC6)));


extern volatile __bit OUT23 __attribute__((address(0x2CC7)));


extern volatile __bit OUT24 __attribute__((address(0x2CC8)));


extern volatile __bit OUT25 __attribute__((address(0x2CC9)));


extern volatile __bit OUT26 __attribute__((address(0x2CCA)));


extern volatile __bit OUT27 __attribute__((address(0x2CCB)));


extern volatile __bit OUT28 __attribute__((address(0x2CCC)));


extern volatile __bit OUT29 __attribute__((address(0x2CCD)));


extern volatile __bit OUT3 __attribute__((address(0x2CB3)));


extern volatile __bit OUT30 __attribute__((address(0x2CCE)));


extern volatile __bit OUT31 __attribute__((address(0x2CCF)));


extern volatile __bit OUT32 __attribute__((address(0x2CD0)));


extern volatile __bit OUT33 __attribute__((address(0x2CD1)));


extern volatile __bit OUT34 __attribute__((address(0x2CD2)));


extern volatile __bit OUT35 __attribute__((address(0x2CD3)));


extern volatile __bit OUT4 __attribute__((address(0x2CB4)));


extern volatile __bit OUT5 __attribute__((address(0x2CB5)));


extern volatile __bit OUT6 __attribute__((address(0x2CB6)));


extern volatile __bit OUT7 __attribute__((address(0x2CB7)));


extern volatile __bit OUT8 __attribute__((address(0x2CB8)));


extern volatile __bit OUT9 __attribute__((address(0x2CB9)));


extern volatile __bit OVRA __attribute__((address(0x34AC)));


extern volatile __bit OVRB __attribute__((address(0x34AD)));


extern volatile __bit OVRC __attribute__((address(0x34AE)));


extern volatile __bit OVRD __attribute__((address(0x34AF)));


extern volatile __bit P3TSEL0 __attribute__((address(0x14F4)));


extern volatile __bit P3TSEL1 __attribute__((address(0x14F5)));


extern volatile __bit P4TSEL0 __attribute__((address(0x14F6)));


extern volatile __bit P4TSEL1 __attribute__((address(0x14F7)));


extern volatile __bit PCIE __attribute__((address(0x10BE)));


extern volatile __bit PEIE __attribute__((address(0x5E)));


extern volatile __bit PEN __attribute__((address(0x10B2)));


extern volatile __bit PER0 __attribute__((address(0x4080)));


extern volatile __bit PER1 __attribute__((address(0x4081)));


extern volatile __bit PER10 __attribute__((address(0x408A)));


extern volatile __bit PER11 __attribute__((address(0x408B)));


extern volatile __bit PER12 __attribute__((address(0x408C)));


extern volatile __bit PER13 __attribute__((address(0x408D)));


extern volatile __bit PER14 __attribute__((address(0x408E)));


extern volatile __bit PER15 __attribute__((address(0x408F)));


extern volatile __bit PER2 __attribute__((address(0x4082)));


extern volatile __bit PER3 __attribute__((address(0x4083)));


extern volatile __bit PER4 __attribute__((address(0x4084)));


extern volatile __bit PER5 __attribute__((address(0x4085)));


extern volatile __bit PER6 __attribute__((address(0x4086)));


extern volatile __bit PER7 __attribute__((address(0x4087)));


extern volatile __bit PER8 __attribute__((address(0x4088)));


extern volatile __bit PER9 __attribute__((address(0x4089)));


extern volatile __bit PERH0 __attribute__((address(0x4088)));


extern volatile __bit PERH1 __attribute__((address(0x4089)));


extern volatile __bit PERH2 __attribute__((address(0x408A)));


extern volatile __bit PERH3 __attribute__((address(0x408B)));


extern volatile __bit PERH4 __attribute__((address(0x408C)));


extern volatile __bit PERH5 __attribute__((address(0x408D)));


extern volatile __bit PERH6 __attribute__((address(0x408E)));


extern volatile __bit PERH7 __attribute__((address(0x408F)));


extern volatile __bit PERL0 __attribute__((address(0x4080)));


extern volatile __bit PERL1 __attribute__((address(0x4081)));


extern volatile __bit PERL2 __attribute__((address(0x4082)));


extern volatile __bit PERL3 __attribute__((address(0x4083)));


extern volatile __bit PERL4 __attribute__((address(0x4084)));


extern volatile __bit PERL5 __attribute__((address(0x4085)));


extern volatile __bit PERL6 __attribute__((address(0x4086)));


extern volatile __bit PERL7 __attribute__((address(0x4087)));


extern volatile __bit PHP __attribute__((address(0x40AE)));


extern volatile __bit PHS0 __attribute__((address(0x4090)));


extern volatile __bit PHS1 __attribute__((address(0x4091)));


extern volatile __bit PHS2 __attribute__((address(0x4092)));


extern volatile __bit PHS3 __attribute__((address(0x4093)));


extern volatile __bit PHS4 __attribute__((address(0x4094)));


extern volatile __bit PHS5 __attribute__((address(0x4095)));


extern volatile __bit PHS6 __attribute__((address(0x4096)));


extern volatile __bit PHS7 __attribute__((address(0x4097)));


extern volatile __bit PHS8 __attribute__((address(0x4098)));


extern volatile __bit PHS9 __attribute__((address(0x4099)));


extern volatile __bit PHSL8 __attribute__((address(0x4098)));


extern volatile __bit PHSL9 __attribute__((address(0x4099)));


extern volatile __bit PID1ACC0 __attribute__((address(0x3078)));


extern volatile __bit PID1ACC1 __attribute__((address(0x3079)));


extern volatile __bit PID1ACC10 __attribute__((address(0x3082)));


extern volatile __bit PID1ACC11 __attribute__((address(0x3083)));


extern volatile __bit PID1ACC12 __attribute__((address(0x3084)));


extern volatile __bit PID1ACC13 __attribute__((address(0x3085)));


extern volatile __bit PID1ACC14 __attribute__((address(0x3086)));


extern volatile __bit PID1ACC15 __attribute__((address(0x3087)));


extern volatile __bit PID1ACC16 __attribute__((address(0x3088)));


extern volatile __bit PID1ACC17 __attribute__((address(0x3089)));


extern volatile __bit PID1ACC18 __attribute__((address(0x308A)));


extern volatile __bit PID1ACC19 __attribute__((address(0x308B)));


extern volatile __bit PID1ACC2 __attribute__((address(0x307A)));


extern volatile __bit PID1ACC20 __attribute__((address(0x308C)));


extern volatile __bit PID1ACC21 __attribute__((address(0x308D)));


extern volatile __bit PID1ACC22 __attribute__((address(0x308E)));


extern volatile __bit PID1ACC23 __attribute__((address(0x308F)));


extern volatile __bit PID1ACC24 __attribute__((address(0x3090)));


extern volatile __bit PID1ACC25 __attribute__((address(0x3091)));


extern volatile __bit PID1ACC26 __attribute__((address(0x3092)));


extern volatile __bit PID1ACC27 __attribute__((address(0x3093)));


extern volatile __bit PID1ACC28 __attribute__((address(0x3094)));


extern volatile __bit PID1ACC29 __attribute__((address(0x3095)));


extern volatile __bit PID1ACC3 __attribute__((address(0x307B)));


extern volatile __bit PID1ACC30 __attribute__((address(0x3096)));


extern volatile __bit PID1ACC31 __attribute__((address(0x3097)));


extern volatile __bit PID1ACC32 __attribute__((address(0x3098)));


extern volatile __bit PID1ACC33 __attribute__((address(0x3099)));


extern volatile __bit PID1ACC34 __attribute__((address(0x309A)));


extern volatile __bit PID1ACC4 __attribute__((address(0x307C)));


extern volatile __bit PID1ACC5 __attribute__((address(0x307D)));


extern volatile __bit PID1ACC6 __attribute__((address(0x307E)));


extern volatile __bit PID1ACC7 __attribute__((address(0x307F)));


extern volatile __bit PID1ACC8 __attribute__((address(0x3080)));


extern volatile __bit PID1ACC9 __attribute__((address(0x3081)));


extern volatile __bit PID1BUSY __attribute__((address(0x30A6)));


extern volatile __bit PID1DIE __attribute__((address(0x4A0)));


extern volatile __bit PID1DIF __attribute__((address(0xA0)));


extern volatile __bit PID1EIE __attribute__((address(0x4A1)));


extern volatile __bit PID1EIF __attribute__((address(0xA1)));


extern volatile __bit PID1EN __attribute__((address(0x30A7)));


extern volatile __bit PID1IN0 __attribute__((address(0x2C70)));


extern volatile __bit PID1IN1 __attribute__((address(0x2C71)));


extern volatile __bit PID1IN10 __attribute__((address(0x2C7A)));


extern volatile __bit PID1IN11 __attribute__((address(0x2C7B)));


extern volatile __bit PID1IN12 __attribute__((address(0x2C7C)));


extern volatile __bit PID1IN13 __attribute__((address(0x2C7D)));


extern volatile __bit PID1IN14 __attribute__((address(0x2C7E)));


extern volatile __bit PID1IN15 __attribute__((address(0x2C7F)));


extern volatile __bit PID1IN2 __attribute__((address(0x2C72)));


extern volatile __bit PID1IN3 __attribute__((address(0x2C73)));


extern volatile __bit PID1IN4 __attribute__((address(0x2C74)));


extern volatile __bit PID1IN5 __attribute__((address(0x2C75)));


extern volatile __bit PID1IN6 __attribute__((address(0x2C76)));


extern volatile __bit PID1IN7 __attribute__((address(0x2C77)));


extern volatile __bit PID1IN8 __attribute__((address(0x2C78)));


extern volatile __bit PID1IN9 __attribute__((address(0x2C79)));


extern volatile __bit PID1K10 __attribute__((address(0x2C80)));


extern volatile __bit PID1K11 __attribute__((address(0x2C81)));


extern volatile __bit PID1K110 __attribute__((address(0x2C8A)));


extern volatile __bit PID1K111 __attribute__((address(0x2C8B)));


extern volatile __bit PID1K112 __attribute__((address(0x2C8C)));


extern volatile __bit PID1K113 __attribute__((address(0x2C8D)));


extern volatile __bit PID1K114 __attribute__((address(0x2C8E)));


extern volatile __bit PID1K115 __attribute__((address(0x2C8F)));


extern volatile __bit PID1K12 __attribute__((address(0x2C82)));


extern volatile __bit PID1K13 __attribute__((address(0x2C83)));


extern volatile __bit PID1K14 __attribute__((address(0x2C84)));


extern volatile __bit PID1K15 __attribute__((address(0x2C85)));


extern volatile __bit PID1K16 __attribute__((address(0x2C86)));


extern volatile __bit PID1K17 __attribute__((address(0x2C87)));


extern volatile __bit PID1K18 __attribute__((address(0x2C88)));


extern volatile __bit PID1K19 __attribute__((address(0x2C89)));


extern volatile __bit PID1K20 __attribute__((address(0x2C90)));


extern volatile __bit PID1K21 __attribute__((address(0x2C91)));


extern volatile __bit PID1K210 __attribute__((address(0x2C9A)));


extern volatile __bit PID1K211 __attribute__((address(0x2C9B)));


extern volatile __bit PID1K212 __attribute__((address(0x2C9C)));


extern volatile __bit PID1K213 __attribute__((address(0x2C9D)));


extern volatile __bit PID1K214 __attribute__((address(0x2C9E)));


extern volatile __bit PID1K215 __attribute__((address(0x2C9F)));


extern volatile __bit PID1K22 __attribute__((address(0x2C92)));


extern volatile __bit PID1K23 __attribute__((address(0x2C93)));


extern volatile __bit PID1K24 __attribute__((address(0x2C94)));


extern volatile __bit PID1K25 __attribute__((address(0x2C95)));


extern volatile __bit PID1K26 __attribute__((address(0x2C96)));


extern volatile __bit PID1K27 __attribute__((address(0x2C97)));


extern volatile __bit PID1K28 __attribute__((address(0x2C98)));


extern volatile __bit PID1K29 __attribute__((address(0x2C99)));


extern volatile __bit PID1K30 __attribute__((address(0x2CA0)));


extern volatile __bit PID1K31 __attribute__((address(0x2CA1)));


extern volatile __bit PID1K310 __attribute__((address(0x2CAA)));


extern volatile __bit PID1K311 __attribute__((address(0x2CAB)));


extern volatile __bit PID1K312 __attribute__((address(0x2CAC)));


extern volatile __bit PID1K313 __attribute__((address(0x2CAD)));


extern volatile __bit PID1K314 __attribute__((address(0x2CAE)));


extern volatile __bit PID1K315 __attribute__((address(0x2CAF)));


extern volatile __bit PID1K32 __attribute__((address(0x2CA2)));


extern volatile __bit PID1K33 __attribute__((address(0x2CA3)));


extern volatile __bit PID1K34 __attribute__((address(0x2CA4)));


extern volatile __bit PID1K35 __attribute__((address(0x2CA5)));


extern volatile __bit PID1K36 __attribute__((address(0x2CA6)));


extern volatile __bit PID1K37 __attribute__((address(0x2CA7)));


extern volatile __bit PID1K38 __attribute__((address(0x2CA8)));


extern volatile __bit PID1K39 __attribute__((address(0x2CA9)));


extern volatile __bit PID1MODE0 __attribute__((address(0x30A0)));


extern volatile __bit PID1MODE1 __attribute__((address(0x30A1)));


extern volatile __bit PID1MODE2 __attribute__((address(0x30A2)));


extern volatile __bit PID1OUT0 __attribute__((address(0x2CB0)));


extern volatile __bit PID1OUT1 __attribute__((address(0x2CB1)));


extern volatile __bit PID1OUT10 __attribute__((address(0x2CBA)));


extern volatile __bit PID1OUT11 __attribute__((address(0x2CBB)));


extern volatile __bit PID1OUT12 __attribute__((address(0x2CBC)));


extern volatile __bit PID1OUT13 __attribute__((address(0x2CBD)));


extern volatile __bit PID1OUT14 __attribute__((address(0x2CBE)));


extern volatile __bit PID1OUT15 __attribute__((address(0x2CBF)));


extern volatile __bit PID1OUT16 __attribute__((address(0x2CC0)));


extern volatile __bit PID1OUT17 __attribute__((address(0x2CC1)));


extern volatile __bit PID1OUT18 __attribute__((address(0x2CC2)));


extern volatile __bit PID1OUT19 __attribute__((address(0x2CC3)));


extern volatile __bit PID1OUT2 __attribute__((address(0x2CB2)));


extern volatile __bit PID1OUT20 __attribute__((address(0x2CC4)));


extern volatile __bit PID1OUT21 __attribute__((address(0x2CC5)));


extern volatile __bit PID1OUT22 __attribute__((address(0x2CC6)));


extern volatile __bit PID1OUT23 __attribute__((address(0x2CC7)));


extern volatile __bit PID1OUT24 __attribute__((address(0x2CC8)));


extern volatile __bit PID1OUT25 __attribute__((address(0x2CC9)));


extern volatile __bit PID1OUT26 __attribute__((address(0x2CCA)));


extern volatile __bit PID1OUT27 __attribute__((address(0x2CCB)));


extern volatile __bit PID1OUT28 __attribute__((address(0x2CCC)));


extern volatile __bit PID1OUT29 __attribute__((address(0x2CCD)));


extern volatile __bit PID1OUT3 __attribute__((address(0x2CB3)));


extern volatile __bit PID1OUT30 __attribute__((address(0x2CCE)));


extern volatile __bit PID1OUT31 __attribute__((address(0x2CCF)));


extern volatile __bit PID1OUT32 __attribute__((address(0x2CD0)));


extern volatile __bit PID1OUT33 __attribute__((address(0x2CD1)));


extern volatile __bit PID1OUT34 __attribute__((address(0x2CD2)));


extern volatile __bit PID1OUT35 __attribute__((address(0x2CD3)));


extern volatile __bit PID1OUT4 __attribute__((address(0x2CB4)));


extern volatile __bit PID1OUT5 __attribute__((address(0x2CB5)));


extern volatile __bit PID1OUT6 __attribute__((address(0x2CB6)));


extern volatile __bit PID1OUT7 __attribute__((address(0x2CB7)));


extern volatile __bit PID1OUT8 __attribute__((address(0x2CB8)));


extern volatile __bit PID1OUT9 __attribute__((address(0x2CB9)));


extern volatile __bit PID1SET0 __attribute__((address(0x2C60)));


extern volatile __bit PID1SET1 __attribute__((address(0x2C61)));


extern volatile __bit PID1SET10 __attribute__((address(0x2C6A)));


extern volatile __bit PID1SET11 __attribute__((address(0x2C6B)));


extern volatile __bit PID1SET12 __attribute__((address(0x2C6C)));


extern volatile __bit PID1SET13 __attribute__((address(0x2C6D)));


extern volatile __bit PID1SET14 __attribute__((address(0x2C6E)));


extern volatile __bit PID1SET15 __attribute__((address(0x2C6F)));


extern volatile __bit PID1SET2 __attribute__((address(0x2C62)));


extern volatile __bit PID1SET3 __attribute__((address(0x2C63)));


extern volatile __bit PID1SET4 __attribute__((address(0x2C64)));


extern volatile __bit PID1SET5 __attribute__((address(0x2C65)));


extern volatile __bit PID1SET6 __attribute__((address(0x2C66)));


extern volatile __bit PID1SET7 __attribute__((address(0x2C67)));


extern volatile __bit PID1SET8 __attribute__((address(0x2C68)));


extern volatile __bit PID1SET9 __attribute__((address(0x2C69)));


extern volatile __bit PID1Z10 __attribute__((address(0x2CD8)));


extern volatile __bit PID1Z11 __attribute__((address(0x2CD9)));


extern volatile __bit PID1Z110 __attribute__((address(0x2CE2)));


extern volatile __bit PID1Z111 __attribute__((address(0x2CE3)));


extern volatile __bit PID1Z112 __attribute__((address(0x2CE4)));


extern volatile __bit PID1Z113 __attribute__((address(0x2CE5)));


extern volatile __bit PID1Z114 __attribute__((address(0x2CE6)));


extern volatile __bit PID1Z115 __attribute__((address(0x2CE7)));


extern volatile __bit PID1Z116 __attribute__((address(0x2CE8)));


extern volatile __bit PID1Z12 __attribute__((address(0x2CDA)));


extern volatile __bit PID1Z13 __attribute__((address(0x2CDB)));


extern volatile __bit PID1Z14 __attribute__((address(0x2CDC)));


extern volatile __bit PID1Z15 __attribute__((address(0x2CDD)));


extern volatile __bit PID1Z16 __attribute__((address(0x2CDE)));


extern volatile __bit PID1Z17 __attribute__((address(0x2CDF)));


extern volatile __bit PID1Z18 __attribute__((address(0x2CE0)));


extern volatile __bit PID1Z19 __attribute__((address(0x2CE1)));


extern volatile __bit PID1Z20 __attribute__((address(0x3060)));


extern volatile __bit PID1Z21 __attribute__((address(0x3061)));


extern volatile __bit PID1Z210 __attribute__((address(0x306A)));


extern volatile __bit PID1Z211 __attribute__((address(0x306B)));


extern volatile __bit PID1Z212 __attribute__((address(0x306C)));


extern volatile __bit PID1Z213 __attribute__((address(0x306D)));


extern volatile __bit PID1Z214 __attribute__((address(0x306E)));


extern volatile __bit PID1Z215 __attribute__((address(0x306F)));


extern volatile __bit PID1Z216 __attribute__((address(0x3070)));


extern volatile __bit PID1Z22 __attribute__((address(0x3062)));


extern volatile __bit PID1Z23 __attribute__((address(0x3063)));


extern volatile __bit PID1Z24 __attribute__((address(0x3064)));


extern volatile __bit PID1Z25 __attribute__((address(0x3065)));


extern volatile __bit PID1Z26 __attribute__((address(0x3066)));


extern volatile __bit PID1Z27 __attribute__((address(0x3067)));


extern volatile __bit PID1Z28 __attribute__((address(0x3068)));


extern volatile __bit PID1Z29 __attribute__((address(0x3069)));


extern volatile __bit PLEN0 __attribute__((address(0x3CD0)));


extern volatile __bit PLEN1 __attribute__((address(0x3CD1)));


extern volatile __bit PLEN2 __attribute__((address(0x3CD2)));


extern volatile __bit PLEN3 __attribute__((address(0x3CD3)));


extern volatile __bit PLLR __attribute__((address(0x4D6)));


extern volatile __bit POLA __attribute__((address(0x34B8)));


extern volatile __bit POLB __attribute__((address(0x34B9)));


extern volatile __bit POLC __attribute__((address(0x34BA)));


extern volatile __bit POLD __attribute__((address(0x34BB)));


extern volatile __bit PPSLOCKED __attribute__((address(0x7078)));


extern volatile __bit PREC __attribute__((address(0x40A6)));


extern volatile __bit PRP __attribute__((address(0x40AC)));


extern volatile __bit PS2 __attribute__((address(0x4AA)));


extern volatile __bit PSA __attribute__((address(0x4AB)));


extern volatile __bit PSCNT0 __attribute__((address(0x3898)));


extern volatile __bit PSCNT1 __attribute__((address(0x3899)));


extern volatile __bit PSCNT10 __attribute__((address(0x38A2)));


extern volatile __bit PSCNT11 __attribute__((address(0x38A3)));


extern volatile __bit PSCNT12 __attribute__((address(0x38A4)));


extern volatile __bit PSCNT13 __attribute__((address(0x38A5)));


extern volatile __bit PSCNT14 __attribute__((address(0x38A6)));


extern volatile __bit PSCNT15 __attribute__((address(0x38A7)));


extern volatile __bit PSCNT16 __attribute__((address(0x38A8)));


extern volatile __bit PSCNT17 __attribute__((address(0x38A9)));


extern volatile __bit PSCNT2 __attribute__((address(0x389A)));


extern volatile __bit PSCNT3 __attribute__((address(0x389B)));


extern volatile __bit PSCNT4 __attribute__((address(0x389C)));


extern volatile __bit PSCNT5 __attribute__((address(0x389D)));


extern volatile __bit PSCNT6 __attribute__((address(0x389E)));


extern volatile __bit PSCNT7 __attribute__((address(0x389F)));


extern volatile __bit PSCNT8 __attribute__((address(0x38A0)));


extern volatile __bit PSCNT9 __attribute__((address(0x38A1)));


extern volatile __bit PWM3DC0 __attribute__((address(0x30BE)));


extern volatile __bit PWM3DC1 __attribute__((address(0x30BF)));


extern volatile __bit PWM3DC2 __attribute__((address(0x30C0)));


extern volatile __bit PWM3DC3 __attribute__((address(0x30C1)));


extern volatile __bit PWM3DC4 __attribute__((address(0x30C2)));


extern volatile __bit PWM3DC5 __attribute__((address(0x30C3)));


extern volatile __bit PWM3DC6 __attribute__((address(0x30C4)));


extern volatile __bit PWM3DC7 __attribute__((address(0x30C5)));


extern volatile __bit PWM3DC8 __attribute__((address(0x30C6)));


extern volatile __bit PWM3DC9 __attribute__((address(0x30C7)));


extern volatile __bit PWM3EN __attribute__((address(0x30CF)));


extern volatile __bit PWM3OUT __attribute__((address(0x30CD)));


extern volatile __bit PWM3POL __attribute__((address(0x30CC)));


extern volatile __bit PWM4DC0 __attribute__((address(0x30D6)));


extern volatile __bit PWM4DC1 __attribute__((address(0x30D7)));


extern volatile __bit PWM4DC2 __attribute__((address(0x30D8)));


extern volatile __bit PWM4DC3 __attribute__((address(0x30D9)));


extern volatile __bit PWM4DC4 __attribute__((address(0x30DA)));


extern volatile __bit PWM4DC5 __attribute__((address(0x30DB)));


extern volatile __bit PWM4DC6 __attribute__((address(0x30DC)));


extern volatile __bit PWM4DC7 __attribute__((address(0x30DD)));


extern volatile __bit PWM4DC8 __attribute__((address(0x30DE)));


extern volatile __bit PWM4DC9 __attribute__((address(0x30DF)));


extern volatile __bit PWM4EN __attribute__((address(0x30E7)));


extern volatile __bit PWM4OUT __attribute__((address(0x30E5)));


extern volatile __bit PWM4POL __attribute__((address(0x30E4)));


extern volatile __bit RA0 __attribute__((address(0x60)));


extern volatile __bit RA0PPS0 __attribute__((address(0x7480)));


extern volatile __bit RA0PPS1 __attribute__((address(0x7481)));


extern volatile __bit RA0PPS2 __attribute__((address(0x7482)));


extern volatile __bit RA0PPS3 __attribute__((address(0x7483)));


extern volatile __bit RA0PPS4 __attribute__((address(0x7484)));


extern volatile __bit RA1 __attribute__((address(0x61)));


extern volatile __bit RA1PPS0 __attribute__((address(0x7488)));


extern volatile __bit RA1PPS1 __attribute__((address(0x7489)));


extern volatile __bit RA1PPS2 __attribute__((address(0x748A)));


extern volatile __bit RA1PPS3 __attribute__((address(0x748B)));


extern volatile __bit RA1PPS4 __attribute__((address(0x748C)));


extern volatile __bit RA2 __attribute__((address(0x62)));


extern volatile __bit RA2PPS0 __attribute__((address(0x7490)));


extern volatile __bit RA2PPS1 __attribute__((address(0x7491)));


extern volatile __bit RA2PPS2 __attribute__((address(0x7492)));


extern volatile __bit RA2PPS3 __attribute__((address(0x7493)));


extern volatile __bit RA2PPS4 __attribute__((address(0x7494)));


extern volatile __bit RA3 __attribute__((address(0x63)));


extern volatile __bit RA4 __attribute__((address(0x64)));


extern volatile __bit RA4PPS0 __attribute__((address(0x74A0)));


extern volatile __bit RA4PPS1 __attribute__((address(0x74A1)));


extern volatile __bit RA4PPS2 __attribute__((address(0x74A2)));


extern volatile __bit RA4PPS3 __attribute__((address(0x74A3)));


extern volatile __bit RA4PPS4 __attribute__((address(0x74A4)));


extern volatile __bit RA5 __attribute__((address(0x65)));


extern volatile __bit RA5PPS0 __attribute__((address(0x74A8)));


extern volatile __bit RA5PPS1 __attribute__((address(0x74A9)));


extern volatile __bit RA5PPS2 __attribute__((address(0x74AA)));


extern volatile __bit RA5PPS3 __attribute__((address(0x74AB)));


extern volatile __bit RA5PPS4 __attribute__((address(0x74AC)));


extern volatile __bit RB4 __attribute__((address(0x6C)));


extern volatile __bit RB4PPS0 __attribute__((address(0x74E0)));


extern volatile __bit RB4PPS1 __attribute__((address(0x74E1)));


extern volatile __bit RB4PPS2 __attribute__((address(0x74E2)));


extern volatile __bit RB4PPS3 __attribute__((address(0x74E3)));


extern volatile __bit RB4PPS4 __attribute__((address(0x74E4)));


extern volatile __bit RB5 __attribute__((address(0x6D)));


extern volatile __bit RB5PPS0 __attribute__((address(0x74E8)));


extern volatile __bit RB5PPS1 __attribute__((address(0x74E9)));


extern volatile __bit RB5PPS2 __attribute__((address(0x74EA)));


extern volatile __bit RB5PPS3 __attribute__((address(0x74EB)));


extern volatile __bit RB5PPS4 __attribute__((address(0x74EC)));


extern volatile __bit RB6 __attribute__((address(0x6E)));


extern volatile __bit RB6PPS0 __attribute__((address(0x74F0)));


extern volatile __bit RB6PPS1 __attribute__((address(0x74F1)));


extern volatile __bit RB6PPS2 __attribute__((address(0x74F2)));


extern volatile __bit RB6PPS3 __attribute__((address(0x74F3)));


extern volatile __bit RB6PPS4 __attribute__((address(0x74F4)));


extern volatile __bit RB7 __attribute__((address(0x6F)));


extern volatile __bit RB7PPS0 __attribute__((address(0x74F8)));


extern volatile __bit RB7PPS1 __attribute__((address(0x74F9)));


extern volatile __bit RB7PPS2 __attribute__((address(0x74FA)));


extern volatile __bit RB7PPS3 __attribute__((address(0x74FB)));


extern volatile __bit RB7PPS4 __attribute__((address(0x74FC)));


extern volatile __bit RC0 __attribute__((address(0x70)));


extern volatile __bit RC0PPS0 __attribute__((address(0x7500)));


extern volatile __bit RC0PPS1 __attribute__((address(0x7501)));


extern volatile __bit RC0PPS2 __attribute__((address(0x7502)));


extern volatile __bit RC0PPS3 __attribute__((address(0x7503)));


extern volatile __bit RC0PPS4 __attribute__((address(0x7504)));


extern volatile __bit RC1 __attribute__((address(0x71)));


extern volatile __bit RC1PPS0 __attribute__((address(0x7508)));


extern volatile __bit RC1PPS1 __attribute__((address(0x7509)));


extern volatile __bit RC1PPS2 __attribute__((address(0x750A)));


extern volatile __bit RC1PPS3 __attribute__((address(0x750B)));


extern volatile __bit RC1PPS4 __attribute__((address(0x750C)));


extern volatile __bit RC2 __attribute__((address(0x72)));


extern volatile __bit RC2PPS0 __attribute__((address(0x7510)));


extern volatile __bit RC2PPS1 __attribute__((address(0x7511)));


extern volatile __bit RC2PPS2 __attribute__((address(0x7512)));


extern volatile __bit RC2PPS3 __attribute__((address(0x7513)));


extern volatile __bit RC2PPS4 __attribute__((address(0x7514)));


extern volatile __bit RC3 __attribute__((address(0x73)));


extern volatile __bit RC3PPS0 __attribute__((address(0x7518)));


extern volatile __bit RC3PPS1 __attribute__((address(0x7519)));


extern volatile __bit RC3PPS2 __attribute__((address(0x751A)));


extern volatile __bit RC3PPS3 __attribute__((address(0x751B)));


extern volatile __bit RC3PPS4 __attribute__((address(0x751C)));


extern volatile __bit RC4 __attribute__((address(0x74)));


extern volatile __bit RC4PPS0 __attribute__((address(0x7520)));


extern volatile __bit RC4PPS1 __attribute__((address(0x7521)));


extern volatile __bit RC4PPS2 __attribute__((address(0x7522)));


extern volatile __bit RC4PPS3 __attribute__((address(0x7523)));


extern volatile __bit RC4PPS4 __attribute__((address(0x7524)));


extern volatile __bit RC5 __attribute__((address(0x75)));


extern volatile __bit RC5PPS0 __attribute__((address(0x7528)));


extern volatile __bit RC5PPS1 __attribute__((address(0x7529)));


extern volatile __bit RC5PPS2 __attribute__((address(0x752A)));


extern volatile __bit RC5PPS3 __attribute__((address(0x752B)));


extern volatile __bit RC5PPS4 __attribute__((address(0x752C)));


extern volatile __bit RC6 __attribute__((address(0x76)));


extern volatile __bit RC6PPS0 __attribute__((address(0x7530)));


extern volatile __bit RC6PPS1 __attribute__((address(0x7531)));


extern volatile __bit RC6PPS2 __attribute__((address(0x7532)));


extern volatile __bit RC6PPS3 __attribute__((address(0x7533)));


extern volatile __bit RC6PPS4 __attribute__((address(0x7534)));


extern volatile __bit RC7 __attribute__((address(0x77)));


extern volatile __bit RC7PPS0 __attribute__((address(0x7538)));


extern volatile __bit RC7PPS1 __attribute__((address(0x7539)));


extern volatile __bit RC7PPS2 __attribute__((address(0x753A)));


extern volatile __bit RC7PPS3 __attribute__((address(0x753B)));


extern volatile __bit RC7PPS4 __attribute__((address(0x753C)));


extern volatile __bit RCEN __attribute__((address(0x10B3)));


extern volatile __bit RCIDL __attribute__((address(0xCFE)));


extern volatile __bit RCIE __attribute__((address(0x485)));


extern volatile __bit RCIF __attribute__((address(0x85)));


extern volatile __bit RD __attribute__((address(0xCA8)));


extern volatile __bit REN __attribute__((address(0x349E)));


extern volatile __bit RES0 __attribute__((address(0x4060)));


extern volatile __bit RES1 __attribute__((address(0x4061)));


extern volatile __bit RES2 __attribute__((address(0x4062)));


extern volatile __bit RES3 __attribute__((address(0x4063)));


extern volatile __bit RES4 __attribute__((address(0x4064)));


extern volatile __bit RES5 __attribute__((address(0x4065)));


extern volatile __bit RES6 __attribute__((address(0x4066)));


extern volatile __bit RES7 __attribute__((address(0x4067)));


extern volatile __bit RES8 __attribute__((address(0x4068)));


extern volatile __bit RES9 __attribute__((address(0x4069)));


extern volatile __bit RSEN __attribute__((address(0x10B1)));


extern volatile __bit RX9 __attribute__((address(0xCEE)));


extern volatile __bit RX9D __attribute__((address(0xCE8)));


extern volatile __bit RXPPS0 __attribute__((address(0x7120)));


extern volatile __bit RXPPS1 __attribute__((address(0x7121)));


extern volatile __bit RXPPS2 __attribute__((address(0x7122)));


extern volatile __bit RXPPS3 __attribute__((address(0x7123)));


extern volatile __bit RXPPS4 __attribute__((address(0x7124)));


extern volatile __bit R_nW __attribute__((address(0x10A2)));


extern volatile __bit SBCDE __attribute__((address(0x10BA)));


extern volatile __bit SBOREN __attribute__((address(0x8B7)));


extern volatile __bit SCANBUSY __attribute__((address(0x38E5)));


extern volatile __bit SCANEN __attribute__((address(0x38E7)));


extern volatile __bit SCANGO __attribute__((address(0x38E6)));


extern volatile __bit SCANHADR0 __attribute__((address(0x38D0)));


extern volatile __bit SCANHADR1 __attribute__((address(0x38D1)));


extern volatile __bit SCANHADR10 __attribute__((address(0x38DA)));


extern volatile __bit SCANHADR11 __attribute__((address(0x38DB)));


extern volatile __bit SCANHADR12 __attribute__((address(0x38DC)));


extern volatile __bit SCANHADR13 __attribute__((address(0x38DD)));


extern volatile __bit SCANHADR14 __attribute__((address(0x38DE)));


extern volatile __bit SCANHADR15 __attribute__((address(0x38DF)));


extern volatile __bit SCANHADR2 __attribute__((address(0x38D2)));


extern volatile __bit SCANHADR3 __attribute__((address(0x38D3)));


extern volatile __bit SCANHADR4 __attribute__((address(0x38D4)));


extern volatile __bit SCANHADR5 __attribute__((address(0x38D5)));


extern volatile __bit SCANHADR6 __attribute__((address(0x38D6)));


extern volatile __bit SCANHADR7 __attribute__((address(0x38D7)));


extern volatile __bit SCANHADR8 __attribute__((address(0x38D8)));


extern volatile __bit SCANHADR9 __attribute__((address(0x38D9)));


extern volatile __bit SCANIE __attribute__((address(0x49F)));


extern volatile __bit SCANIF __attribute__((address(0x9F)));


extern volatile __bit SCANINTM __attribute__((address(0x38E3)));


extern volatile __bit SCANINVALID __attribute__((address(0x38E4)));


extern volatile __bit SCANLADR0 __attribute__((address(0x38C0)));


extern volatile __bit SCANLADR1 __attribute__((address(0x38C1)));


extern volatile __bit SCANLADR10 __attribute__((address(0x38CA)));


extern volatile __bit SCANLADR11 __attribute__((address(0x38CB)));


extern volatile __bit SCANLADR12 __attribute__((address(0x38CC)));


extern volatile __bit SCANLADR13 __attribute__((address(0x38CD)));


extern volatile __bit SCANLADR14 __attribute__((address(0x38CE)));


extern volatile __bit SCANLADR15 __attribute__((address(0x38CF)));


extern volatile __bit SCANLADR2 __attribute__((address(0x38C2)));


extern volatile __bit SCANLADR3 __attribute__((address(0x38C3)));


extern volatile __bit SCANLADR4 __attribute__((address(0x38C4)));


extern volatile __bit SCANLADR5 __attribute__((address(0x38C5)));


extern volatile __bit SCANLADR6 __attribute__((address(0x38C6)));


extern volatile __bit SCANLADR7 __attribute__((address(0x38C7)));


extern volatile __bit SCANLADR8 __attribute__((address(0x38C8)));


extern volatile __bit SCANLADR9 __attribute__((address(0x38C9)));


extern volatile __bit SCANMODE0 __attribute__((address(0x38E0)));


extern volatile __bit SCANMODE1 __attribute__((address(0x38E1)));


extern volatile __bit SCANTSEL0 __attribute__((address(0x38E8)));


extern volatile __bit SCANTSEL1 __attribute__((address(0x38E9)));


extern volatile __bit SCANTSEL2 __attribute__((address(0x38EA)));


extern volatile __bit SCANTSEL3 __attribute__((address(0x38EB)));


extern volatile __bit SCIE __attribute__((address(0x10BD)));


extern volatile __bit SCKP __attribute__((address(0xCFC)));


extern volatile __bit SCS0 __attribute__((address(0x4C8)));


extern volatile __bit SCS1 __attribute__((address(0x4C9)));


extern volatile __bit SDAHT __attribute__((address(0x10BB)));


extern volatile __bit SENDB __attribute__((address(0xCF3)));


extern volatile __bit SET0 __attribute__((address(0x2C60)));


extern volatile __bit SET1 __attribute__((address(0x2C61)));


extern volatile __bit SET10 __attribute__((address(0x2C6A)));


extern volatile __bit SET11 __attribute__((address(0x2C6B)));


extern volatile __bit SET12 __attribute__((address(0x2C6C)));


extern volatile __bit SET13 __attribute__((address(0x2C6D)));


extern volatile __bit SET14 __attribute__((address(0x2C6E)));


extern volatile __bit SET15 __attribute__((address(0x2C6F)));


extern volatile __bit SET2 __attribute__((address(0x2C62)));


extern volatile __bit SET3 __attribute__((address(0x2C63)));


extern volatile __bit SET4 __attribute__((address(0x2C64)));


extern volatile __bit SET5 __attribute__((address(0x2C65)));


extern volatile __bit SET6 __attribute__((address(0x2C66)));


extern volatile __bit SET7 __attribute__((address(0x2C67)));


extern volatile __bit SET8 __attribute__((address(0x2C68)));


extern volatile __bit SET9 __attribute__((address(0x2C69)));


extern volatile __bit SHIFT0 __attribute__((address(0x3CA8)));


extern volatile __bit SHIFT1 __attribute__((address(0x3CA9)));


extern volatile __bit SHIFT10 __attribute__((address(0x3CB2)));


extern volatile __bit SHIFT11 __attribute__((address(0x3CB3)));


extern volatile __bit SHIFT12 __attribute__((address(0x3CB4)));


extern volatile __bit SHIFT13 __attribute__((address(0x3CB5)));


extern volatile __bit SHIFT14 __attribute__((address(0x3CB6)));


extern volatile __bit SHIFT15 __attribute__((address(0x3CB7)));


extern volatile __bit SHIFT2 __attribute__((address(0x3CAA)));


extern volatile __bit SHIFT3 __attribute__((address(0x3CAB)));


extern volatile __bit SHIFT4 __attribute__((address(0x3CAC)));


extern volatile __bit SHIFT5 __attribute__((address(0x3CAD)));


extern volatile __bit SHIFT6 __attribute__((address(0x3CAE)));


extern volatile __bit SHIFT7 __attribute__((address(0x3CAF)));


extern volatile __bit SHIFT8 __attribute__((address(0x3CB0)));


extern volatile __bit SHIFT9 __attribute__((address(0x3CB1)));


extern volatile __bit SHIFTM __attribute__((address(0x3CC9)));


extern volatile __bit SHUTDOWN __attribute__((address(0x349F)));


extern volatile __bit SLRA0 __attribute__((address(0x1860)));


extern volatile __bit SLRA1 __attribute__((address(0x1861)));


extern volatile __bit SLRA2 __attribute__((address(0x1862)));


extern volatile __bit SLRA4 __attribute__((address(0x1864)));


extern volatile __bit SLRA5 __attribute__((address(0x1865)));


extern volatile __bit SLRB4 __attribute__((address(0x186C)));


extern volatile __bit SLRB5 __attribute__((address(0x186D)));


extern volatile __bit SLRB6 __attribute__((address(0x186E)));


extern volatile __bit SLRB7 __attribute__((address(0x186F)));


extern volatile __bit SLRC0 __attribute__((address(0x1870)));


extern volatile __bit SLRC1 __attribute__((address(0x1871)));


extern volatile __bit SLRC2 __attribute__((address(0x1872)));


extern volatile __bit SLRC3 __attribute__((address(0x1873)));


extern volatile __bit SLRC4 __attribute__((address(0x1874)));


extern volatile __bit SLRC5 __attribute__((address(0x1875)));


extern volatile __bit SLRC6 __attribute__((address(0x1876)));


extern volatile __bit SLRC7 __attribute__((address(0x1877)));


extern volatile __bit SMP __attribute__((address(0x10A7)));


extern volatile __bit SMT1AS __attribute__((address(0x6CD0)));


extern volatile __bit SMT1CPR0 __attribute__((address(0x6C78)));


extern volatile __bit SMT1CPR1 __attribute__((address(0x6C79)));


extern volatile __bit SMT1CPR10 __attribute__((address(0x6C82)));


extern volatile __bit SMT1CPR11 __attribute__((address(0x6C83)));


extern volatile __bit SMT1CPR12 __attribute__((address(0x6C84)));


extern volatile __bit SMT1CPR13 __attribute__((address(0x6C85)));


extern volatile __bit SMT1CPR14 __attribute__((address(0x6C86)));


extern volatile __bit SMT1CPR15 __attribute__((address(0x6C87)));


extern volatile __bit SMT1CPR16 __attribute__((address(0x6C88)));


extern volatile __bit SMT1CPR17 __attribute__((address(0x6C89)));


extern volatile __bit SMT1CPR18 __attribute__((address(0x6C8A)));


extern volatile __bit SMT1CPR19 __attribute__((address(0x6C8B)));


extern volatile __bit SMT1CPR2 __attribute__((address(0x6C7A)));


extern volatile __bit SMT1CPR20 __attribute__((address(0x6C8C)));


extern volatile __bit SMT1CPR21 __attribute__((address(0x6C8D)));


extern volatile __bit SMT1CPR22 __attribute__((address(0x6C8E)));


extern volatile __bit SMT1CPR23 __attribute__((address(0x6C8F)));


extern volatile __bit SMT1CPR3 __attribute__((address(0x6C7B)));


extern volatile __bit SMT1CPR4 __attribute__((address(0x6C7C)));


extern volatile __bit SMT1CPR5 __attribute__((address(0x6C7D)));


extern volatile __bit SMT1CPR6 __attribute__((address(0x6C7E)));


extern volatile __bit SMT1CPR7 __attribute__((address(0x6C7F)));


extern volatile __bit SMT1CPR8 __attribute__((address(0x6C80)));


extern volatile __bit SMT1CPR9 __attribute__((address(0x6C81)));


extern volatile __bit SMT1CPRUP __attribute__((address(0x6CD7)));


extern volatile __bit SMT1CPW0 __attribute__((address(0x6C90)));


extern volatile __bit SMT1CPW1 __attribute__((address(0x6C91)));


extern volatile __bit SMT1CPW10 __attribute__((address(0x6C9A)));


extern volatile __bit SMT1CPW11 __attribute__((address(0x6C9B)));


extern volatile __bit SMT1CPW12 __attribute__((address(0x6C9C)));


extern volatile __bit SMT1CPW13 __attribute__((address(0x6C9D)));


extern volatile __bit SMT1CPW14 __attribute__((address(0x6C9E)));


extern volatile __bit SMT1CPW15 __attribute__((address(0x6C9F)));


extern volatile __bit SMT1CPW16 __attribute__((address(0x6CA0)));


extern volatile __bit SMT1CPW17 __attribute__((address(0x6CA1)));


extern volatile __bit SMT1CPW18 __attribute__((address(0x6CA2)));


extern volatile __bit SMT1CPW19 __attribute__((address(0x6CA3)));


extern volatile __bit SMT1CPW2 __attribute__((address(0x6C92)));


extern volatile __bit SMT1CPW20 __attribute__((address(0x6CA4)));


extern volatile __bit SMT1CPW21 __attribute__((address(0x6CA5)));


extern volatile __bit SMT1CPW22 __attribute__((address(0x6CA6)));


extern volatile __bit SMT1CPW23 __attribute__((address(0x6CA7)));


extern volatile __bit SMT1CPW3 __attribute__((address(0x6C93)));


extern volatile __bit SMT1CPW4 __attribute__((address(0x6C94)));


extern volatile __bit SMT1CPW5 __attribute__((address(0x6C95)));


extern volatile __bit SMT1CPW6 __attribute__((address(0x6C96)));


extern volatile __bit SMT1CPW7 __attribute__((address(0x6C97)));


extern volatile __bit SMT1CPW8 __attribute__((address(0x6C98)));


extern volatile __bit SMT1CPW9 __attribute__((address(0x6C99)));


extern volatile __bit SMT1CPWUP __attribute__((address(0x6CD6)));


extern volatile __bit SMT1CSEL0 __attribute__((address(0x6CD8)));


extern volatile __bit SMT1CSEL1 __attribute__((address(0x6CD9)));


extern volatile __bit SMT1CSEL2 __attribute__((address(0x6CDA)));


extern volatile __bit SMT1GO __attribute__((address(0x6CCF)));


extern volatile __bit SMT1IE __attribute__((address(0x498)));


extern volatile __bit SMT1IF __attribute__((address(0x98)));


extern volatile __bit SMT1MODE0 __attribute__((address(0x6CC8)));


extern volatile __bit SMT1MODE1 __attribute__((address(0x6CC9)));


extern volatile __bit SMT1MODE2 __attribute__((address(0x6CCA)));


extern volatile __bit SMT1MODE3 __attribute__((address(0x6CCB)));


extern volatile __bit SMT1PR0 __attribute__((address(0x6CA8)));


extern volatile __bit SMT1PR1 __attribute__((address(0x6CA9)));


extern volatile __bit SMT1PR10 __attribute__((address(0x6CB2)));


extern volatile __bit SMT1PR11 __attribute__((address(0x6CB3)));


extern volatile __bit SMT1PR12 __attribute__((address(0x6CB4)));


extern volatile __bit SMT1PR13 __attribute__((address(0x6CB5)));


extern volatile __bit SMT1PR14 __attribute__((address(0x6CB6)));


extern volatile __bit SMT1PR15 __attribute__((address(0x6CB7)));


extern volatile __bit SMT1PR16 __attribute__((address(0x6CB8)));


extern volatile __bit SMT1PR17 __attribute__((address(0x6CB9)));


extern volatile __bit SMT1PR18 __attribute__((address(0x6CBA)));


extern volatile __bit SMT1PR19 __attribute__((address(0x6CBB)));


extern volatile __bit SMT1PR2 __attribute__((address(0x6CAA)));


extern volatile __bit SMT1PR20 __attribute__((address(0x6CBC)));


extern volatile __bit SMT1PR21 __attribute__((address(0x6CBD)));


extern volatile __bit SMT1PR22 __attribute__((address(0x6CBE)));


extern volatile __bit SMT1PR23 __attribute__((address(0x6CBF)));


extern volatile __bit SMT1PR3 __attribute__((address(0x6CAB)));


extern volatile __bit SMT1PR4 __attribute__((address(0x6CAC)));


extern volatile __bit SMT1PR5 __attribute__((address(0x6CAD)));


extern volatile __bit SMT1PR6 __attribute__((address(0x6CAE)));


extern volatile __bit SMT1PR7 __attribute__((address(0x6CAF)));


extern volatile __bit SMT1PR8 __attribute__((address(0x6CB0)));


extern volatile __bit SMT1PR9 __attribute__((address(0x6CB1)));


extern volatile __bit SMT1PRAIE __attribute__((address(0x499)));


extern volatile __bit SMT1PRAIF __attribute__((address(0x99)));


extern volatile __bit SMT1PS0 __attribute__((address(0x6CC0)));


extern volatile __bit SMT1PS1 __attribute__((address(0x6CC1)));


extern volatile __bit SMT1PWAIE __attribute__((address(0x49A)));


extern volatile __bit SMT1PWAIF __attribute__((address(0x9A)));


extern volatile __bit SMT1REPEAT __attribute__((address(0x6CCE)));


extern volatile __bit SMT1RESET __attribute__((address(0x6CD5)));


extern volatile __bit SMT1SIGPPS0 __attribute__((address(0x7130)));


extern volatile __bit SMT1SIGPPS1 __attribute__((address(0x7131)));


extern volatile __bit SMT1SIGPPS2 __attribute__((address(0x7132)));


extern volatile __bit SMT1SIGPPS3 __attribute__((address(0x7133)));


extern volatile __bit SMT1SIGPPS4 __attribute__((address(0x7134)));


extern volatile __bit SMT1SSEL0 __attribute__((address(0x6CE0)));


extern volatile __bit SMT1SSEL1 __attribute__((address(0x6CE1)));


extern volatile __bit SMT1SSEL2 __attribute__((address(0x6CE2)));


extern volatile __bit SMT1SSEL3 __attribute__((address(0x6CE3)));


extern volatile __bit SMT1SSEL4 __attribute__((address(0x6CE4)));


extern volatile __bit SMT1TMR0 __attribute__((address(0x6C60)));


extern volatile __bit SMT1TMR1 __attribute__((address(0x6C61)));


extern volatile __bit SMT1TMR10 __attribute__((address(0x6C6A)));


extern volatile __bit SMT1TMR11 __attribute__((address(0x6C6B)));


extern volatile __bit SMT1TMR12 __attribute__((address(0x6C6C)));


extern volatile __bit SMT1TMR13 __attribute__((address(0x6C6D)));


extern volatile __bit SMT1TMR14 __attribute__((address(0x6C6E)));


extern volatile __bit SMT1TMR15 __attribute__((address(0x6C6F)));


extern volatile __bit SMT1TMR16 __attribute__((address(0x6C70)));


extern volatile __bit SMT1TMR17 __attribute__((address(0x6C71)));


extern volatile __bit SMT1TMR18 __attribute__((address(0x6C72)));


extern volatile __bit SMT1TMR19 __attribute__((address(0x6C73)));


extern volatile __bit SMT1TMR2 __attribute__((address(0x6C62)));


extern volatile __bit SMT1TMR20 __attribute__((address(0x6C74)));


extern volatile __bit SMT1TMR21 __attribute__((address(0x6C75)));


extern volatile __bit SMT1TMR22 __attribute__((address(0x6C76)));


extern volatile __bit SMT1TMR23 __attribute__((address(0x6C77)));


extern volatile __bit SMT1TMR3 __attribute__((address(0x6C63)));


extern volatile __bit SMT1TMR4 __attribute__((address(0x6C64)));


extern volatile __bit SMT1TMR5 __attribute__((address(0x6C65)));


extern volatile __bit SMT1TMR6 __attribute__((address(0x6C66)));


extern volatile __bit SMT1TMR7 __attribute__((address(0x6C67)));


extern volatile __bit SMT1TMR8 __attribute__((address(0x6C68)));


extern volatile __bit SMT1TMR9 __attribute__((address(0x6C69)));


extern volatile __bit SMT1TS __attribute__((address(0x6CD2)));


extern volatile __bit SMT1WS __attribute__((address(0x6CD1)));


extern volatile __bit SMT1WSEL0 __attribute__((address(0x6CE8)));


extern volatile __bit SMT1WSEL1 __attribute__((address(0x6CE9)));


extern volatile __bit SMT1WSEL2 __attribute__((address(0x6CEA)));


extern volatile __bit SMT1WSEL3 __attribute__((address(0x6CEB)));


extern volatile __bit SMT1WSEL4 __attribute__((address(0x6CEC)));


extern volatile __bit SMT2AS __attribute__((address(0x6D60)));


extern volatile __bit SMT2CPR0 __attribute__((address(0x6D08)));


extern volatile __bit SMT2CPR1 __attribute__((address(0x6D09)));


extern volatile __bit SMT2CPR10 __attribute__((address(0x6D12)));


extern volatile __bit SMT2CPR11 __attribute__((address(0x6D13)));


extern volatile __bit SMT2CPR12 __attribute__((address(0x6D14)));


extern volatile __bit SMT2CPR13 __attribute__((address(0x6D15)));


extern volatile __bit SMT2CPR14 __attribute__((address(0x6D16)));


extern volatile __bit SMT2CPR15 __attribute__((address(0x6D17)));


extern volatile __bit SMT2CPR16 __attribute__((address(0x6D18)));


extern volatile __bit SMT2CPR17 __attribute__((address(0x6D19)));


extern volatile __bit SMT2CPR18 __attribute__((address(0x6D1A)));


extern volatile __bit SMT2CPR19 __attribute__((address(0x6D1B)));


extern volatile __bit SMT2CPR2 __attribute__((address(0x6D0A)));


extern volatile __bit SMT2CPR20 __attribute__((address(0x6D1C)));


extern volatile __bit SMT2CPR21 __attribute__((address(0x6D1D)));


extern volatile __bit SMT2CPR22 __attribute__((address(0x6D1E)));


extern volatile __bit SMT2CPR23 __attribute__((address(0x6D1F)));


extern volatile __bit SMT2CPR3 __attribute__((address(0x6D0B)));


extern volatile __bit SMT2CPR4 __attribute__((address(0x6D0C)));


extern volatile __bit SMT2CPR5 __attribute__((address(0x6D0D)));


extern volatile __bit SMT2CPR6 __attribute__((address(0x6D0E)));


extern volatile __bit SMT2CPR7 __attribute__((address(0x6D0F)));


extern volatile __bit SMT2CPR8 __attribute__((address(0x6D10)));


extern volatile __bit SMT2CPR9 __attribute__((address(0x6D11)));


extern volatile __bit SMT2CPRUP __attribute__((address(0x6D67)));


extern volatile __bit SMT2CPW0 __attribute__((address(0x6D20)));


extern volatile __bit SMT2CPW1 __attribute__((address(0x6D21)));


extern volatile __bit SMT2CPW10 __attribute__((address(0x6D2A)));


extern volatile __bit SMT2CPW11 __attribute__((address(0x6D2B)));


extern volatile __bit SMT2CPW12 __attribute__((address(0x6D2C)));


extern volatile __bit SMT2CPW13 __attribute__((address(0x6D2D)));


extern volatile __bit SMT2CPW14 __attribute__((address(0x6D2E)));


extern volatile __bit SMT2CPW15 __attribute__((address(0x6D2F)));


extern volatile __bit SMT2CPW16 __attribute__((address(0x6D30)));


extern volatile __bit SMT2CPW17 __attribute__((address(0x6D31)));


extern volatile __bit SMT2CPW18 __attribute__((address(0x6D32)));


extern volatile __bit SMT2CPW19 __attribute__((address(0x6D33)));


extern volatile __bit SMT2CPW2 __attribute__((address(0x6D22)));


extern volatile __bit SMT2CPW20 __attribute__((address(0x6D34)));


extern volatile __bit SMT2CPW21 __attribute__((address(0x6D35)));


extern volatile __bit SMT2CPW22 __attribute__((address(0x6D36)));


extern volatile __bit SMT2CPW23 __attribute__((address(0x6D37)));


extern volatile __bit SMT2CPW3 __attribute__((address(0x6D23)));


extern volatile __bit SMT2CPW4 __attribute__((address(0x6D24)));


extern volatile __bit SMT2CPW5 __attribute__((address(0x6D25)));


extern volatile __bit SMT2CPW6 __attribute__((address(0x6D26)));


extern volatile __bit SMT2CPW7 __attribute__((address(0x6D27)));


extern volatile __bit SMT2CPW8 __attribute__((address(0x6D28)));


extern volatile __bit SMT2CPW9 __attribute__((address(0x6D29)));


extern volatile __bit SMT2CPWUP __attribute__((address(0x6D66)));


extern volatile __bit SMT2CSEL0 __attribute__((address(0x6D68)));


extern volatile __bit SMT2CSEL1 __attribute__((address(0x6D69)));


extern volatile __bit SMT2CSEL2 __attribute__((address(0x6D6A)));


extern volatile __bit SMT2GO __attribute__((address(0x6D5F)));


extern volatile __bit SMT2IE __attribute__((address(0x49B)));


extern volatile __bit SMT2IF __attribute__((address(0x9B)));


extern volatile __bit SMT2MODE0 __attribute__((address(0x6D58)));


extern volatile __bit SMT2MODE1 __attribute__((address(0x6D59)));


extern volatile __bit SMT2MODE2 __attribute__((address(0x6D5A)));


extern volatile __bit SMT2MODE3 __attribute__((address(0x6D5B)));


extern volatile __bit SMT2PR0 __attribute__((address(0x6D38)));


extern volatile __bit SMT2PR1 __attribute__((address(0x6D39)));


extern volatile __bit SMT2PR10 __attribute__((address(0x6D42)));


extern volatile __bit SMT2PR11 __attribute__((address(0x6D43)));


extern volatile __bit SMT2PR12 __attribute__((address(0x6D44)));


extern volatile __bit SMT2PR13 __attribute__((address(0x6D45)));


extern volatile __bit SMT2PR14 __attribute__((address(0x6D46)));


extern volatile __bit SMT2PR15 __attribute__((address(0x6D47)));


extern volatile __bit SMT2PR16 __attribute__((address(0x6D48)));


extern volatile __bit SMT2PR17 __attribute__((address(0x6D49)));


extern volatile __bit SMT2PR18 __attribute__((address(0x6D4A)));


extern volatile __bit SMT2PR19 __attribute__((address(0x6D4B)));


extern volatile __bit SMT2PR2 __attribute__((address(0x6D3A)));


extern volatile __bit SMT2PR20 __attribute__((address(0x6D4C)));


extern volatile __bit SMT2PR21 __attribute__((address(0x6D4D)));


extern volatile __bit SMT2PR22 __attribute__((address(0x6D4E)));


extern volatile __bit SMT2PR23 __attribute__((address(0x6D4F)));


extern volatile __bit SMT2PR3 __attribute__((address(0x6D3B)));


extern volatile __bit SMT2PR4 __attribute__((address(0x6D3C)));


extern volatile __bit SMT2PR5 __attribute__((address(0x6D3D)));


extern volatile __bit SMT2PR6 __attribute__((address(0x6D3E)));


extern volatile __bit SMT2PR7 __attribute__((address(0x6D3F)));


extern volatile __bit SMT2PR8 __attribute__((address(0x6D40)));


extern volatile __bit SMT2PR9 __attribute__((address(0x6D41)));


extern volatile __bit SMT2PRAIE __attribute__((address(0x49C)));


extern volatile __bit SMT2PRAIF __attribute__((address(0x9C)));


extern volatile __bit SMT2PS0 __attribute__((address(0x6D50)));


extern volatile __bit SMT2PS1 __attribute__((address(0x6D51)));


extern volatile __bit SMT2PWAIE __attribute__((address(0x49D)));


extern volatile __bit SMT2PWAIF __attribute__((address(0x9D)));


extern volatile __bit SMT2REPEAT __attribute__((address(0x6D5E)));


extern volatile __bit SMT2RESET __attribute__((address(0x6D65)));


extern volatile __bit SMT2SIGPPS0 __attribute__((address(0x7160)));


extern volatile __bit SMT2SIGPPS1 __attribute__((address(0x7161)));


extern volatile __bit SMT2SIGPPS2 __attribute__((address(0x7162)));


extern volatile __bit SMT2SIGPPS3 __attribute__((address(0x7163)));


extern volatile __bit SMT2SIGPPS4 __attribute__((address(0x7164)));


extern volatile __bit SMT2SSEL0 __attribute__((address(0x6D70)));


extern volatile __bit SMT2SSEL1 __attribute__((address(0x6D71)));


extern volatile __bit SMT2SSEL2 __attribute__((address(0x6D72)));


extern volatile __bit SMT2SSEL3 __attribute__((address(0x6D73)));


extern volatile __bit SMT2SSEL4 __attribute__((address(0x6D74)));


extern volatile __bit SMT2TMR0 __attribute__((address(0x6CF0)));


extern volatile __bit SMT2TMR1 __attribute__((address(0x6CF1)));


extern volatile __bit SMT2TMR10 __attribute__((address(0x6CFA)));


extern volatile __bit SMT2TMR11 __attribute__((address(0x6CFB)));


extern volatile __bit SMT2TMR12 __attribute__((address(0x6CFC)));


extern volatile __bit SMT2TMR13 __attribute__((address(0x6CFD)));


extern volatile __bit SMT2TMR14 __attribute__((address(0x6CFE)));


extern volatile __bit SMT2TMR15 __attribute__((address(0x6CFF)));


extern volatile __bit SMT2TMR16 __attribute__((address(0x6D00)));


extern volatile __bit SMT2TMR17 __attribute__((address(0x6D01)));


extern volatile __bit SMT2TMR18 __attribute__((address(0x6D02)));


extern volatile __bit SMT2TMR19 __attribute__((address(0x6D03)));


extern volatile __bit SMT2TMR2 __attribute__((address(0x6CF2)));


extern volatile __bit SMT2TMR20 __attribute__((address(0x6D04)));


extern volatile __bit SMT2TMR21 __attribute__((address(0x6D05)));


extern volatile __bit SMT2TMR22 __attribute__((address(0x6D06)));


extern volatile __bit SMT2TMR23 __attribute__((address(0x6D07)));


extern volatile __bit SMT2TMR3 __attribute__((address(0x6CF3)));


extern volatile __bit SMT2TMR4 __attribute__((address(0x6CF4)));


extern volatile __bit SMT2TMR5 __attribute__((address(0x6CF5)));


extern volatile __bit SMT2TMR6 __attribute__((address(0x6CF6)));


extern volatile __bit SMT2TMR7 __attribute__((address(0x6CF7)));


extern volatile __bit SMT2TMR8 __attribute__((address(0x6CF8)));


extern volatile __bit SMT2TMR9 __attribute__((address(0x6CF9)));


extern volatile __bit SMT2TS __attribute__((address(0x6D62)));


extern volatile __bit SMT2WINPPS0 __attribute__((address(0x7168)));


extern volatile __bit SMT2WINPPS1 __attribute__((address(0x7169)));


extern volatile __bit SMT2WINPPS2 __attribute__((address(0x716A)));


extern volatile __bit SMT2WINPPS3 __attribute__((address(0x716B)));


extern volatile __bit SMT2WINPPS4 __attribute__((address(0x716C)));


extern volatile __bit SMT2WS __attribute__((address(0x6D61)));


extern volatile __bit SMT2WSEL0 __attribute__((address(0x6D78)));


extern volatile __bit SMT2WSEL1 __attribute__((address(0x6D79)));


extern volatile __bit SMT2WSEL2 __attribute__((address(0x6D7A)));


extern volatile __bit SMT2WSEL3 __attribute__((address(0x6D7B)));


extern volatile __bit SMT2WSEL4 __attribute__((address(0x6D7C)));


extern volatile __bit SMTWINPPS0 __attribute__((address(0x7138)));


extern volatile __bit SMTWINPPS1 __attribute__((address(0x7139)));


extern volatile __bit SMTWINPPS2 __attribute__((address(0x713A)));


extern volatile __bit SMTWINPPS3 __attribute__((address(0x713B)));


extern volatile __bit SMTWINPPS4 __attribute__((address(0x713C)));


extern volatile __bit SPEN __attribute__((address(0xCEF)));


extern volatile __bit SPLLEN __attribute__((address(0x4CF)));


extern volatile __bit SREN __attribute__((address(0xCED)));


extern volatile __bit SSP1ADD0 __attribute__((address(0x1090)));


extern volatile __bit SSP1ADD1 __attribute__((address(0x1091)));


extern volatile __bit SSP1ADD2 __attribute__((address(0x1092)));


extern volatile __bit SSP1ADD3 __attribute__((address(0x1093)));


extern volatile __bit SSP1ADD4 __attribute__((address(0x1094)));


extern volatile __bit SSP1ADD5 __attribute__((address(0x1095)));


extern volatile __bit SSP1ADD6 __attribute__((address(0x1096)));


extern volatile __bit SSP1ADD7 __attribute__((address(0x1097)));


extern volatile __bit SSP1BUF0 __attribute__((address(0x1088)));


extern volatile __bit SSP1BUF1 __attribute__((address(0x1089)));


extern volatile __bit SSP1BUF2 __attribute__((address(0x108A)));


extern volatile __bit SSP1BUF3 __attribute__((address(0x108B)));


extern volatile __bit SSP1BUF4 __attribute__((address(0x108C)));


extern volatile __bit SSP1BUF5 __attribute__((address(0x108D)));


extern volatile __bit SSP1BUF6 __attribute__((address(0x108E)));


extern volatile __bit SSP1BUF7 __attribute__((address(0x108F)));


extern volatile __bit SSP1IE __attribute__((address(0x483)));


extern volatile __bit SSP1IF __attribute__((address(0x83)));


extern volatile __bit SSP1MSK0 __attribute__((address(0x1098)));


extern volatile __bit SSP1MSK1 __attribute__((address(0x1099)));


extern volatile __bit SSP1MSK2 __attribute__((address(0x109A)));


extern volatile __bit SSP1MSK3 __attribute__((address(0x109B)));


extern volatile __bit SSP1MSK4 __attribute__((address(0x109C)));


extern volatile __bit SSP1MSK5 __attribute__((address(0x109D)));


extern volatile __bit SSP1MSK6 __attribute__((address(0x109E)));


extern volatile __bit SSP1MSK7 __attribute__((address(0x109F)));


extern volatile __bit SSPCLKPPS0 __attribute__((address(0x7100)));


extern volatile __bit SSPCLKPPS1 __attribute__((address(0x7101)));


extern volatile __bit SSPCLKPPS2 __attribute__((address(0x7102)));


extern volatile __bit SSPCLKPPS3 __attribute__((address(0x7103)));


extern volatile __bit SSPCLKPPS4 __attribute__((address(0x7104)));


extern volatile __bit SSPDATPPS0 __attribute__((address(0x7108)));


extern volatile __bit SSPDATPPS1 __attribute__((address(0x7109)));


extern volatile __bit SSPDATPPS2 __attribute__((address(0x710A)));


extern volatile __bit SSPDATPPS3 __attribute__((address(0x710B)));


extern volatile __bit SSPDATPPS4 __attribute__((address(0x710C)));


extern volatile __bit SSPEN __attribute__((address(0x10AD)));


extern volatile __bit SSPM0 __attribute__((address(0x10A8)));


extern volatile __bit SSPM1 __attribute__((address(0x10A9)));


extern volatile __bit SSPM2 __attribute__((address(0x10AA)));


extern volatile __bit SSPM3 __attribute__((address(0x10AB)));


extern volatile __bit SSPOV __attribute__((address(0x10AE)));


extern volatile __bit SSPSSPPS0 __attribute__((address(0x7110)));


extern volatile __bit SSPSSPPS1 __attribute__((address(0x7111)));


extern volatile __bit SSPSSPPS2 __attribute__((address(0x7112)));


extern volatile __bit SSPSSPPS3 __attribute__((address(0x7113)));


extern volatile __bit SSPSSPPS4 __attribute__((address(0x7114)));


extern volatile __bit STATE __attribute__((address(0x38AA)));


extern volatile __bit STKOVF __attribute__((address(0x4B7)));


extern volatile __bit STKUNF __attribute__((address(0x4B6)));


extern volatile __bit STPT0 __attribute__((address(0x40D0)));


extern volatile __bit STPT1 __attribute__((address(0x40D1)));


extern volatile __bit STPT10 __attribute__((address(0x40DA)));


extern volatile __bit STPT11 __attribute__((address(0x40DB)));


extern volatile __bit STPT12 __attribute__((address(0x40DC)));


extern volatile __bit STPT13 __attribute__((address(0x40DD)));


extern volatile __bit STPT14 __attribute__((address(0x40DE)));


extern volatile __bit STPT2 __attribute__((address(0x40D2)));


extern volatile __bit STPT3 __attribute__((address(0x40D3)));


extern volatile __bit STPT4 __attribute__((address(0x40D4)));


extern volatile __bit STPT5 __attribute__((address(0x40D5)));


extern volatile __bit STPT6 __attribute__((address(0x40D6)));


extern volatile __bit STPT7 __attribute__((address(0x40D7)));


extern volatile __bit STPT8 __attribute__((address(0x40D8)));


extern volatile __bit STPT9 __attribute__((address(0x40D9)));


extern volatile __bit STRA __attribute__((address(0x34A8)));


extern volatile __bit STRB __attribute__((address(0x34A9)));


extern volatile __bit STRC __attribute__((address(0x34AA)));


extern volatile __bit STRD __attribute__((address(0x34AB)));


extern volatile __bit SWDTEN __attribute__((address(0x3888)));


extern volatile __bit SYNC __attribute__((address(0xCF4)));


extern volatile __bit T0CKIPPS0 __attribute__((address(0x7088)));


extern volatile __bit T0CKIPPS1 __attribute__((address(0x7089)));


extern volatile __bit T0CKIPPS2 __attribute__((address(0x708A)));


extern volatile __bit T0CKIPPS3 __attribute__((address(0x708B)));


extern volatile __bit T0CKIPPS4 __attribute__((address(0x708C)));


extern volatile __bit T0CS __attribute__((address(0x4AD)));


extern volatile __bit T0IE __attribute__((address(0x5D)));


extern volatile __bit T0IF __attribute__((address(0x5A)));


extern volatile __bit T0SE __attribute__((address(0x4AC)));


extern volatile __bit T1CKIPPS0 __attribute__((address(0x7090)));


extern volatile __bit T1CKIPPS1 __attribute__((address(0x7091)));


extern volatile __bit T1CKIPPS2 __attribute__((address(0x7092)));


extern volatile __bit T1CKIPPS3 __attribute__((address(0x7093)));


extern volatile __bit T1CKIPPS4 __attribute__((address(0x7094)));


extern volatile __bit T1CKPS0 __attribute__((address(0xC4)));


extern volatile __bit T1CKPS1 __attribute__((address(0xC5)));


extern volatile __bit T1GGO_nDONE __attribute__((address(0xCB)));


extern volatile __bit T1GPOL __attribute__((address(0xCE)));


extern volatile __bit T1GPPS0 __attribute__((address(0x7098)));


extern volatile __bit T1GPPS1 __attribute__((address(0x7099)));


extern volatile __bit T1GPPS2 __attribute__((address(0x709A)));


extern volatile __bit T1GPPS3 __attribute__((address(0x709B)));


extern volatile __bit T1GPPS4 __attribute__((address(0x709C)));


extern volatile __bit T1GSPM __attribute__((address(0xCC)));


extern volatile __bit T1GSS0 __attribute__((address(0xC8)));


extern volatile __bit T1GSS1 __attribute__((address(0xC9)));


extern volatile __bit T1GTM __attribute__((address(0xCD)));


extern volatile __bit T1GVAL __attribute__((address(0xCA)));


extern volatile __bit T2CKIPPS0 __attribute__((address(0x70C0)));


extern volatile __bit T2CKIPPS1 __attribute__((address(0x70C1)));


extern volatile __bit T2CKIPPS2 __attribute__((address(0x70C2)));


extern volatile __bit T2CKIPPS3 __attribute__((address(0x70C3)));


extern volatile __bit T2CKIPPS4 __attribute__((address(0x70C4)));


extern volatile __bit T2CKPOL __attribute__((address(0xEE)));


extern volatile __bit T2CKPS0 __attribute__((address(0xE4)));


extern volatile __bit T2CKPS1 __attribute__((address(0xE5)));


extern volatile __bit T2CKPS2 __attribute__((address(0xE6)));


extern volatile __bit T2CKSYNC __attribute__((address(0xED)));


extern volatile __bit T2CS0 __attribute__((address(0xF0)));


extern volatile __bit T2CS1 __attribute__((address(0xF1)));


extern volatile __bit T2CS2 __attribute__((address(0xF2)));


extern volatile __bit T2CS3 __attribute__((address(0xF3)));


extern volatile __bit T2MODE0 __attribute__((address(0xE8)));


extern volatile __bit T2MODE1 __attribute__((address(0xE9)));


extern volatile __bit T2MODE2 __attribute__((address(0xEA)));


extern volatile __bit T2MODE3 __attribute__((address(0xEB)));


extern volatile __bit T2MODE4 __attribute__((address(0xEC)));


extern volatile __bit T2ON __attribute__((address(0xE7)));


extern volatile __bit T2OUTPS0 __attribute__((address(0xE0)));


extern volatile __bit T2OUTPS1 __attribute__((address(0xE1)));


extern volatile __bit T2OUTPS2 __attribute__((address(0xE2)));


extern volatile __bit T2OUTPS3 __attribute__((address(0xE3)));


extern volatile __bit T2PPS0 __attribute__((address(0x70C0)));


extern volatile __bit T2PPS1 __attribute__((address(0x70C1)));


extern volatile __bit T2PPS2 __attribute__((address(0x70C2)));


extern volatile __bit T2PPS3 __attribute__((address(0x70C3)));


extern volatile __bit T2PPS4 __attribute__((address(0x70C4)));


extern volatile __bit T2PSYNC __attribute__((address(0xEF)));


extern volatile __bit T2RSEL0 __attribute__((address(0xF8)));


extern volatile __bit T2RSEL1 __attribute__((address(0xF9)));


extern volatile __bit T2RSEL2 __attribute__((address(0xFA)));


extern volatile __bit T2RSEL3 __attribute__((address(0xFB)));


extern volatile __bit T3CKIPPS0 __attribute__((address(0x70C8)));


extern volatile __bit T3CKIPPS1 __attribute__((address(0x70C9)));


extern volatile __bit T3CKIPPS2 __attribute__((address(0x70CA)));


extern volatile __bit T3CKIPPS3 __attribute__((address(0x70CB)));


extern volatile __bit T3CKIPPS4 __attribute__((address(0x70CC)));


extern volatile __bit T3CKPS0 __attribute__((address(0x24AC)));


extern volatile __bit T3CKPS1 __attribute__((address(0x24AD)));


extern volatile __bit T3GGO_nDONE __attribute__((address(0x24B3)));


extern volatile __bit T3GPOL __attribute__((address(0x24B6)));


extern volatile __bit T3GPPS0 __attribute__((address(0x70D0)));


extern volatile __bit T3GPPS1 __attribute__((address(0x70D1)));


extern volatile __bit T3GPPS2 __attribute__((address(0x70D2)));


extern volatile __bit T3GPPS3 __attribute__((address(0x70D3)));


extern volatile __bit T3GPPS4 __attribute__((address(0x70D4)));


extern volatile __bit T3GSPM __attribute__((address(0x24B4)));


extern volatile __bit T3GSS0 __attribute__((address(0x24B0)));


extern volatile __bit T3GSS1 __attribute__((address(0x24B1)));


extern volatile __bit T3GTM __attribute__((address(0x24B5)));


extern volatile __bit T3GVAL __attribute__((address(0x24B2)));


extern volatile __bit T3SYNC __attribute__((address(0x24AA)));


extern volatile __bit T4CKIPPS0 __attribute__((address(0x70D8)));


extern volatile __bit T4CKIPPS1 __attribute__((address(0x70D9)));


extern volatile __bit T4CKIPPS2 __attribute__((address(0x70DA)));


extern volatile __bit T4CKIPPS3 __attribute__((address(0x70DB)));


extern volatile __bit T4CKIPPS4 __attribute__((address(0x70DC)));


extern volatile __bit T4CKPOL __attribute__((address(0x20B6)));


extern volatile __bit T4CKPS0 __attribute__((address(0x20AC)));


extern volatile __bit T4CKPS1 __attribute__((address(0x20AD)));


extern volatile __bit T4CKPS2 __attribute__((address(0x20AE)));


extern volatile __bit T4CKSYNC __attribute__((address(0x20B5)));


extern volatile __bit T4CS0 __attribute__((address(0x20B8)));


extern volatile __bit T4CS1 __attribute__((address(0x20B9)));


extern volatile __bit T4CS2 __attribute__((address(0x20BA)));


extern volatile __bit T4CS3 __attribute__((address(0x20BB)));


extern volatile __bit T4MODE0 __attribute__((address(0x20B0)));


extern volatile __bit T4MODE1 __attribute__((address(0x20B1)));


extern volatile __bit T4MODE2 __attribute__((address(0x20B2)));


extern volatile __bit T4MODE3 __attribute__((address(0x20B3)));


extern volatile __bit T4MODE4 __attribute__((address(0x20B4)));


extern volatile __bit T4ON __attribute__((address(0x20AF)));


extern volatile __bit T4OUTPS0 __attribute__((address(0x20A8)));


extern volatile __bit T4OUTPS1 __attribute__((address(0x20A9)));


extern volatile __bit T4OUTPS2 __attribute__((address(0x20AA)));


extern volatile __bit T4OUTPS3 __attribute__((address(0x20AB)));


extern volatile __bit T4PPS0 __attribute__((address(0x70D8)));


extern volatile __bit T4PPS1 __attribute__((address(0x70D9)));


extern volatile __bit T4PPS2 __attribute__((address(0x70DA)));


extern volatile __bit T4PPS3 __attribute__((address(0x70DB)));


extern volatile __bit T4PPS4 __attribute__((address(0x70DC)));


extern volatile __bit T4PSYNC __attribute__((address(0x20B7)));


extern volatile __bit T4RSEL0 __attribute__((address(0x20C0)));


extern volatile __bit T4RSEL1 __attribute__((address(0x20C1)));


extern volatile __bit T4RSEL2 __attribute__((address(0x20C2)));


extern volatile __bit T4RSEL3 __attribute__((address(0x20C3)));


extern volatile __bit T5CKIPPS0 __attribute__((address(0x70E0)));


extern volatile __bit T5CKIPPS1 __attribute__((address(0x70E1)));


extern volatile __bit T5CKIPPS2 __attribute__((address(0x70E2)));


extern volatile __bit T5CKIPPS3 __attribute__((address(0x70E3)));


extern volatile __bit T5CKIPPS4 __attribute__((address(0x70E4)));


extern volatile __bit T5CKPS0 __attribute__((address(0x24E4)));


extern volatile __bit T5CKPS1 __attribute__((address(0x24E5)));


extern volatile __bit T5GGO_nDONE __attribute__((address(0x24EB)));


extern volatile __bit T5GPOL __attribute__((address(0x24EE)));


extern volatile __bit T5GPPS0 __attribute__((address(0x70E8)));


extern volatile __bit T5GPPS1 __attribute__((address(0x70E9)));


extern volatile __bit T5GPPS2 __attribute__((address(0x70EA)));


extern volatile __bit T5GPPS3 __attribute__((address(0x70EB)));


extern volatile __bit T5GPPS4 __attribute__((address(0x70EC)));


extern volatile __bit T5GSPM __attribute__((address(0x24EC)));


extern volatile __bit T5GSS0 __attribute__((address(0x24E8)));


extern volatile __bit T5GSS1 __attribute__((address(0x24E9)));


extern volatile __bit T5GTM __attribute__((address(0x24ED)));


extern volatile __bit T5GVAL __attribute__((address(0x24EA)));


extern volatile __bit T5SYNC __attribute__((address(0x24E2)));


extern volatile __bit T6CKIPPS0 __attribute__((address(0x70F0)));


extern volatile __bit T6CKIPPS1 __attribute__((address(0x70F1)));


extern volatile __bit T6CKIPPS2 __attribute__((address(0x70F2)));


extern volatile __bit T6CKIPPS3 __attribute__((address(0x70F3)));


extern volatile __bit T6CKIPPS4 __attribute__((address(0x70F4)));


extern volatile __bit T6CKPOL __attribute__((address(0x20EE)));


extern volatile __bit T6CKPS0 __attribute__((address(0x20E4)));


extern volatile __bit T6CKPS1 __attribute__((address(0x20E5)));


extern volatile __bit T6CKPS2 __attribute__((address(0x20E6)));


extern volatile __bit T6CKSYNC __attribute__((address(0x20ED)));


extern volatile __bit T6CS0 __attribute__((address(0x20F0)));


extern volatile __bit T6CS1 __attribute__((address(0x20F1)));


extern volatile __bit T6CS2 __attribute__((address(0x20F2)));


extern volatile __bit T6CS3 __attribute__((address(0x20F3)));


extern volatile __bit T6MODE0 __attribute__((address(0x20E8)));


extern volatile __bit T6MODE1 __attribute__((address(0x20E9)));


extern volatile __bit T6MODE2 __attribute__((address(0x20EA)));


extern volatile __bit T6MODE3 __attribute__((address(0x20EB)));


extern volatile __bit T6MODE4 __attribute__((address(0x20EC)));


extern volatile __bit T6ON __attribute__((address(0x20E7)));


extern volatile __bit T6OUTPS0 __attribute__((address(0x20E0)));


extern volatile __bit T6OUTPS1 __attribute__((address(0x20E1)));


extern volatile __bit T6OUTPS2 __attribute__((address(0x20E2)));


extern volatile __bit T6OUTPS3 __attribute__((address(0x20E3)));


extern volatile __bit T6PPS0 __attribute__((address(0x70F0)));


extern volatile __bit T6PPS1 __attribute__((address(0x70F1)));


extern volatile __bit T6PPS2 __attribute__((address(0x70F2)));


extern volatile __bit T6PPS3 __attribute__((address(0x70F3)));


extern volatile __bit T6PPS4 __attribute__((address(0x70F4)));


extern volatile __bit T6PSYNC __attribute__((address(0x20EF)));


extern volatile __bit T6RSEL0 __attribute__((address(0x20F8)));


extern volatile __bit T6RSEL1 __attribute__((address(0x20F9)));


extern volatile __bit T6RSEL2 __attribute__((address(0x20FA)));


extern volatile __bit T6RSEL3 __attribute__((address(0x20FB)));


extern volatile __bit TMR0CS __attribute__((address(0x4AD)));


extern volatile __bit TMR0IE __attribute__((address(0x5D)));


extern volatile __bit TMR0IF __attribute__((address(0x5A)));


extern volatile __bit TMR0SE __attribute__((address(0x4AC)));


extern volatile __bit TMR1CS0 __attribute__((address(0xC6)));


extern volatile __bit TMR1CS1 __attribute__((address(0xC7)));


extern volatile __bit TMR1GE __attribute__((address(0xCF)));


extern volatile __bit TMR1GIE __attribute__((address(0x487)));


extern volatile __bit TMR1GIF __attribute__((address(0x87)));


extern volatile __bit TMR1IE __attribute__((address(0x480)));


extern volatile __bit TMR1IF __attribute__((address(0x80)));


extern volatile __bit TMR1ON __attribute__((address(0xC0)));


extern volatile __bit TMR2AS __attribute__((address(0x34A4)));


extern volatile __bit TMR2IE __attribute__((address(0x481)));


extern volatile __bit TMR2IF __attribute__((address(0x81)));


extern volatile __bit TMR2ON __attribute__((address(0xE7)));


extern volatile __bit TMR3CS0 __attribute__((address(0x24AE)));


extern volatile __bit TMR3CS1 __attribute__((address(0x24AF)));


extern volatile __bit TMR3GE __attribute__((address(0x24B7)));


extern volatile __bit TMR3GIE __attribute__((address(0x4A7)));


extern volatile __bit TMR3GIF __attribute__((address(0xA7)));


extern volatile __bit TMR3IE __attribute__((address(0x4A6)));


extern volatile __bit TMR3IF __attribute__((address(0xA6)));


extern volatile __bit TMR3ON __attribute__((address(0x24A8)));


extern volatile __bit TMR4AS __attribute__((address(0x34A5)));


extern volatile __bit TMR4IE __attribute__((address(0x489)));


extern volatile __bit TMR4IF __attribute__((address(0x89)));


extern volatile __bit TMR4ON __attribute__((address(0x20AF)));


extern volatile __bit TMR5CS0 __attribute__((address(0x24E6)));


extern volatile __bit TMR5CS1 __attribute__((address(0x24E7)));


extern volatile __bit TMR5GE __attribute__((address(0x24EF)));


extern volatile __bit TMR5GIE __attribute__((address(0x4A5)));


extern volatile __bit TMR5GIF __attribute__((address(0xA5)));


extern volatile __bit TMR5IE __attribute__((address(0x4A4)));


extern volatile __bit TMR5IF __attribute__((address(0xA4)));


extern volatile __bit TMR5ON __attribute__((address(0x24E0)));


extern volatile __bit TMR6AS __attribute__((address(0x34A6)));


extern volatile __bit TMR6IE __attribute__((address(0x48A)));


extern volatile __bit TMR6IF __attribute__((address(0x8A)));


extern volatile __bit TMR6ON __attribute__((address(0x20E7)));


extern volatile __bit TRIGSEL0 __attribute__((address(0x4FB)));


extern volatile __bit TRIGSEL1 __attribute__((address(0x4FC)));


extern volatile __bit TRIGSEL2 __attribute__((address(0x4FD)));


extern volatile __bit TRIGSEL3 __attribute__((address(0x4FE)));


extern volatile __bit TRIGSEL4 __attribute__((address(0x4FF)));


extern volatile __bit TRISA0 __attribute__((address(0x460)));


extern volatile __bit TRISA1 __attribute__((address(0x461)));


extern volatile __bit TRISA2 __attribute__((address(0x462)));


extern volatile __bit TRISA3 __attribute__((address(0x463)));


extern volatile __bit TRISA4 __attribute__((address(0x464)));


extern volatile __bit TRISA5 __attribute__((address(0x465)));


extern volatile __bit TRISB4 __attribute__((address(0x46C)));


extern volatile __bit TRISB5 __attribute__((address(0x46D)));


extern volatile __bit TRISB6 __attribute__((address(0x46E)));


extern volatile __bit TRISB7 __attribute__((address(0x46F)));


extern volatile __bit TRISC0 __attribute__((address(0x470)));


extern volatile __bit TRISC1 __attribute__((address(0x471)));


extern volatile __bit TRISC2 __attribute__((address(0x472)));


extern volatile __bit TRISC3 __attribute__((address(0x473)));


extern volatile __bit TRISC4 __attribute__((address(0x474)));


extern volatile __bit TRISC5 __attribute__((address(0x475)));


extern volatile __bit TRISC6 __attribute__((address(0x476)));


extern volatile __bit TRISC7 __attribute__((address(0x477)));


extern volatile __bit TRMT __attribute__((address(0xCF1)));


extern volatile __bit TSEL0 __attribute__((address(0x38E8)));


extern volatile __bit TSEL1 __attribute__((address(0x38E9)));


extern volatile __bit TSEL2 __attribute__((address(0x38EA)));


extern volatile __bit TSEL3 __attribute__((address(0x38EB)));


extern volatile __bit TSEN __attribute__((address(0x8BD)));


extern volatile __bit TSRNG __attribute__((address(0x8BC)));


extern volatile __bit TUN0 __attribute__((address(0x4C0)));


extern volatile __bit TUN1 __attribute__((address(0x4C1)));


extern volatile __bit TUN2 __attribute__((address(0x4C2)));


extern volatile __bit TUN3 __attribute__((address(0x4C3)));


extern volatile __bit TUN4 __attribute__((address(0x4C4)));


extern volatile __bit TUN5 __attribute__((address(0x4C5)));


extern volatile __bit TX9 __attribute__((address(0xCF6)));


extern volatile __bit TX9D __attribute__((address(0xCF0)));


extern volatile __bit TXEN __attribute__((address(0xCF5)));


extern volatile __bit TXIE __attribute__((address(0x484)));


extern volatile __bit TXIF __attribute__((address(0x84)));


extern volatile __bit UA __attribute__((address(0x10A1)));


extern volatile __bit VALID __attribute__((address(0x40A8)));


extern volatile __bit VREGPM0 __attribute__((address(0xCB8)));


extern volatile __bit VREGPM1 __attribute__((address(0xCB9)));


extern volatile __bit WCOL __attribute__((address(0x10AF)));


extern volatile __bit WDTCS0 __attribute__((address(0x3894)));


extern volatile __bit WDTCS1 __attribute__((address(0x3895)));


extern volatile __bit WDTCS2 __attribute__((address(0x3896)));


extern volatile __bit WDTPS0 __attribute__((address(0x3889)));


extern volatile __bit WDTPS1 __attribute__((address(0x388A)));


extern volatile __bit WDTPS2 __attribute__((address(0x388B)));


extern volatile __bit WDTPS3 __attribute__((address(0x388C)));


extern volatile __bit WDTPS4 __attribute__((address(0x388D)));


extern volatile __bit WDTPSCNT0 __attribute__((address(0x3898)));


extern volatile __bit WDTPSCNT1 __attribute__((address(0x3899)));


extern volatile __bit WDTPSCNT10 __attribute__((address(0x38A2)));


extern volatile __bit WDTPSCNT11 __attribute__((address(0x38A3)));


extern volatile __bit WDTPSCNT12 __attribute__((address(0x38A4)));


extern volatile __bit WDTPSCNT13 __attribute__((address(0x38A5)));


extern volatile __bit WDTPSCNT14 __attribute__((address(0x38A6)));


extern volatile __bit WDTPSCNT15 __attribute__((address(0x38A7)));


extern volatile __bit WDTPSCNT16 __attribute__((address(0x38A8)));


extern volatile __bit WDTPSCNT17 __attribute__((address(0x38A9)));


extern volatile __bit WDTPSCNT2 __attribute__((address(0x389A)));


extern volatile __bit WDTPSCNT3 __attribute__((address(0x389B)));


extern volatile __bit WDTPSCNT4 __attribute__((address(0x389C)));


extern volatile __bit WDTPSCNT5 __attribute__((address(0x389D)));


extern volatile __bit WDTPSCNT6 __attribute__((address(0x389E)));


extern volatile __bit WDTPSCNT7 __attribute__((address(0x389F)));


extern volatile __bit WDTPSCNT8 __attribute__((address(0x38A0)));


extern volatile __bit WDTPSCNT9 __attribute__((address(0x38A1)));


extern volatile __bit WDTSEN __attribute__((address(0x3888)));


extern volatile __bit WDTSTATE __attribute__((address(0x38AA)));


extern volatile __bit WDTTMR0 __attribute__((address(0x38AB)));


extern volatile __bit WDTTMR1 __attribute__((address(0x38AC)));


extern volatile __bit WDTTMR2 __attribute__((address(0x38AD)));


extern volatile __bit WDTTMR3 __attribute__((address(0x38AE)));


extern volatile __bit WDTTMR4 __attribute__((address(0x38AF)));


extern volatile __bit WDTWINDOW0 __attribute__((address(0x3890)));


extern volatile __bit WDTWINDOW1 __attribute__((address(0x3891)));


extern volatile __bit WDTWINDOW2 __attribute__((address(0x3892)));


extern volatile __bit WINDOW0 __attribute__((address(0x3890)));


extern volatile __bit WINDOW1 __attribute__((address(0x3891)));


extern volatile __bit WINDOW2 __attribute__((address(0x3892)));


extern volatile __bit WPUA0 __attribute__((address(0x1060)));


extern volatile __bit WPUA1 __attribute__((address(0x1061)));


extern volatile __bit WPUA2 __attribute__((address(0x1062)));


extern volatile __bit WPUA3 __attribute__((address(0x1063)));


extern volatile __bit WPUA4 __attribute__((address(0x1064)));


extern volatile __bit WPUA5 __attribute__((address(0x1065)));


extern volatile __bit WPUB4 __attribute__((address(0x106C)));


extern volatile __bit WPUB5 __attribute__((address(0x106D)));


extern volatile __bit WPUB6 __attribute__((address(0x106E)));


extern volatile __bit WPUB7 __attribute__((address(0x106F)));


extern volatile __bit WPUC0 __attribute__((address(0x1070)));


extern volatile __bit WPUC1 __attribute__((address(0x1071)));


extern volatile __bit WPUC2 __attribute__((address(0x1072)));


extern volatile __bit WPUC3 __attribute__((address(0x1073)));


extern volatile __bit WPUC4 __attribute__((address(0x1074)));


extern volatile __bit WPUC5 __attribute__((address(0x1075)));


extern volatile __bit WPUC6 __attribute__((address(0x1076)));


extern volatile __bit WPUC7 __attribute__((address(0x1077)));


extern volatile __bit WR __attribute__((address(0xCA9)));


extern volatile __bit WREN __attribute__((address(0xCAA)));


extern volatile __bit WRERR __attribute__((address(0xCAB)));


extern volatile __bit WUE __attribute__((address(0xCF9)));


extern volatile __bit XOR1 __attribute__((address(0x3CB9)));


extern volatile __bit XOR10 __attribute__((address(0x3CC2)));


extern volatile __bit XOR11 __attribute__((address(0x3CC3)));


extern volatile __bit XOR12 __attribute__((address(0x3CC4)));


extern volatile __bit XOR13 __attribute__((address(0x3CC5)));


extern volatile __bit XOR14 __attribute__((address(0x3CC6)));


extern volatile __bit XOR15 __attribute__((address(0x3CC7)));


extern volatile __bit XOR2 __attribute__((address(0x3CBA)));


extern volatile __bit XOR3 __attribute__((address(0x3CBB)));


extern volatile __bit XOR4 __attribute__((address(0x3CBC)));


extern volatile __bit XOR5 __attribute__((address(0x3CBD)));


extern volatile __bit XOR6 __attribute__((address(0x3CBE)));


extern volatile __bit XOR7 __attribute__((address(0x3CBF)));


extern volatile __bit XOR8 __attribute__((address(0x3CC0)));


extern volatile __bit XOR9 __attribute__((address(0x3CC1)));


extern volatile __bit Z10 __attribute__((address(0x2CD8)));


extern volatile __bit Z11 __attribute__((address(0x2CD9)));


extern volatile __bit Z110 __attribute__((address(0x2CE2)));


extern volatile __bit Z111 __attribute__((address(0x2CE3)));


extern volatile __bit Z112 __attribute__((address(0x2CE4)));


extern volatile __bit Z113 __attribute__((address(0x2CE5)));


extern volatile __bit Z114 __attribute__((address(0x2CE6)));


extern volatile __bit Z115 __attribute__((address(0x2CE7)));


extern volatile __bit Z116 __attribute__((address(0x2CE8)));


extern volatile __bit Z12 __attribute__((address(0x2CDA)));


extern volatile __bit Z13 __attribute__((address(0x2CDB)));


extern volatile __bit Z14 __attribute__((address(0x2CDC)));


extern volatile __bit Z15 __attribute__((address(0x2CDD)));


extern volatile __bit Z16 __attribute__((address(0x2CDE)));


extern volatile __bit Z17 __attribute__((address(0x2CDF)));


extern volatile __bit Z18 __attribute__((address(0x2CE0)));


extern volatile __bit Z19 __attribute__((address(0x2CE1)));


extern volatile __bit Z20 __attribute__((address(0x3060)));


extern volatile __bit Z21 __attribute__((address(0x3061)));


extern volatile __bit Z210 __attribute__((address(0x306A)));


extern volatile __bit Z211 __attribute__((address(0x306B)));


extern volatile __bit Z212 __attribute__((address(0x306C)));


extern volatile __bit Z213 __attribute__((address(0x306D)));


extern volatile __bit Z214 __attribute__((address(0x306E)));


extern volatile __bit Z215 __attribute__((address(0x306F)));


extern volatile __bit Z216 __attribute__((address(0x3070)));


extern volatile __bit Z22 __attribute__((address(0x3062)));


extern volatile __bit Z23 __attribute__((address(0x3063)));


extern volatile __bit Z24 __attribute__((address(0x3064)));


extern volatile __bit Z25 __attribute__((address(0x3065)));


extern volatile __bit Z26 __attribute__((address(0x3066)));


extern volatile __bit Z27 __attribute__((address(0x3067)));


extern volatile __bit Z28 __attribute__((address(0x3068)));


extern volatile __bit Z29 __attribute__((address(0x3069)));


extern volatile __bit ZCD1EN __attribute__((address(0x8E7)));


extern volatile __bit ZCD1INTN __attribute__((address(0x8E0)));


extern volatile __bit ZCD1INTP __attribute__((address(0x8E1)));


extern volatile __bit ZCD1OUT __attribute__((address(0x8E5)));


extern volatile __bit ZCD1POL __attribute__((address(0x8E4)));


extern volatile __bit ZCDIE __attribute__((address(0x494)));


extern volatile __bit ZCDIF __attribute__((address(0x94)));


extern volatile __bit ZERO __attribute__((address(0x1A)));


extern volatile __bit Z_SHAD __attribute__((address(0x7F22)));


extern volatile __bit nBOR __attribute__((address(0x4B0)));


extern volatile __bit nPD __attribute__((address(0x1B)));


extern volatile __bit nPOR __attribute__((address(0x4B1)));


extern volatile __bit nRI __attribute__((address(0x4B2)));


extern volatile __bit nRMCLR __attribute__((address(0x4B3)));


extern volatile __bit nRWDT __attribute__((address(0x4B4)));


extern volatile __bit nT1SYNC __attribute__((address(0xC2)));


extern volatile __bit nTO __attribute__((address(0x1C)));


extern volatile __bit nWDTWV __attribute__((address(0x4B5)));


extern volatile __bit nWPUEN __attribute__((address(0x4AF)));
# 230 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/pic_chip_select.h" 2 3
# 14 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/pic.h" 2 3
# 76 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/pic.h" 3
__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);



# 1 "/opt/microchip/xc8/v2.45/pic/include/eeprom_routines.h" 1 3
# 84 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/pic.h" 2 3
# 118 "/opt/microchip/mplabx/v6.15/packs/Microchip/PIC12-16F1xxx_DFP/1.6.241/xc8/pic/include/pic.h" 3
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
# 29 "/opt/microchip/xc8/v2.45/pic/include/xc.h" 2 3
# 48 "mcc_generated_files/mcc.h" 2

# 1 "mcc_generated_files/pin_manager.h" 1
# 163 "mcc_generated_files/pin_manager.h"
void PIN_MANAGER_Initialize (void);
# 175 "mcc_generated_files/pin_manager.h"
void PIN_MANAGER_IOC(void);
# 49 "mcc_generated_files/mcc.h" 2


# 1 "/opt/microchip/xc8/v2.45/pic/include/c99/stdbool.h" 1 3
# 51 "mcc_generated_files/mcc.h" 2
# 67 "mcc_generated_files/mcc.h"
void SYSTEM_Initialize(void);
# 80 "mcc_generated_files/mcc.h"
void OSCILLATOR_Initialize(void);
# 74 "mcc_generated_files/mcc.c" 2


void SYSTEM_Initialize(void)
{

    PIN_MANAGER_Initialize();
    OSCILLATOR_Initialize();
}

void OSCILLATOR_Initialize(void)
{

    OSCCON = 0x38;

    OSCTUNE = 0x00;
}
