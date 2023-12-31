/*---------------------------------------------------------------------------------------------------------*/
/*                                                                                                         */
/* SPDX-License-Identifier: Apache-2.0                                                                     */
/* Copyright(c) 2020 Nuvoton Technology Corp. All rights reserved.                                         */
/*                                                                                                         */
/*---------------------------------------------------------------------------------------------------------*/


//***********************************************************************************************************
//  File Function: MS51 UART1 output for printf function demo
//***********************************************************************************************************
#include "MS51_32K.h"
                          
/*==========================================================================*/
/* Remove ICE to check UART1 function */ 
/*==========================================================================*/
void main (void) 
{
/* Modify HIRC to 24MHz for UART baud rate deviation not over 1%*/
    MODIFY_HIRC(HIRC_24);
    UART_Open(24000000,UART1_Timer3,115200);

    while(1)
    {
      ENABLE_UART1_PRINTF;
      printf("\n hello world !!!");
      DISABLE_UART1_PRINTF;
      Timer0_Interrupt_Init(16000000,300,1000);
    }
  
}