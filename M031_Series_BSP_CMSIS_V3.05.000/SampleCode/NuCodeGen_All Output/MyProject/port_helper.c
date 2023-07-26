#include "MyProject.h"

void Set_port_a(int val)
{
	volatile int res = val & 0x0001;
	if(res != 0)
		PA0 = 1;
	else
		PA0 = 0;
	
	res = val & 0x0002;
	if(res != 0)
		PA1 = 1;
	else
		PA1 = 0;
	
	res = val & 0x0004;
	if(res != 0)
		PA2 = 1;
	else
		PA2 = 0;
	
	res = val & 0x0008;
	if(res != 0)
		PA3 = 1;
	else
		PA3 = 0;
	
	res = val & 0x0010;
	if(res != 0)
		PA4 = 1;
	else
		PA4 = 0;
	
	res = val & 0x0020;
	if(res != 0)
		PA5 = 1;
	else
		PA5 = 0;
	
	res = val & 0x0040;
	if(res != 0)
		PA6 = 1;
	else
		PA6 = 0;
	
	res = val & 0x0080;
	if(res != 0)
		PA7 = 1;
	else
		PA7 = 0;
	/*
	res = val & 0x0100;
	if(res != 0)
		PA8 = 1;
	else
		PA8 = 0;
	
	res = val & 0x0200;
	if(res != 0)
		PA9 = 1;
	else
		PA9 = 0;
	*/
	res = val & 0x0400;
	if(res != 0)
		PA10 = 1;
	else
		PA10 = 0;
	
	res = val & 0x0800;
	if(res != 0)
		PA11 = 1;
	else
		PA11 = 0;
}

void Set_port_b(int val)
{
	volatile int res = val & 0x0001;
	if(res != 0)
		PB0 = 1;
	else
		PB0 = 0;
	
	res = val & 0x0002;
	if(res != 0)
		PB1 = 1;
	else
		PB1 = 0;
	
	res = val & 0x0004;
	if(res != 0)
		PB2 = 1;
	else
		PB2 = 0;
	
	res = val & 0x0008;
	if(res != 0)
		PB3 = 1;
	else
		PB3 = 0;
	
	res = val & 0x0010;
	if(res != 0)
		PB4 = 1;
	else
		PB4 = 0;
	
	res = val & 0x0020;
	if(res != 0)
		PB5 = 1;
	else
		PB5 = 0;
	
	res = val & 0x0040;
	if(res != 0)
		PB6 = 1;
	else
		PB6 = 0;
	
	res = val & 0x0080;
	if(res != 0)
		PB7 = 1;
	else
		PB7 = 0;
	
	res = val & 0x0100;
	if(res != 0)
		PB8 = 1;
	else
		PB8 = 0;
	
	res = val & 0x0200;
	if(res != 0)
		PB9 = 1;
	else
		PB9 = 0;
	
	res = val & 0x0400;
	if(res != 0)
		PB10 = 1;
	else
		PB10 = 0;
	
	res = val & 0x0800;
	if(res != 0)
		PB11 = 1;
	else
		PB11 = 0;
	
	res = val & 0x1000;
	if(res != 0)
		PB12 = 1;
	else
		PB12 = 0;
	
	res = val & 0x2000;
	if(res != 0)
		PB13 = 1;
	else
		PB13 = 0;
	
	res = val & 0x4000;
	if(res != 0)
		PB14 = 1;
	else
		PB14 = 0;
	
	res = val & 0x8000;
	if(res != 0)
		PB15 = 1;
	else
		PB15 = 0;
}

void Set_port_c(int val)
{
	volatile int res = val & 0x0001;
	if(res != 0)
		PC0 = 1;
	else
		PC0 = 0;
	
	res = val & 0x0002;
	if(res != 0)
		PC1 = 1;
	else
		PC1 = 0;
	
	res = val & 0x0004;
	if(res != 0)
		PC2 = 1;
	else
		PC2 = 0;
	
	res = val & 0x0008;
	if(res != 0)
		PC3 = 1;
	else
		PC3 = 0;
	
	res = val & 0x0010;
	if(res != 0)
		PC4 = 1;
	else
		PC4 = 0;
	
	res = val & 0x0020;
	if(res != 0)
		PC5 = 1;
	else
		PC5 = 0;
	
	res = val & 0x0040;
	if(res != 0)
		PC6 = 1;
	else
		PC6 = 0;
	
	res = val & 0x0080;
	if(res != 0)
		PC7 = 1;
	else
		PC7 = 0;
	
	res = val & 0x0100;
	if(res != 0)
		PC8 = 1;
	else
		PC8 = 0;
	
	res = val & 0x0200;
	if(res != 0)
		PC9 = 1;
	else
		PC9 = 0;
	
	res = val & 0x0400;
	if(res != 0)
		PC10 = 1;
	else
		PC10 = 0;
	
	res = val & 0x0800;
	if(res != 0)
		PC11 = 1;
	else
		PC11 = 0;
	
	res = val & 0x1000;
	if(res != 0)
		PC12 = 1;
	else
		PC12 = 0;
	
	res = val & 0x2000;
	if(res != 0)
		PC13 = 1;
	else
		PC13 = 0;
	
	res = val & 0x4000;
	if(res != 0)
		PC14 = 1;
	else
		PC14 = 0;
}

void Set_port_d(int val)
{
	volatile int res = val & 0x0001;
	if(res != 0)
		PD0 = 1;
	else
		PD0 = 0;
	
	res = val & 0x0002;
	if(res != 0)
		PD1 = 1;
	else
		PD1 = 0;
	
	res = val & 0x0004;
	if(res != 0)
		PD2 = 1;
	else
		PD2 = 0;
	
	res = val & 0x0008;
	if(res != 0)
		PD3 = 1;
	else
		PD3 = 0;
	
	res = val & 0x0010;
	if(res != 0)
		PD4 = 1;
	else
		PD4 = 0;
	
	res = val & 0x0020;
	if(res != 0)
		PD5 = 1;
	else
		PD5 = 0;
	
	res = val & 0x0040;
	if(res != 0)
		PD6 = 1;
	else
		PD6 = 0;
	
	res = val & 0x0080;
	if(res != 0)
		PD7 = 1;
	else
		PD7 = 0;
	
	res = val & 0x0100;
	if(res != 0)
		PD8 = 1;
	else
		PD8 = 0;
	
	res = val & 0x0200;
	if(res != 0)
		PD9 = 1;
	else
		PD9 = 0;
	
	res = val & 0x0400;
	if(res != 0)
		PD10 = 1;
	else
		PD10 = 0;
	
	res = val & 0x0800;
	if(res != 0)
		PD11 = 1;
	else
		PD11 = 0;
	
	res = val & 0x1000;
	if(res != 0)
		PD12 = 1;
	else
		PD12 = 0;
	
	res = val & 0x2000;
	if(res != 0)
		PD13 = 1;
	else
		PD13 = 0;
	
	res = val & 0x4000;
	if(res != 0)
		PD14 = 1;
	else
		PD14 = 0;
	
	res = val & 0x8000;
	if(res != 0)
		PD15 = 1;
	else
		PD15 = 0;
}

void Set_port_f(int val)
{
	volatile int res = val & 0x0001;
	if(res != 0)
		PF0 = 1;
	else
		PF0 = 0;
	
	res = val & 0x0002;
	if(res != 0)
		PF1 = 1;
	else
		PF1 = 0;
	
	res = val & 0x0004;
	if(res != 0)
		PF2 = 1;
	else
		PF2 = 0;
	
	res = val & 0x0008;
	if(res != 0)
		PF3 = 1;
	else
		PF3 = 0;
	
	res = val & 0x0010;
	if(res != 0)
		PF4 = 1;
	else
		PF4 = 0;
	
	res = val & 0x0020;
	if(res != 0)
		PF5 = 1;
	else
		PF5 = 0;
	
	res = val & 0x0040;
	if(res != 0)
		PF6 = 1;
	else
		PF6 = 0;
	
	res = val & 0x0080;
	if(res != 0)
		PF7 = 1;
	else
		PF7 = 0;
	
	res = val & 0x0100;
	if(res != 0)
		PF8 = 1;
	else
		PF8 = 0;
	
	res = val & 0x0200;
	if(res != 0)
		PF9 = 1;
	else
		PF9 = 0;
	
	res = val & 0x0400;
	if(res != 0)
		PF10 = 1;
	else
		PF10 = 0;
	
	res = val & 0x0800;
	if(res != 0)
		PF11 = 1;
	else
		PF11 = 0;
	
	res = val & 0x4000;
	if(res != 0)
		PF14 = 1;
	else
		PF14 = 0;
	
	res = val & 0x8000;
	if(res != 0)
		PF15 = 1;
	else
		PF15 = 0;
}
