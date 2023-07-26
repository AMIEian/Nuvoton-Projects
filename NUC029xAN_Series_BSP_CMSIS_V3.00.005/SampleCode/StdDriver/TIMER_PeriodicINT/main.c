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

#define FIRST_REG_H 3
#define FIRST_REG_L 4
#define SECOND_REG_H 5
#define SECOND_REG_L 6
#define THIRD_REG_H 7
#define THIRD_REG_L 8
#define FOURTH_REG_H 9
#define FOURTH_REG_L 10
#define FIFTH_REG_H 11
#define FIFTH_REG_L 12
#define SIXTH_REG_H 13
#define SIXTH_REG_L 14

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

volatile char masterCommand[8] = {0x01, 0x03, 0x00, 0x00, 0x00, 0x06, 0xC5, 0xC8};
volatile char responce[15];// = {0x01, 0x03, 0x0C, 0x00, 0x01, 0x00, 0x02, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x0A};

volatile uint32_t i;
volatile uint32_t arrayIndex = 0;
volatile uint32_t dataReceiving = 0;
volatile uint32_t dataReceived = 0;
volatile uint32_t seconds = 0;
	
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
						//GPIO_TOGGLE(P41);
						//GPIO_TOGGLE(P04);						
						if(dataReceiving == 0)
							{
								for(i = 0; i < 8; i++)
									printf("%c", masterCommand[i]);
							}	
						else
							{
								seconds = seconds + 1;
								if(seconds >= 5)
									{
										seconds = 0;
										dataReceiving = 0;
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

    /* Enable external 12 MHz XTAL, IRC10K */
    //CLK->PWRCON |= CLK_PWRCON_XTL12M_EN_Msk | CLK_PWRCON_OSC10K_EN_Msk;

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
    //SYS->P3_MFP &= ~(SYS_MFP_P30_Msk | SYS_MFP_P31_Msk);
    //SYS->P3_MFP |= (SYS_MFP_P30_RXD0 | SYS_MFP_P31_TXD0);
		
		SYS->P0_MFP &= ~(SYS_MFP_P03_Msk | SYS_MFP_P02_Msk);
    SYS->P0_MFP |= (SYS_MFP_P03_RXD0 | SYS_MFP_P02_TXD0);
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
											if(responce[arrayIndex] != 0x03)
												{
													dataReceiving = 0;
													arrayIndex = 0;
												}
										}
									if(arrayIndex == 2)
										{
											if(responce[arrayIndex] != 0x0C)
												{
													dataReceiving = 0;
													arrayIndex = 0;
												}
										}
									arrayIndex = arrayIndex + 1;
									if(arrayIndex == 15)
										{
											dataReceiving = 0;
											arrayIndex = 0;
											dataReceived = 1;
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

/*---------------------------------------------------------------------------------------------------------*/
/*  MAIN function                                                                                          */
/*---------------------------------------------------------------------------------------------------------*/
int main(void)
{
    volatile uint32_t u32InitCount;

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
		
		GPIO_SetMode(P4, BIT1, GPIO_PMD_OUTPUT);
		GPIO_SetMode(P0, BIT4, GPIO_PMD_OUTPUT);
		
		/* Enable Interrupt and install the call back function */
    UART_ENABLE_INT(UART0, (UART_IER_RDA_IEN_Msk | UART_IER_THRE_IEN_Msk | UART_IER_RTO_IEN_Msk));
    NVIC_EnableIRQ(UART0_IRQn);

    while(1)
		{
			if(dataReceived == 1)
				{
					if(responce[FIRST_REG_L != 0])
						GPIO_TOGGLE(P41);
					if(responce[SECOND_REG_L != 0])
						GPIO_TOGGLE(P04);	
					dataReceived = 0;
				}
		}
}

/*** (C) COPYRIGHT 2013 Nuvoton Technology Corp. ***/
