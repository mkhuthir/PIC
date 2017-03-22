
#include "mcc_generated_files/mcc.h"

// EMC1001 Address
#define EMC1001_ADDRESS     0x38   // slave device address

// EMC1001 registers
#define Reg_TMP_HB      0x00    // temperature value high byte 
#define Reg_STATUS      0x01    // Status    
#define Reg_TMP_LB      0x02    // low byte containing 1/4 deg fraction
#define Reg_Config      0x03    // Configuration
#define Reg_Cnv_Rate    0x04    // Conversion Rate 
#define Reg_THL_HB      0x05    // Temperature High Limit High Byte
#define Reg_THL_LB      0x06    // Temperature High Limit Low Byte
#define Reg_TLL_HB      0x07    // Temperature Low Limit High Byte
#define Reg_TLL_LB      0x08    // Temperature Low Limit Low Byte
#define Reg_One_Sht     0x0f    // One-Shot
#define Reg_THM_LMT     0x20    // THERM Limit
#define Reg_THM_HYS     0x21    // THERM Hysteresis
#define Reg_SMB_TO      0x22    // SMBus Timeout Enable
#define Reg_Prd_ID      0xfd    // Product ID Register
#define Reg_Mnf_ID      0xfe    // Manufacture ID
#define Reg_Rev_No      0xff    // Revision Number

//Reads 1 byte from EMC1001 using SMBus protocol
uint8_t EMC1001_Read(uint8_t reg, uint8_t *pData)
{
    I2C2_MESSAGE_STATUS status = I2C2_MESSAGE_PENDING;
    static I2C2_TRANSACTION_REQUEST_BLOCK trb[2];
    
    I2C2_MasterWriteTRBBuild(&trb[0], &reg, 1, EMC1001_ADDRESS);
    I2C2_MasterReadTRBBuild(&trb[1], pData, 1, EMC1001_ADDRESS);                
    I2C2_MasterTRBInsert(2, &trb[0], &status);
    
    while(status == I2C2_MESSAGE_PENDING);      // blocking

    return (status == I2C2_MESSAGE_COMPLETE); 
} 

//Prints EMC1001 information read from its registers
void EMC1001_PrintInfo(void)
{
    uint8_t data;

    puts("Microchip EMC1001 Temperature Sensor Demo\n");
    if (EMC1001_Read(Reg_Prd_ID,&data)) printf("Product ID: EMC1001%s\n", data ? "-1" : "");
    if (EMC1001_Read(Reg_Mnf_ID,&data)) printf("Manufacturer ID: 0x%X\n", data);
    if (EMC1001_Read(Reg_Rev_No,&data)) printf("Revision : %d\n", data);
    if (EMC1001_Read(Reg_Cnv_Rate, &data)) printf("The Conversion rate is: %x\n", data);
    if (EMC1001_Read(Reg_THL_HB, &data)) printf("The high limit is: %d C\n", data);
    if (EMC1001_Read(Reg_TLL_HB, &data)) printf("The low limit is: %d C\n", data);
    puts("\n");
}

//Prints current temprture value read from EMC1001
void EMC1001_PrintTemp(void)
{
    int8_t  temp;
    uint8_t templo;

    if (EMC1001_Read(Reg_TMP_HB, (uint8_t*)&temp)) {    // get msb
        EMC1001_Read(Reg_TMP_LB, &templo);              // get lsb 
        templo = templo >> 6;                           // only 3 msb bits used 0.25C increments
        if (temp < 0) templo = 3-templo;                // complement to 1 if temp is negative
        printf("\nThe temperature is: %d.%d C\n", temp, templo*25);
    }

}

//Main code
void main(void)
{

    SYSTEM_Initialize();
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();
        
    while (1)
    {
        printf("\x0C");   // comment out if terminal does not support Form Feed
        EMC1001_PrintInfo();
        EMC1001_PrintTemp();
        __delay_ms(1000);
    }
}
