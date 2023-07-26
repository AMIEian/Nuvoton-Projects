#include "MyProject.h"
#include "control_logic.h"
//#include "stdint.h"

volatile char totalRegsToRead = 6;//52;//64;
volatile char toatalDataBytesToReceived = 12;//104;//128;	// 2 * totalRegsToRead
volatile char responceSize = 15;//107;//131;	//	toatalBytesToReceived + 3

volatile char responce[107];
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

/*
void delay(uint32_t count)
{
	for(i = 0; i < count; i++);
}
*/

void GetBoardID()
{
	if(PD0 == 0)
		boardID = boardID | 0x01;
	if(PD1 == 0)
		boardID = boardID | 0x02;
	if(PD2 == 0)
		boardID = boardID | 0x04;
	if(PD3 == 0)
		boardID = boardID | 0x08;
	if(PC0 == 0)
		boardID = boardID | 0x10;
	if(PC1 == 0)
		boardID = boardID | 0x20;
	
	//Variable Initialization
	toatalDataBytesToReceived = 2 * totalRegsToRead;
	responceSize = toatalDataBytesToReceived + 3;
	boardID = 1;
	printf("%d", boardID);
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
	printf("1");
	if(port1States[0] == 1)
		PB15 = 1;
	else if(port1States[0] == 0)
		PB15 = 0;
	else if(port1States[0] == 6)
		PB15 = ~(PB15);
	
	if(port1States[1] == 1)
		PB14 = 1;
	else if(port1States[1] == 0)
		PB14 = 0;
	else if(port1States[1] == 6)
		PB14 = ~(PB14);
	
	if(port1States[2] == 1)
		PB13 = 1;
	else if(port1States[2] == 0)
		PB13 = 0;
	else if(port1States[2] == 6)
		PB13 = ~(PB13);
	
	if(port1States[3] == 1)
		PB12 = 1;
	else if(port1States[3] == 0)
		PB12 = 0;
	else if(port1States[3] == 6)
		PB12 = ~(PB12);
	
	if(port1States[4] == 1)
		PB11 = 1;
	else if(port1States[4] == 0)
		PB11 = 0;
	else if(port1States[4] == 6)
		PB11 = ~(PB11);
	
	if(port1States[5] == 1)
		PB10 = 1;
	else if(port1States[5] == 0)
		PB10 = 0;
	else if(port1States[5] == 6)
		PB10 = ~(PB10);
	
	if(port1States[6] == 1)
		PB9 = 1;
	else if(port1States[6] == 0)
		PB9 = 0;
	else if(port1States[6] == 6)
		PB9 = ~(PB9);
	
	if(port1States[7] == 1)
		PB8 = 1;
	else if(port1States[7] == 0)
		PB8 = 0;
	else if(port1States[7] == 6)
		PB8 = ~(PB8);
}

void changePort2()
{
	if(port2States[0] == 1)
		PA11 = 1;
	else if(port2States[0] == 0)
		PA11 = 0;
	else if(port2States[0] == 6)
		PA11 = ~(PA11);
	
	if(port2States[1] == 1)
		PA10 = 1;
	else if(port2States[1] == 0)
		PA10 = 0;
	else if(port2States[1] == 6)
		PA10 = ~(PA10);
	
	if(port2States[2] == 1)
		PF6 = 1;
	else if(port2States[2] == 0)
		PF6 = 0;
	else if(port2States[2] == 6)
		PF6 = ~(PF6);
	
	if(port2States[3] == 1)
		PF14 = 1;
	else if(port2States[3] == 0)
		PF14 = 0;
	else if(port2States[3] == 6)
		PF14 = ~(PF14);
	
	if(port2States[4] == 1)
		PF5 = 1;
	else if(port2States[4] == 0)
		PF5 = 0;
	else if(port2States[4] == 6)
		PF5 = ~(PF5);
	
	if(port2States[5] == 1)
		PF4 = 1;
	else if(port2States[5] == 0)
		PF4 = 0;
	else if(port2States[5] == 6)
		PF4 = ~(PF4);
	
	if(port2States[6] == 1)
		PC7 = 1;
	else if(port2States[6] == 0)
		PC7 = 0;
	else if(port2States[6] == 6)
		PC7 = ~(PC7);
	
	if(port2States[7] == 1)
		PC6 = 1;
	else if(port2States[7] == 0)
		PC6 = 0;
	else if(port2States[7] == 6)
		PC6 = ~(PC6);
}

void changePort3()
{
	if(port3States[0] == 1)
		PB7 = 1;
	else if(port3States[0] == 0)
		PB7 = 0;
	else if(port3States[0] == 6)
		PB7 = ~(PB7);
	
	if(port3States[1] == 1)
		PB6 = 1;
	else if(port3States[1] == 0)
		PB6 = 0;
	else if(port3States[1] == 6)
		PB6 = ~(PB6);
	
	if(port3States[2] == 1)
		PB5 = 1;
	else if(port3States[2] == 0)
		PB5 = 0;
	else if(port3States[2] == 6)
		PB5 = ~(PB5);
	
	if(port3States[3] == 1)
		PB4 = 1;
	else if(port3States[3] == 0)
		PB4 = 0;
	else if(port3States[3] == 6)
		PB4 = ~(PB4);
	
	if(port3States[4] == 1)
		PB3 = 1;
	else if(port3States[4] == 0)
		PB3 = 0;
	else if(port3States[4] == 6)
		PB3 = ~(PB3);
	
	if(port3States[5] == 1)
		PB2 = 1;
	else if(port3States[5] == 0)
		PB2 = 0;
	else if(port3States[5] == 6)
		PB2 = ~(PB2);
	
	if(port3States[6] == 1)
		PB1 = 1;
	else if(port3States[6] == 0)
		PB1 = 0;
	else if(port3States[6] == 6)
		PB1 = ~(PB1);
	
	if(port3States[7] == 1)
		PB0 = 1;
	else if(port3States[7] == 0)
		PB0 = 0;
	else if(port3States[7] == 6)
		PB0 = ~(PB0);
}

void changePort4()
{
	if(port4States[0] == 1)
		PA7 = 1;
	else if(port4States[0] == 0)
		PA7 = 0;
	else if(port4States[0] == 6)
		PA7 = ~(PA7);
	
	if(port4States[1] == 1)
		PA6 = 1;
	else if(port4States[1] == 0)
		PA6 = 0;
	else if(port4States[1] == 6)
		PA6 = ~(PA6);
	
	if(port4States[2] == 1)
		PA5 = 1;
	else if(port4States[2] == 0)
		PA5 = 0;
	else if(port4States[2] == 6)
		PA5 = ~(PA5);
	
	if(port4States[3] == 1)
		PA4 = 1;
	else if(port4States[3] == 0)
		PA4 = 0;
	else if(port4States[3] == 6)
		PA4 = ~(PA4);
	
	if(port4States[4] == 1)
		PA3 = 1;
	else if(port4States[4] == 0)
		PA3 = 0;
	else if(port4States[4] == 6)
		PA3 = ~(PA3);
	
	if(port4States[5] == 1)
		PA2 = 1;
	else if(port4States[5] == 0)
		PA2 = 0;
	else if(port4States[5] == 6)
		PA2 = ~(PA2);
	
	if(port4States[6] == 1)
		PA1 = 1;
	else if(port4States[6] == 0)
		PA1 = 0;
	else if(port4States[6] == 6)
		PA1 = ~(PA1);
	
	if(port4States[7] == 1)
		PA0 = 1;
	else if(port4States[7] == 0)
		PA0 = 0;
	else if(port4States[7] == 6)
		PA0 = ~(PA0);
}

void UART_LOGIC(uint8_t u8InChar)
{
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
								//masterCommand[11] = totalRegsToRead;
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
}
	
void TIMER0_LOGIC()
{
	ticks = ticks + 1;
	if(ticks == 2)
	{
		changePort1();
		changePort2();
		changePort3();
		changePort4();
		ticks = 0;
	}					

	if(dataReceiving != 0)
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
