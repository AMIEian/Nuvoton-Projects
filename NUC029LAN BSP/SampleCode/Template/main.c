/******************************************************************************
 * @file     main.c
 * @version  V1.00
 * $Revision: 1 $
 * $Date: 14/10/01 10:36a $
 * @brief    Template project for NUC029 series MCU
 *
 * @note
 * Copyright (C) 2014 Nuvoton Technology Corp. All rights reserved.
*****************************************************************************/
#include <stdio.h>
#include "NUC029xAN.h"

#define PLLCON_SETTING      CLK_PLLCON_50MHz_HIRC

void TMR0_IRQHandler(void)
	{
			if(TIMER_GetIntFlag(TIMER0) == 1)
				{
						/* Clear Timer0 time-out interrupt flag */
						TIMER_ClearIntFlag(TIMER0);
						GPIO_TOGGLE(P10);
						GPIO_TOGGLE(P11);			
						GPIO_TOGGLE(P12);
						GPIO_TOGGLE(P13);	
						GPIO_TOGGLE(P14);
						GPIO_TOGGLE(P15);			
						GPIO_TOGGLE(P16);
						GPIO_TOGGLE(P17);
					
						GPIO_TOGGLE(P20);
						GPIO_TOGGLE(P21);			
						GPIO_TOGGLE(P22);
						GPIO_TOGGLE(P23);	
						GPIO_TOGGLE(P24);
						GPIO_TOGGLE(P25);			
						GPIO_TOGGLE(P26);
						GPIO_TOGGLE(P27);
					
						GPIO_TOGGLE(P30);
						GPIO_TOGGLE(P31);			
						GPIO_TOGGLE(P32);
						GPIO_TOGGLE(P33);	
						GPIO_TOGGLE(P34);
						GPIO_TOGGLE(P35);			
						GPIO_TOGGLE(P36);
						GPIO_TOGGLE(P37);
						
						GPIO_TOGGLE(P40);
						GPIO_TOGGLE(P41);			
						GPIO_TOGGLE(P42);
						GPIO_TOGGLE(P43);	
						GPIO_TOGGLE(P44);
						GPIO_TOGGLE(P45);			
						GPIO_TOGGLE(P46);
						GPIO_TOGGLE(P47);

						//printf("Hello World...!\n");
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

int main()
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
		
		//GPIO_SetMode(P4, BIT1, GPIO_PMD_OUTPUT);
		//GPIO_SetMode(P0, BIT7, GPIO_PMD_OUTPUT);
		GPIO_SetMode(P1, BIT0 | BIT1 | BIT2 | BIT3 | BIT4 | BIT5 | BIT6 | BIT7, GPIO_PMD_OUTPUT);
		GPIO_SetMode(P2, BIT0 | BIT1 | BIT2 | BIT3 | BIT4 | BIT5 | BIT6 | BIT7, GPIO_PMD_OUTPUT);
		GPIO_SetMode(P3, BIT0 | BIT1 | BIT2 | BIT3 | BIT4 | BIT5 | BIT6 | BIT7, GPIO_PMD_OUTPUT);
		GPIO_SetMode(P4, BIT0 | BIT1 | BIT2 | BIT3 | BIT4 | BIT5 | BIT6 | BIT7, GPIO_PMD_OUTPUT);

    while(1);

}

/*** (C) COPYRIGHT 2014 Nuvoton Technology Corp. ***/
