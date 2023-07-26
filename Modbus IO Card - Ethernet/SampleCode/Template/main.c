/**************************************************************************//**
 * @file     main.c
 * @version  V3.00
 * $Revision: 1 $
 * $Date: 14/10/01 10:35a $
 * @brief    NUC029 Series Timer Driver Sample Code
 *
 * @note
 * Copyright (C) 2013 Nuvoton Technology Corp. All rights reserved.
 ******************************************************************************/
#include <stdio.h>
#include "NUC029xAN.h"

#define PLLCON_SETTING      CLK_PLLCON_50MHz_HIRC
#define PLL_CLOCK           50000000

//# if defined ( __GNUC__ )
//#define RXBUFSIZE 128
//#else
#define RXBUFSIZE 1024
//#endif

/*---------------------------------------------------------------------------------------------------------*/
/* Global variables                                                                                        */
/*---------------------------------------------------------------------------------------------------------*/
uint8_t g_u8RecData[RXBUFSIZE]  = {0};

volatile uint32_t g_u32comRbytes = 0;
volatile uint32_t g_u32comRhead  = 0;
volatile uint32_t g_u32comRtail  = 0;

volatile char totalRegsToRead = 20;//52;//64;
volatile char toatalDataBytesToReceived = 40;//104;//128;	// 2 * totalRegsToRead
volatile char responceSize = 43;//107;//131;	//	toatalBytesToReceived + 3

volatile char masterCommand[12] = {0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x01, 0x03, 0x00, 0x01, 0x00, 0x14};
//volatile char masterCommand[12] = {0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x01, 0x03, 0x00, 0x01, 0x00, 0x34};
//volatile char masterCommand[12] = {0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x01, 0x03, 0x00, 0x00, 0x00, 0x06};
volatile char responce[107];// = {0x01, 0x03, 0x0C, 0x00, 0x01, 0x00, 0x02, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x0A};
//volatile char responce[15] = {0x01, 0x03, 0x0C, 0x00, 0x01, 0x00, 0x02, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x0A};

volatile char First_Reg_L;
volatile char First_Reg_H;
volatile char Second_Reg_L;
volatile char Second_Reg_H;

volatile char port1Readings[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
volatile char port2Readings[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
volatile char port3Readings[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
volatile char port4Readings[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

volatile char port1States[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
volatile char port2States[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
volatile char port3States[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
volatile char port4States[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

volatile char boardID = 0;
volatile uint32_t i;
volatile uint32_t arrayIndex = 0;
volatile uint32_t dataReceiving = 0;
volatile uint32_t seconds = 0;

volatile uint32_t ticks = 0;

void delay(uint32_t count)
{
	for(i = 0; i < count; i++);
}

void setPort_1(char value)
{
	volatile char res = value & 0x01;
	port1Readings[0] = port1Readings[0] << 1;
	if(res != 0)
		port1Readings[0] = port1Readings[0] | 0x01;
	
	res = value & 0x02;
	port1Readings[1] = port1Readings[1] << 1;
	if(res != 0)
		port1Readings[1] = port1Readings[1] | 0x01;
	
	res = value & 0x04;
	port1Readings[2] = port1Readings[2] << 1;
	if(res != 0)
		port1Readings[2] = port1Readings[2] | 0x01;
	
	res = value & 0x08;
	port1Readings[3] = port1Readings[3] << 1;
	if(res != 0)
		port1Readings[3] = port1Readings[3] | 0x01;
	
	res = value & 0x10;
	port1Readings[4] = port1Readings[4] << 1;
	if(res != 0)
		port1Readings[4] = port1Readings[4] | 0x01;
		
	res = value & 0x20;
	port1Readings[5] = port1Readings[5] << 1;
	if(res != 0)
		port1Readings[5] = port1Readings[5] | 0x01;
	
	res = value & 0x40;
	port1Readings[6] = port1Readings[6] << 1;
	if(res != 0)
		port1Readings[6] = port1Readings[6] | 0x01;
	
	res = value & 0x80;
	port1Readings[7] = port1Readings[7] << 1;
	if(res != 0)
		port1Readings[7] = port1Readings[7] | 0x01;
}

void setPort_2(char value)
{
	volatile char res = value & 0x01;
	port2Readings[0] = port2Readings[0] << 1;
	if(res != 0)
		port2Readings[0] = port2Readings[0] | 0x01;
	
	res = value & 0x02;
	port2Readings[1] = port2Readings[1] << 1;
	if(res != 0)
		port2Readings[1] = port2Readings[1] | 0x01;
	
	res = value & 0x04;
	port2Readings[2] = port2Readings[2] << 1;
	if(res != 0)
		port2Readings[2] = port2Readings[2] | 0x01;
	
	res = value & 0x08;
	port2Readings[3] = port2Readings[3] << 1;
	if(res != 0)
		port2Readings[3] = port2Readings[3] | 0x01;
	
	res = value & 0x10;
	port2Readings[4] = port2Readings[4] << 1;
	if(res != 0)
		port2Readings[4] = port2Readings[4] | 0x01;
		
	res = value & 0x20;
	port2Readings[5] = port2Readings[5] << 1;
	if(res != 0)
		port2Readings[5] = port2Readings[5] | 0x01;
	
	res = value & 0x40;
	port2Readings[6] = port2Readings[6] << 1;
	if(res != 0)
		port2Readings[6] = port2Readings[6] | 0x01;
	
	res = value & 0x80;
	port2Readings[7] = port2Readings[7] << 1;
	if(res != 0)
		port2Readings[7] = port2Readings[7] | 0x01;
}

void setPort_3(char value)
{
	volatile char res = value & 0x01;
	port3Readings[0] = port3Readings[0] << 1;
	if(res != 0)
		port3Readings[0] = port3Readings[0] | 0x01;
	
	res = value & 0x02;
	port3Readings[1] = port3Readings[1] << 1;
	if(res != 0)
		port3Readings[1] = port3Readings[1] | 0x01;
	
	res = value & 0x04;
	port3Readings[2] = port3Readings[2] << 1;
	if(res != 0)
		port3Readings[2] = port3Readings[2] | 0x01;
	
	res = value & 0x08;
	port3Readings[3] = port3Readings[3] << 1;
	if(res != 0)
		port3Readings[3] = port3Readings[3] | 0x01;
	
	res = value & 0x10;
	port3Readings[4] = port3Readings[4] << 1;
	if(res != 0)
		port3Readings[4] = port3Readings[4] | 0x01;
		
	res = value & 0x20;
	port3Readings[5] = port3Readings[5] << 1;
	if(res != 0)
		port3Readings[5] = port3Readings[5] | 0x01;
	
	res = value & 0x40;
	port3Readings[6] = port3Readings[6] << 1;
	if(res != 0)
		port3Readings[6] = port3Readings[6] | 0x01;
	
	res = value & 0x80;
	port3Readings[7] = port3Readings[7] << 1;
	if(res != 0)
		port3Readings[7] = port3Readings[7] | 0x01;
}

void setPort_4(char value)
{
	volatile char res = value & 0x01;
	port4Readings[0] = port4Readings[0] << 1;
	if(res != 0)
		port4Readings[0] = port4Readings[0] | 0x01;
	
	res = value & 0x02;
	port4Readings[1] = port4Readings[1] << 1;
	if(res != 0)
		port4Readings[1] = port4Readings[1] | 0x01;
	
	res = value & 0x04;
	port4Readings[2] = port4Readings[2] << 1;
	if(res != 0)
		port4Readings[2] = port4Readings[2] | 0x01;
	
	res = value & 0x08;
	port4Readings[3] = port4Readings[3] << 1;
	if(res != 0)
		port4Readings[3] = port4Readings[3] | 0x01;
	
	res = value & 0x10;
	port4Readings[4] = port4Readings[4] << 1;
	if(res != 0)
		port4Readings[4] = port4Readings[4] | 0x01;
		
	res = value & 0x20;
	port4Readings[5] = port4Readings[5] << 1;
	if(res != 0)
		port4Readings[5] = port4Readings[5] | 0x01;
	
	res = value & 0x40;
	port4Readings[6] = port4Readings[6] << 1;
	if(res != 0)
		port4Readings[6] = port4Readings[6] | 0x01;
	
	res = value & 0x80;
	port4Readings[7] = port4Readings[7] << 1;
	if(res != 0)
		port4Readings[7] = port4Readings[7] | 0x01;
}

void changePort1States()
{
	port1Readings[0] = port1Readings[0] & 0x1F;
	if(port1Readings[0] == 0x1F)
		port1States[0] = 1;
	else if(port1Readings[0] == 0x00)
		port1States[0] = 0;
	else
		{
			port1States[0] = port1States[0] + 1;
			if(port1States[0] == 1)
				port1States[0] = 2;
			if(port1States[0] == 7)
				port1States[0] = 6;
		}
	
	port1Readings[1] = port1Readings[1] & 0x1F;
	if(port1Readings[1] == 0x1F)
		port1States[1] = 1;
	else if(port1Readings[1] == 0x00)
		port1States[1] = 0;
	else
		{
			port1States[1] = port1States[1] + 1;
			if(port1States[1] == 1)
				port1States[1] = 2;
			if(port1States[1] == 7)
				port1States[1] = 6;
		}
		
	port1Readings[2] = port1Readings[2] & 0x1F;
	if(port1Readings[2] == 0x1F)
		port1States[2] = 1;
	else if(port1Readings[2] == 0x00)
		port1States[2] = 0;
	else
		{
			port1States[2] = port1States[2] + 1;
			if(port1States[2] == 1)
				port1States[2] = 2;
			if(port1States[2] == 7)
				port1States[2] = 6;
		}
		
	port1Readings[3] = port1Readings[3] & 0x1F;
	if(port1Readings[3] == 0x1F)
		port1States[3] = 1;
	else if(port1Readings[3] == 0x00)
		port1States[3] = 0;
	else
		{
			port1States[3] = port1States[3] + 1;
			if(port1States[3] == 1)
				port1States[3] = 2;
			if(port1States[3] == 7)
				port1States[3] = 6;
		}
		
	port1Readings[4] = port1Readings[4] & 0x1F;
	if(port1Readings[4] == 0x1F)
		port1States[4] = 1;
	else if(port1Readings[4] == 0x00)
		port1States[4] = 0;
	else
		{
			port1States[4] = port1States[4] + 1;
			if(port1States[4] == 1)
				port1States[4] = 2;
			if(port1States[4] == 7)
				port1States[4] = 6;
		}
		
	port1Readings[5] = port1Readings[5] & 0x1F;
	if(port1Readings[5] == 0x1F)
		port1States[5] = 1;
	else if(port1Readings[5] == 0x00)
		port1States[5] = 0;
	else
		{
			port1States[5] = port1States[5] + 1;
			if(port1States[5] == 1)
				port1States[5] = 2;
			if(port1States[5] == 7)
				port1States[5] = 6;
		}
		
	port1Readings[6] = port1Readings[6] & 0x1F;
	if(port1Readings[6] == 0x1F)
		port1States[6] = 1;
	else if(port1Readings[6] == 0x00)
		port1States[6] = 0;
	else
		{
			port1States[6] = port1States[6] + 1;
			if(port1States[6] == 1)
				port1States[6] = 2;
			if(port1States[6] == 7)
				port1States[6] = 6;
		}
		
	port1Readings[7] = port1Readings[7] & 0x1F;
	if(port1Readings[7] == 0x1F)
		port1States[7] = 1;
	else if(port1Readings[7] == 0x00)
		port1States[7] = 0;
	else
		{
			port1States[7] = port1States[7] + 1;
			if(port1States[7] == 1)
				port1States[7] = 2;
			if(port1States[7] == 7)
				port1States[7] = 6;
		}
}

void changePort2States()
{
	port2Readings[0] = port2Readings[0] & 0x1F;
	if(port2Readings[0] == 0x1F)
		port2States[0] = 1;
	else if(port2Readings[0] == 0x00)
		port2States[0] = 0;
	else
		{
			port2States[0] = port2States[0] + 1;
			if(port2States[0] == 1)
				port2States[0] = 2;
			if(port2States[0] == 7)
				port2States[0] = 6;
		}
	
	port2Readings[1] = port2Readings[1] & 0x1F;
	if(port2Readings[1] == 0x1F)
		port2States[1] = 1;
	else if(port2Readings[1] == 0x00)
		port2States[1] = 0;
	else
		{
			port2States[1] = port2States[1] + 1;
			if(port2States[1] == 1)
				port2States[1] = 2;
			if(port2States[1] == 7)
				port2States[1] = 6;
		}
		
	port2Readings[2] = port2Readings[2] & 0x1F;
	if(port2Readings[2] == 0x1F)
		port2States[2] = 1;
	else if(port2Readings[2] == 0x00)
		port2States[2] = 0;
	else
		{
			port2States[2] = port2States[2] + 1;
			if(port2States[2] == 1)
				port2States[2] = 2;
			if(port2States[2] == 7)
				port2States[2] = 6;
		}
		
	port2Readings[3] = port2Readings[3] & 0x1F;
	if(port2Readings[3] == 0x1F)
		port2States[3] = 1;
	else if(port2Readings[3] == 0x00)
		port2States[3] = 0;
	else
		{
			port2States[3] = port2States[3] + 1;
			if(port2States[3] == 1)
				port2States[3] = 2;
			if(port2States[3] == 7)
				port2States[3] = 6;
		}
		
	port2Readings[4] = port2Readings[4] & 0x1F;
	if(port2Readings[4] == 0x1F)
		port2States[4] = 1;
	else if(port2Readings[4] == 0x00)
		port2States[4] = 0;
	else
		{
			port2States[4] = port2States[4] + 1;
			if(port2States[4] == 1)
				port2States[4] = 2;
			if(port2States[4]== 7)
				port2States[4] = 6;
		}
		
	port2Readings[5] = port2Readings[5] & 0x1F;
	if(port2Readings[5] == 0x1F)
		port2States[5] = 1;
	else if(port2Readings[5] == 0x00)
		port2States[5] = 0;
	else
		{
			port2States[5] = port2States[5] + 1;
			if(port2States[5] == 1)
				port2States[5] = 2;
			if(port2States[5] == 7)
				port2States[5] = 6;
		}
		
	port2Readings[6] = port2Readings[6] & 0x1F;
	if(port2Readings[6] == 0x1F)
		port2States[6] = 1;
	else if(port2Readings[6] == 0x00)
		port2States[6] = 0;
	else
		{
			port2States[6] = port2States[6] + 1;
			if(port2States[6] == 1)
				port2States[6] = 2;
			if(port2States[6] == 7)
				port2States[6] = 6;
		}
		
	port2Readings[7] = port2Readings[7] & 0x1F;
	if(port2Readings[7] == 0x1F)
		port2States[7] = 1;
	else if(port2Readings[7] == 0x00)
		port2States[7] = 0;
	else
		{
			port2States[7] = port2States[7] + 1;
			if(port2States[7] == 1)
				port2States[7] = 2;
			if(port2States[7] == 7)
				port2States[7] = 6;
		}
}

void changePort3States()
{
	port3Readings[0] = port3Readings[0] & 0x1F;
	if(port3Readings[0] == 0x1F)
		port3States[0] = 1;
	else if(port3Readings[0] == 0x00)
		port3States[0] = 0;
	else
		{
			port3States[0] = port3States[0] + 1;
			if(port3States[0] == 1)
				port3States[0] = 2;
			if(port3States[0] == 7)
				port3States[0] = 6;
		}
	
	port3Readings[1] = port3Readings[1] & 0x1F;
	if(port3Readings[1] == 0x1F)
		port3States[1] = 1;
	else if(port3Readings[1] == 0x00)
		port3States[1] = 0;
	else
		{
			port3States[1] = port3States[1] + 1;
			if(port3States[1] == 1)
				port3States[1] = 2;
			if(port3States[1] == 7)
				port3States[1] = 6;
		}
		
	port3Readings[2] = port3Readings[2] & 0x1F;
	if(port3Readings[2] == 0x1F)
		port3States[2] = 1;
	else if(port3Readings[2] == 0x00)
		port3States[2] = 0;
	else
		{
			port3States[2] = port3States[2] + 1;
			if(port3States[2] == 1)
				port3States[2] = 2;
			if(port3States[2] == 7)
				port3States[2] = 6;
		}
		
	port3Readings[3] = port3Readings[3] & 0x1F;
	if(port3Readings[3] == 0x1F)
		port3States[3] = 1;
	else if(port3Readings[3] == 0x00)
		port3States[3] = 0;
	else
		{
			port3States[3] = port3States[3] + 1;
			if(port3States[3] == 1)
				port3States[3] = 2;
			if(port3States[3] == 7)
				port3States[3] = 6;
		}
		
	port3Readings[4] = port3Readings[4] & 0x1F;
	if(port3Readings[4] == 0x1F)
		port3States[4] = 1;
	else if(port3Readings[4] == 0x00)
		port3States[4] = 0;
	else
		{
			port3States[4] = port3States[4] + 1;
			if(port3States[4] == 1)
				port3States[4] = 2;
			if(port3States[4] == 7)
				port3States[4] = 6;
		}
		
	port3Readings[5] = port3Readings[5] & 0x1F;
	if(port3Readings[5] == 0x1F)
		port3States[5] = 1;
	else if(port3Readings[5] == 0x00)
		port3States[5] = 0;
	else
		{
			port3States[5] = port3States[5] + 1;
			if(port3States[5] == 1)
				port3States[5] = 2;
			if(port3States[5] == 7)
				port3States[5] = 6;
		}
		
	port3Readings[6] = port3Readings[6] & 0x1F;
	if(port3Readings[6] == 0x1F)
		port3States[6] = 1;
	else if(port3Readings[6] == 0x00)
		port3States[6] = 0;
	else
		{
			port3States[6] = port3States[6] + 1;
			if(port3States[6] == 1)
				port3States[6] = 2;
			if(port3States[6] == 7)
				port3States[6] = 6;
		}
		
	port3Readings[7] = port3Readings[7] & 0x1F;
	if(port3Readings[7] == 0x1F)
		port3States[7] = 1;
	else if(port3Readings[7] == 0x00)
		port3States[7] = 0;
	else
		{
			port3States[7] = port3States[7] + 1;
			if(port3States[7] == 1)
				port3States[7] = 2;
			if(port3States[7] == 7)
				port3States[7] = 6;
		}
}

void changePort4States()
{
	port4Readings[0] = port4Readings[0] & 0x1F;
	if(port4Readings[0] == 0x1F)
		port4States[0] = 1;
	else if(port4Readings[0] == 0x00)
		port4States[0] = 0;
	else
		{
			port4States[0] = port4States[0] + 1;
			if(port4States[0] == 1)
				port4States[0] = 2;
			if(port4States[0] == 7)
				port4States[0] = 6;
		}
	
	port4Readings[1] = port4Readings[1] & 0x1F;
	if(port4Readings[1] == 0x1F)
		port4States[1] = 1;
	else if(port4Readings[1] == 0x00)
		port4States[1] = 0;
	else
		{
			port4States[1] = port4States[1] + 1;
			if(port4States[1] == 1)
				port4States[1] = 2;
			if(port4States[1] == 7)
				port4States[1] = 6;
		}
		
	port4Readings[2] = port4Readings[2] & 0x1F;
	if(port4Readings[2] == 0x1F)
		port4States[2] = 1;
	else if(port4Readings[2] == 0x00)
		port4States[2] = 0;
	else
		{
			port4States[2] = port4States[2] + 1;
			if(port4States[2] == 1)
				port4States[2] = 2;
			if(port4States[2] == 7)
				port4States[2] = 6;
		}
		
	port4Readings[3] = port4Readings[3] & 0x1F;
	if(port4Readings[3] == 0x1F)
		port4States[3] = 1;
	else if(port4Readings[3] == 0x00)
		port4States[3] = 0;
	else
		{
			port4States[3] = port4States[3] + 1;
			if(port4States[3] == 1)
				port4States[3] = 2;
			if(port4States[3] == 7)
				port4States[3] = 6;
		}
		
	port4Readings[4] = port4Readings[4] & 0x1F;
	if(port4Readings[4] == 0x1F)
		port4States[4] = 1;
	else if(port4Readings[4] == 0x00)
		port4States[4] = 0;
	else
		{
			port4States[4] = port4States[4] + 1;
			if(port4States[4] == 1)
				port4States[4] = 2;
			if(port4States[4] == 7)
				port4States[4] = 6;
		}
		
	port4Readings[5] = port4Readings[5] & 0x1F;
	if(port4Readings[5] == 0x1F)
		port4States[5] = 1;
	else if(port4Readings[5] == 0x00)
		port4States[5] = 0;
	else
		{
			port4States[5] = port4States[5] + 1;
			if(port4States[5] == 1)
				port4States[5] = 2;
			if(port4States[5] == 7)
				port4States[5] = 6;
		}
		
	port4Readings[6] = port4Readings[6] & 0x1F;
	if(port4Readings[6] == 0x1F)
		port4States[6] = 1;
	else if(port4Readings[6] == 0x00)
		port4States[6] = 0;
	else
		{
			port4States[6] = port4States[6] + 1;
			if(port4States[6] == 1)
				port4States[6] = 2;
			if(port4States[6] == 7)
				port4States[6] = 6;
		}
		
	port4Readings[7] = port4Readings[7] & 0x1F;
	if(port4Readings[7] == 0x1F)
		port4States[7] = 1;
	else if(port4Readings[7] == 0x00)
		port4States[7] = 0;
	else
		{
			port4States[7] = port4States[7] + 1;
			if(port4States[7] == 1)
				port4States[7] = 2;
			if(port4States[7] == 7)
				port4States[7] = 6;
		}
}

void changePort1()
{
	if(port1States[0] == 1)
		P10 = 1;
	else if(port1States[0] == 0)
		P10 = 0;
	else if(port1States[0] == 6)
		P10 = ~(P10);
	
	if(port1States[1] == 1)
		P11 = 1;
	else if(port1States[1] == 0)
		P11 = 0;
	else if(port1States[1] == 6)
		P11 = ~(P11);
	
	if(port1States[2] == 1)
		P12 = 1;
	else if(port1States[2] == 0)
		P12 = 0;
	else if(port1States[2] == 6)
		P12 = ~(P12);
	
	if(port1States[3] == 1)
		P13 = 1;
	else if(port1States[3] == 0)
		P13 = 0;
	else if(port1States[3] == 6)
		P13 = ~(P13);
	
	if(port1States[4] == 1)
		P14 = 1;
	else if(port1States[4] == 0)
		P14 = 0;
	else if(port1States[4] == 6)
		P14 = ~(P14);
	
	if(port1States[5] == 1)
		P15 = 1;
	else if(port1States[5] == 0)
		P15 = 0;
	else if(port1States[5] == 6)
		P15 = ~(P15);
	
	if(port1States[6] == 1)
		P16 = 1;
	else if(port1States[6] == 0)
		P16 = 0;
	else if(port1States[6] == 6)
		P16 = ~(P16);
	
	if(port1States[7] == 1)
		P17 = 1;
	else if(port1States[7] == 0)
		P17 = 0;
	else if(port1States[7] == 6)
		P17 = ~(P17);
}

void changePort2()
{
	if(port2States[0] == 1)
		P20 = 1;
	else if(port2States[0] == 0)
		P20 = 0;
	else if(port2States[0] == 6)
		P20 = ~(P20);
	
	if(port2States[1] == 1)
		P21 = 1;
	else if(port2States[1] == 0)
		P21 = 0;
	else if(port2States[1] == 6)
		P21 = ~(P21);
	
	if(port2States[2] == 1)
		P22 = 1;
	else if(port2States[2] == 0)
		P22 = 0;
	else if(port2States[2] == 6)
		P22 = ~(P22);
	
	if(port2States[3] == 1)
		P23 = 1;
	else if(port2States[3] == 0)
		P23 = 0;
	else if(port2States[3] == 6)
		P23 = ~(P23);
	
	if(port2States[4] == 1)
		P24 = 1;
	else if(port2States[4] == 0)
		P24 = 0;
	else if(port2States[4] == 6)
		P24 = ~(P24);
	
	if(port2States[5] == 1)
		P25 = 1;
	else if(port2States[5] == 0)
		P25 = 0;
	else if(port2States[5] == 6)
		P25 = ~(P25);
	
	if(port2States[6] == 1)
		P26 = 1;
	else if(port2States[6] == 0)
		P26 = 0;
	else if(port2States[6] == 6)
		P26 = ~(P26);
	
	if(port2States[7] == 1)
		P27 = 1;
	else if(port2States[7] == 0)
		P27 = 0;
	else if(port2States[7] == 6)
		P27 = ~(P27);
}

void changePort3()
{
	if(port3States[0] == 1)
		P30 = 1;
	else if(port3States[0] == 0)
		P30 = 0;
	else if(port3States[0] == 6)
		P30 = ~(P30);
	
	if(port3States[1] == 1)
		P31 = 1;
	else if(port3States[1] == 0)
		P31 = 0;
	else if(port3States[1] == 6)
		P31 = ~(P31);
	
	if(port3States[2] == 1)
		P32 = 1;
	else if(port3States[2] == 0)
		P32 = 0;
	else if(port3States[2] == 6)
		P32 = ~(P32);
	
	if(port3States[3] == 1)
		P33 = 1;
	else if(port3States[3] == 0)
		P33 = 0;
	else if(port3States[3] == 6)
		P33 = ~(P33);
	
	if(port3States[4] == 1)
		P34 = 1;
	else if(port3States[4] == 0)
		P34 = 0;
	else if(port3States[4] == 6)
		P34 = ~(P34);
	
	if(port3States[5] == 1)
		P35 = 1;
	else if(port3States[5] == 0)
		P35 = 0;
	else if(port3States[5] == 6)
		P35 = ~(P35);
	
	if(port3States[6] == 1)
		P36 = 1;
	else if(port3States[6] == 0)
		P36 = 0;
	else if(port3States[6] == 6)
		P36 = ~(P36);
	
	if(port3States[7] == 1)
		P37 = 1;
	else if(port3States[7] == 0)
		P37 = 0;
	else if(port3States[7] == 6)
		P37 = ~(P37);
}

void changePort4()
{
	if(port4States[0] == 1)
		P40 = 1;
	else if(port4States[0] == 0)
		P40 = 0;
	else if(port4States[0] == 6)
		P40 = ~(P40);
	
	if(port4States[1] == 1)
		P41 = 1;
	else if(port4States[1] == 0)
		P41 = 0;
	else if(port4States[1] == 6)
		P41 = ~(P41);
	
	if(port4States[2] == 1)
		P42 = 1;
	else if(port4States[2] == 0)
		P42 = 0;
	else if(port4States[2] == 6)
		P42 = ~(P42);
	
	if(port4States[3] == 1)
		P43 = 1;
	else if(port4States[3] == 0)
		P43 = 0;
	else if(port4States[3] == 6)
		P43 = ~(P43);
	
	if(port4States[4] == 1)
		P44 = 1;
	else if(port4States[4] == 0)
		P44 = 0;
	else if(port4States[4] == 6)
		P44 = ~(P44);
	
	if(port4States[5] == 1)
		P45 = 1;
	else if(port4States[5] == 0)
		P45 = 0;
	else if(port4States[5] == 6)
		P45 = ~(P45);
	
	if(port4States[6] == 1)
		P46 = 1;
	else if(port4States[6] == 0)
		P46 = 0;
	else if(port4States[6] == 6)
		P46 = ~(P46);
	
	if(port4States[7] == 1)
		P47 = 1;
	else if(port4States[7] == 0)
		P47 = 0;
	else if(port4States[7] == 6)
		P47 = ~(P47);
}


/**
 * @brief       Timer0 IRQ
 *
 * @param       None
 *
 * @return      None
 *
 * @details     The Timer0 default IRQ, declared in startup_NUC029xAN.s.
 */



void TMR0_IRQHandler(void)
	{
			if(TIMER_GetIntFlag(TIMER0) == 1)
				{
						TIMER_ClearIntFlag(TIMER0);		
						ticks = ticks + 1;
						if(ticks == 2)
						{
							changePort1();
							changePort2();
							changePort3();
							changePort4();
							ticks = 0;
						}					
					
						if(dataReceiving == 0)
							{
								if(boardID == 1)
									{
										P07 = 1;
										delay(100000);
										
										for(i = 0; i < 12; i++)
											printf("%c", masterCommand[i]);
										
										arrayIndex = 0;
										delay(100000);
										P07 = 0;
									}
							}	
						else
							{
								seconds = seconds + 1;
								if(seconds > 4)
									{
										seconds = 0;
										dataReceiving = 0;
										arrayIndex = 0;
									}
							}	
				}
	}

void SYS_Init(void)
{
    /*---------------------------------------------------------------------------------------------------------*/
    /* Init System Clock                                                                                       */
    /*---------------------------------------------------------------------------------------------------------*/
    /* Enable IRC22M clock */
    CLK->PWRCON |= CLK_PWRCON_IRC22M_EN_Msk;

    /* Waiting for IRC22M clock ready */
    CLK_WaitClockReady(CLK_CLKSTATUS_IRC22M_STB_Msk);

    /* Switch HCLK clock source to HIRC */
    CLK->CLKSEL0 = CLK_CLKSEL0_HCLK_S_HIRC;

    /* Set PLL to Power-down mode and PLL_STB bit in CLKSTATUS register will be cleared by hardware.*/
    CLK->PLLCON |= CLK_PLLCON_PD_Msk;

    /* Enable PLL and Set PLL frequency */
    CLK->PLLCON = PLLCON_SETTING;

    /* Waiting for clock ready */
    CLK_WaitClockReady(CLK_CLKSTATUS_PLL_STB_Msk | CLK_CLKSTATUS_XTL12M_STB_Msk | CLK_CLKSTATUS_IRC10K_STB_Msk);

    /* Switch HCLK clock source to PLL, STCLK to HCLK/2 */
    CLK->CLKSEL0 = CLK_CLKSEL0_STCLK_S_HCLK_DIV2 | CLK_CLKSEL0_HCLK_S_PLL;

    /* Enable peripheral clock */
    CLK->APBCLK = CLK_APBCLK_UART0_EN_Msk | CLK_APBCLK_TMR0_EN_Msk;

    /* Peripheral clock source */
    CLK->CLKSEL1 = CLK_CLKSEL1_UART_S_PLL | CLK_CLKSEL1_TMR0_S_HIRC;

    /* Update System Core Clock */
    /* User can use SystemCoreClockUpdate() to calculate PllClock, SystemCoreClock and CycylesPerUs automatically. */
    SystemCoreClockUpdate();

    /*---------------------------------------------------------------------------------------------------------*/
    /* Init I/O Multi-function                                                                                 */
    /*---------------------------------------------------------------------------------------------------------*/
    /* Set P3 multi-function pins for UART0 RXD, TXD */
    SYS->P0_MFP &= ~(SYS_MFP_P03_Msk | SYS_MFP_P02_Msk);
    SYS->P0_MFP |= (SYS_MFP_P03_RXD0 | SYS_MFP_P02_TXD0);
		
		SYS->P4_MFP &= ~(SYS_MFP_P46_Msk | SYS_MFP_P47_Msk);
    SYS->P4_MFP |= (SYS_MFP_P46_GPIO | SYS_MFP_P47_GPIO);
}

void UART0_Init(void)
{
    /*---------------------------------------------------------------------------------------------------------*/
    /* Init UART                                                                                               */
    /*---------------------------------------------------------------------------------------------------------*/
    /* Reset IP */
    SYS_ResetModule(UART0_RST);

    /* Configure UART0 and set UART0 Baudrate */
    UART_Open(UART0, 38400);
}

/*---------------------------------------------------------------------------------------------------------*/
/* UART Callback function                                                                                  */
/*---------------------------------------------------------------------------------------------------------*/
void UART_TEST_HANDLE()
{
	uint8_t u8InChar = 0xFF;
	uint32_t u32IntSts = UART0->ISR;

	if(u32IntSts & UART_ISR_RDA_INT_Msk)
		{
			/* Get all the input characters */
			while(UART_IS_RX_READY(UART0))
				{
					/* Get the character from UART Buffer */
					u8InChar = UART_READ(UART0);
					if(dataReceiving == 1)
						{
							responce[arrayIndex] = u8InChar;					
							if(arrayIndex == 1)
								{
									if(u8InChar != 0x03)
										{
											if(u8InChar == 0x83)
											{
												totalRegsToRead = totalRegsToRead - 1;
												toatalDataBytesToReceived = 2 * totalRegsToRead;
												responceSize = toatalDataBytesToReceived + 3;
												masterCommand[11] = totalRegsToRead;
											}
											dataReceiving = 0;
											arrayIndex = 0;
										}
								}
							if(arrayIndex == 2)
								{
									if(u8InChar != toatalDataBytesToReceived)
										{
											dataReceiving = 0;
											arrayIndex = 0;
										}
								}
							if(dataReceiving == 1)
								arrayIndex = arrayIndex + 1;
							if(arrayIndex == responceSize)
								{
									dataReceiving = 0;
									arrayIndex = 0;
									First_Reg_L = (3 * boardID) + (boardID - 1);
									First_Reg_H = First_Reg_L + 1;
									Second_Reg_L = First_Reg_H + 1;
									Second_Reg_H = Second_Reg_L + 1;					

									setPort_4(responce[First_Reg_H]);
									setPort_2(responce[First_Reg_L]);
									setPort_3(responce[Second_Reg_H]);
									setPort_1(responce[Second_Reg_L]);
									
									changePort1States();
									changePort2States();
									changePort3States();
									changePort4States();
								}
						}
					if(u8InChar == 0x01 && dataReceiving == 0)
						{
							responce[arrayIndex] = u8InChar;
							dataReceiving = 1;
							arrayIndex = arrayIndex + 1;
						}

					/* Check if buffer full */
					if(g_u32comRbytes < RXBUFSIZE)
						{
								/* Enqueue the character */
								g_u8RecData[g_u32comRtail] = u8InChar;
								g_u32comRtail = (g_u32comRtail == (RXBUFSIZE - 1)) ? 0 : (g_u32comRtail + 1);
								g_u32comRbytes++;
						}
				}
		}

	if(u32IntSts & UART_ISR_THRE_INT_Msk)
		{
			uint16_t tmp;
			tmp = g_u32comRtail;
			if(g_u32comRhead != tmp)
				{
						u8InChar = g_u8RecData[g_u32comRhead];
						while(UART_IS_TX_FULL(UART0));  /* Wait Tx is not full to transmit data */
						g_u32comRhead = (g_u32comRhead == (RXBUFSIZE - 1)) ? 0 : (g_u32comRhead + 1);
						g_u32comRbytes--;
				}
		}
}

void UART0_IRQHandler(void)
{	
	UART_TEST_HANDLE();
}
	
void GetBoardID()
{
	if(P00 == 0)
		boardID = boardID | 0x01;
	if(P01 == 0)
		boardID = boardID | 0x02;
	if(P04 == 0)
		boardID = boardID | 0x04;
	if(P05 == 0)
		boardID = boardID | 0x08;
	if(P06 == 0)
		boardID = boardID | 0x10;
}

/*---------------------------------------------------------------------------------------------------------*/
/*  MAIN function                                                                                          */
/*---------------------------------------------------------------------------------------------------------*/
int main(void)
	{
			/* Unlock protected registers */
			SYS_UnlockReg();

			/* Init System, peripheral clock and multi-function I/O */
			SYS_Init();

			/* Lock protected registers */
			SYS_LockReg();
		
			/* Init UART0 for printf */
			UART0_Init();	
			
			/* Open Timer0 frequency to 4 Hz in periodic mode, and enable interrupt */
			TIMER_Open(TIMER0, TIMER_PERIODIC_MODE, 4);
			TIMER_EnableInt(TIMER0);		
			
			/* Enable Timer0 ~ Timer1 NVIC */
			NVIC_EnableIRQ(TMR0_IRQn);
			
			/* Start Timer0 ~ Timer1 counting */
			TIMER_Start(TIMER0);
			
			GPIO_SetMode(P0, BIT0 | BIT1 | BIT4 | BIT5 | BIT6, GPIO_PMD_INPUT);
			GPIO_SetMode(P0, BIT7, GPIO_PMD_OUTPUT);
			GPIO_SetMode(P1, BIT0 | BIT1 | BIT2 | BIT3 | BIT4 | BIT5 | BIT6 | BIT7, GPIO_PMD_OUTPUT);
			GPIO_SetMode(P2, BIT0 | BIT1 | BIT2 | BIT3 | BIT4 | BIT5 | BIT6 | BIT7, GPIO_PMD_OUTPUT);
			GPIO_SetMode(P3, BIT0 | BIT1 | BIT2 | BIT3 | BIT4 | BIT5 | BIT6 | BIT7, GPIO_PMD_OUTPUT);
			GPIO_SetMode(P4, BIT0 | BIT1 | BIT2 | BIT3 | BIT4 | BIT5 | BIT6 | BIT7, GPIO_PMD_OUTPUT);
			
			P07 = 0;
			
			GetBoardID();
			
			setPort_4(0x00);
			setPort_2(0x00);
			setPort_3(0x00);
			setPort_1(0x00);
			
			//Variable Initialization
			toatalDataBytesToReceived = 2 * totalRegsToRead;
			responceSize = toatalDataBytesToReceived + 3;
			masterCommand[11] = totalRegsToRead;
			
			/* Enable Interrupt and install the call back function */
			UART_ENABLE_INT(UART0, (UART_IER_RDA_IEN_Msk | UART_IER_THRE_IEN_Msk | UART_IER_RTO_IEN_Msk));
			NVIC_EnableIRQ(UART0_IRQn);
			
			while(1)
				{					
					
				}
	}

/*** (C) COPYRIGHT 2013 Nuvoton Technology Corp. ***/
