/*---------------------------------------------------------------------------------------------------------*/
/*                                                                                                         */
/* SPDX-License-Identifier: Apache-2.0                                                                     */
/* Copyright(c) 2020 Nuvoton Technology Corp. All rights reserved.                                         */
/*                                                                                                         */
/*---------------------------------------------------------------------------------------------------------*/

//***********************************************************************************************************
//  File Function: MS51 locate data in APROM simple demo 
//***********************************************************************************************************
#include "MS51_8K.H"
#include "SPROM.h"

unsigned char  SPTEMP=1;

void SPROM_CODE (void)
{
	P17_PUSHPULL_MODE;
  P17 = ~P17;
  SPTEMP++;

}
