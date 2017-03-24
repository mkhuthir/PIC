// EMC1001 Library
#include "mcc_generated_files/mcc.h"
#include "EMC1001.h"

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
    int8_t  temp;
    uint8_t templo;

    puts("Microchip EMC1001 Temperature Sensor Demo\n");
   
    if (EMC1001_Read(Reg_Prd_ID,&data)) printf("Product ID:\t\tEMC1001%s\n", data ? "-1" : "");
    if (EMC1001_Read(Reg_Mnf_ID,&data)) printf("Manufacturer ID:\t0x%X\n", data);
    if (EMC1001_Read(Reg_Rev_No,&data)) printf("Revision :\t\t%d\n", data);

    puts("\n");

    if (EMC1001_Read(Reg_Cnv_Rate, &data)) printf("Conversion rate:\t%x\n", data);

    if (EMC1001_Read(Reg_THL_HB, (uint8_t*)&temp)) {    // get msb
        EMC1001_Read(Reg_THL_LB, &templo);              // get lsb 
        templo = templo >> 6;                           // only 2 msb bits used 0.25C increments
        if (temp < 0) templo = 3-templo;                // complement to 1 if temp is negative
        printf("Temperature high limit:\t%d.%d C\n", temp, templo*25);
    }

    if (EMC1001_Read(Reg_TLL_HB, (uint8_t*)&temp)) {    // get msb
        EMC1001_Read(Reg_TLL_LB, &templo);              // get lsb 
        templo = templo >> 6;                           // only 2 msb bits used 0.25C increments
        if (temp < 0) templo = 3-templo;                // complement to 1 if temp is negative
        printf("Temperature low limit:\t%d.%d C\n", temp, templo*25);
    }


    if (EMC1001_Read(Reg_THM_LMT, &data)) printf("Thermal limit:\t\t%d C\n", data);
    if (EMC1001_Read(Reg_THM_HYS, &data)) printf("Thermal hysteresis:\t%d C\n", data);
   
    puts("\n");
}

//Prints current temprture value read from EMC1001
void EMC1001_PrintTemp(void)
{
    int8_t  temp;
    uint8_t templo;

    if (EMC1001_Read(Reg_TMP_HB, (uint8_t*)&temp)) {    // get msb
        EMC1001_Read(Reg_TMP_LB, &templo);              // get lsb 
        templo = templo >> 6;                           // only 2 msb bits used 0.25C increments
        if (temp < 0) templo = 3-templo;                // complement to 1 if temp is negative
        printf("Current Temperature:\t%d.%d C\n", temp, templo*25);
    }

}
