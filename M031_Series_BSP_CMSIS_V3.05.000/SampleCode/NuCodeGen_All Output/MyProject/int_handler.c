/******************************************************************************//**
 * @file     int_handler.c
 * @version  V1.01
 * @brief    M031 interrupt handler file
 *
 * SPDX-License-Identifier: Apache-2.0
 * @copyright (C) 2021 Nuvoton Technology Corp. All rights reserved.
 ******************************************************************************/

/*!<Includes */
#include "MyProject.h"
#include "port_helper.h"
#include "control_logic.h"

void TMR0_IRQHandler(void)
{
    if (TIMER_GetIntFlag(TIMER0))
    {
        /* Clear Timer0 time-out interrupt flag */
        TIMER_ClearIntFlag(TIMER0);
				TIMER0_LOGIC();
    }

}
void UART0_IRQHandler(void)
{

    uint32_t u32IntSts = UART0->INTSTS;
    uint32_t u32WKSts  = UART0->WKSTS;
    volatile uint8_t u8InChar = 0xFF;
    uint32_t u32Data;

    /* Auto-baud Rate Interrupt */
    if (u32IntSts & UART_INTSTS_ABRINT_Msk)
    {
        UART0->FIFOSTS = (UART_FIFOSTS_ABRDIF_Msk | UART_FIFOSTS_ABRDTOIF_Msk);
    }

    /* MODEM Status Interrupt */
    if (u32IntSts & UART_INTSTS_MODEMIF_Msk)
    {
        /*Clear nCTS State Change Flag*/
        UART_ClearIntFlag(UART0, UART_INTSTS_MODEMINT_Msk);
    }

    /* Receive Line Status Interrupt */
    if (u32IntSts & UART_INTSTS_RLSIF_Msk)
    {
        if (UART0->FIFOSTS & UART_FIFOSTS_BIF_Msk)
            printf("\n BIF \n");

        if (UART0->FIFOSTS & UART_FIFOSTS_FEF_Msk)
            printf("\n FEF \n");

        if (UART0->FIFOSTS & UART_FIFOSTS_PEF_Msk)
            printf("\n PEF \n");

        u32Data = UART0->DAT; // read out data
        printf("\n Error Data is '0x%x' \n", u32Data);
        UART_ClearIntFlag(UART0, UART_INTSTS_RLSINT_Msk);
    }

    if ((u32IntSts & UART_INTSTS_RDAINT_Msk) || (u32IntSts & UART_INTSTS_RXTOINT_Msk))/* Rx Ready or Time-out INT*/
    {
        /* Get all the input characters */
        while (!UART_GET_RX_EMPTY(UART0))
        {
            /* Get the character from UART Buffer */
            u8InChar = UART_READ(UART0);
            /* ToDo : User handle read data here */
            //printf("0x%x\n", u8InChar);
						UART_LOGIC(u8InChar);
						//PC3 = 0;
						//printf("0x%x\n", u8InChar);
						//printf("%c\n", (char)u8InChar);
						//PC3 = 1;
        }
    }

    /* Buffer Error Interrupt  */
    if (u32IntSts & UART_INTSTS_BUFERRINT_Msk)     /* Buffer Error INT */
    {
        printf("\nBuffer Error...\n");
        UART_ClearIntFlag(UART0, UART_INTSTS_BUFERRINT_Msk);
    }

    /* If you would like to use  "Transmit Holding Register Empty Interrupt  or  Transmitter Empty Interrupt ",you can add this code. */
    //    if ((u32IntSts & UART_INTSTS_THREINT_Msk) || (u32IntSts & UART_INTSTS_TXENDIF_Msk) )
    //    {
    //      while (UART_IS_TX_FULL(UART0)){} /* Wait Tx is not full to transmit data */
    //      UART_WRITE(UART0, u8InChar);
    //    }

    /* UART Wake-up Interrupt  */
    if (u32IntSts & UART_INTSTS_WKIF_Msk)
    {
        printf("\n UART Wake-Up ");
        UART0->INTSTS = UART_INTSTS_WKIF_Msk;
        UART_ClearIntFlag(UART0, UART_INTSTS_WKINT_Msk);
    }

}

void UART02_IRQHandler(void)
{

    UART0_IRQHandler();

}
