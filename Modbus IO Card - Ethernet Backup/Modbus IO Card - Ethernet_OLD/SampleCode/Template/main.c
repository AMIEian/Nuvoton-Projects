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

# if defined ( __GNUC__ )
#define RXBUFSIZE 128
#else
#define RXBUFSIZE 1024
#endif

/*---------------------------------------------------------------------------------------------------------*/
/* Global variables                                                                                        */
/*---------------------------------------------------------------------------------------------------------*/
uint8_t g_u8RecData[RXBUFSIZE]  = {0};

volatile uint32_t g_u32comRbytes = 0;
volatile uint32_t g_u32comRhead  = 0;
volatile uint32_t g_u32comRtail  = 0;

volatile char masterCommand[12] = {0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x01, 0x03, 0x00, 0x00, 0x00, 0x06};
//volatile char responce[164];// = {0x01, 0x03, 0x0C, 0x00, 0x01, 0x00, 0x02, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x0A};
volatile char responce[15] = {0x01, 0x03, 0x0C, 0x00, 0x01, 0x00, 0x02, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x0A};

volatile char First_Reg_L;
volatile char First_Reg_H;
volatile char Second_Reg_L;
volatile char Second_Reg_H;

volatile char boardID = 0;
volatile uint32_t i;
volatile uint32_t arrayIndex = 0;
volatile uint32_t dataReceiving = 0;
volatile uint32_t seconds = 0;

void delay(uint32_t count)
{
	for(i = 0; i < count; i++);
}

void setPort_1(char value)
{
	char res = value & 0x01;
	if(res != 0)
		P10 = 1;
	else
		P10 = 0;
	
	res = value & 0x02;
	if(res != 0)
		P11 = 1;
	else
		P11 = 0;
	
	res = value & 0x04;
	if(res != 0)
		P12 = 1;
	else
		P12 = 0;
	
	res = value & 0x08;
	if(res != 0)
		P13 = 1;
	else
		P13 = 0;
	
	res = value & 0x10;
	if(res != 0)
		P14 = 1;
	else
		P14 = 0;
	
	res = value & 0x20;
	if(res != 0)
		P15 = 1;
	else
		P15 = 0;
	
	res = value & 0x40;
	if(res != 0)
		P16 = 1;
	else
		P16 = 0;
	
	res = value & 0x80;
	if(res != 0)
		P17 = 1;
	else
		P17 = 0;
}

void setPort_2(char value)
{
	char res = value & 0x01;
	if(res != 0)
		P20 = 1;
	else
		P20 = 0;
	
	res = value & 0x02;
	if(res != 0)
		P21 = 1;
	else
		P21 = 0;
	
	res = value & 0x04;
	if(res != 0)
		P22 = 1;
	else
		P22 = 0;
	
	res = value & 0x08;
	if(res != 0)
		P23 = 1;
	else
		P23 = 0;
	
	res = value & 0x10;
	if(res != 0)
		P24 = 1;
	else
		P24 = 0;
	
	res = value & 0x20;
	if(res != 0)
		P25 = 1;
	else
		P25 = 0;
	
	res = value & 0x40;
	if(res != 0)
		P26 = 1;
	else
		P26 = 0;
	
	res = value & 0x80;
	if(res != 0)
		P27 = 1;
	else
		P27 = 0;
}

void setPort_3(char value)
{
	char res = value & 0x01;
	if(res != 0)
		P30 = 1;
	else
		P30 = 0;
	
	res = value & 0x02;
	if(res != 0)
		P31 = 1;
	else
		P31 = 0;
	
	res = value & 0x04;
	if(res != 0)
		P32 = 1;
	else
		P32 = 0;
	
	res = value & 0x08;
	if(res != 0)
		P33 = 1;
	else
		P33 = 0;
	
	res = value & 0x10;
	if(res != 0)
		P34 = 1;
	else
		P34 = 0;
	
	res = value & 0x20;
	if(res != 0)
		P35 = 1;
	else
		P35 = 0;
	
	res = value & 0x40;
	if(res != 0)
		P36 = 1;
	else
		P36 = 0;
	
	res = value & 0x80;
	if(res != 0)
		P37 = 1;
	else
		P37 = 0;
}

void setPort_4(char value)
{
	char res = value & 0x01;
	if(res != 0)
		P40 = 1;
	else
		P40 = 0;
	
	res = value & 0x02;
	if(res != 0)
		P41 = 1;
	else
		P41 = 0;
	
	res = value & 0x04;
	if(res != 0)
		P42 = 1;
	else
		P42 = 0;
	
	res = value & 0x08;
	if(res != 0)
		P43 = 1;
	else
		P43 = 0;
	
	res = value & 0x10;
	if(res != 0)
		P44 = 1;
	else
		P44 = 0;
	
	res = value & 0x20;
	if(res != 0)
		P45 = 1;
	else
		P45 = 0;
	
	res = value & 0x40;
	if(res != 0)
		P46 = 1;
	else
		P46 = 0;
	
	res = value & 0x80;
	if(res != 0)
		P47 = 1;
	else
		P47 = 0;
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
						/* Clear Timer0 time-out interrupt flag */
						TIMER_ClearIntFlag(TIMER0);			
					
						if(dataReceiving == 0)
							{
								P07 = 1;
								delay(100000);
								
								for(i = 0; i < 12; i++)
									printf("%c", masterCommand[i]);
								
								arrayIndex = 0;
								delay(100000);
								P07 = 0;
							}	
						else
							{
								seconds = seconds + 1;
								if(seconds >= 5)
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
											dataReceiving = 0;
											arrayIndex = 0;
										}
								}
							if(arrayIndex == 2)
								{
									if(u8InChar != 12)
										{
											dataReceiving = 0;
											arrayIndex = 0;
										}
								}
							if(dataReceiving == 1)
								arrayIndex = arrayIndex + 1;
							if(arrayIndex == 15)
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
			
			/* Open Timer0 frequency to 0.5 Hz in periodic mode, and enable interrupt */
			TIMER_Open(TIMER0, TIMER_PERIODIC_MODE, 1);
			TIMER_EnableInt(TIMER0);

			/* Enable Timer0 ~ Timer3 NVIC */
			NVIC_EnableIRQ(TMR0_IRQn);

			/* Start Timer0 ~ Timer3 counting */
			TIMER_Start(TIMER0);

			GPIO_SetMode(P0, BIT0 | BIT1 | BIT4 | BIT5 | BIT6, GPIO_PMD_INPUT);
			GPIO_SetMode(P0, BIT7, GPIO_PMD_OUTPUT);
			GPIO_SetMode(P1, BIT0 | BIT1 | BIT2 | BIT3 | BIT4 | BIT5 | BIT6 | BIT7, GPIO_PMD_OUTPUT);
			GPIO_SetMode(P2, BIT0 | BIT1 | BIT2 | BIT3 | BIT4 | BIT5 | BIT6 | BIT7, GPIO_PMD_OUTPUT);
			GPIO_SetMode(P3, BIT0 | BIT1 | BIT2 | BIT3 | BIT4 | BIT5 | BIT6 | BIT7, GPIO_PMD_OUTPUT);
			GPIO_SetMode(P4, BIT0 | BIT1 | BIT2 | BIT3 | BIT4 | BIT5 | BIT6 | BIT7, GPIO_PMD_OUTPUT);
		
			GetBoardID();
			
			setPort_4(0x00);
			setPort_2(0x00);
			setPort_3(0x00);
			setPort_1(0x00);
			
			/* Enable Interrupt and install the call back function */
			UART_ENABLE_INT(UART0, (UART_IER_RDA_IEN_Msk | UART_IER_THRE_IEN_Msk | UART_IER_RTO_IEN_Msk));
			NVIC_EnableIRQ(UART0_IRQn);
			
			while(1)
				{
					
				}
	}

/*** (C) COPYRIGHT 2013 Nuvoton Technology Corp. ***/
