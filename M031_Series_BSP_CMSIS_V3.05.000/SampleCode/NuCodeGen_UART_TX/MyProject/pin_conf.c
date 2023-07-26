/****************************************************************************
 * @file     pin_conf.c
 * @version  V0.42
 * @Date     2023/06/01-20:36:55
 * @brief    NuMicro generated code file
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Copyright (C) 2016-2023 Nuvoton Technology Corp. All rights reserved.
*****************************************************************************/

/********************
MCU:M032SE3AE(LQFP64)
Pin Configuration:
Pin16:UART0_TXD
Pin17:UART0_RXD
Pin33:ICE_DAT
Pin34:ICE_CLK
Module Configuration:
UART0_RXD(Pin:17)
UART0_TXD(Pin:16)
ICE_CLK(Pin:34)
ICE_DAT(Pin:33)
GPIO Configuration:
PF.0:ICE_DAT(Pin:33)
PF.1:ICE_CLK(Pin:34)
PF.2:UART0_RXD(Pin:17)
PF.3:UART0_TXD(Pin:16)
********************/

#include "MyProject.h"
#include "pin_conf.h"

void MyProject_init_ice(void)
{
    SYS->GPF_MFPL &= ~(SYS_GPF_MFPL_PF1MFP_Msk | SYS_GPF_MFPL_PF0MFP_Msk);
    SYS->GPF_MFPL |= (SYS_GPF_MFPL_PF1MFP_ICE_CLK | SYS_GPF_MFPL_PF0MFP_ICE_DAT);

    return;
}

void MyProject_deinit_ice(void)
{
    SYS->GPF_MFPL &= ~(SYS_GPF_MFPL_PF1MFP_Msk | SYS_GPF_MFPL_PF0MFP_Msk);

    return;
}

void MyProject_pin_init_uart0(void)
{
    SYS->GPF_MFPL &= ~(SYS_GPF_MFPL_PF3MFP_Msk | SYS_GPF_MFPL_PF2MFP_Msk);
    SYS->GPF_MFPL |= (SYS_GPF_MFPL_PF3MFP_UART0_TXD | SYS_GPF_MFPL_PF2MFP_UART0_RXD);

    return;
}

void MyProject_pin_deinit_uart0(void)
{
    SYS->GPF_MFPL &= ~(SYS_GPF_MFPL_PF3MFP_Msk | SYS_GPF_MFPL_PF2MFP_Msk);

    return;
}

void Pin_Init(void)
{
    //SYS->GPA_MFPH = 0x00000000UL;
    //SYS->GPA_MFPL = 0x00000000UL;
    //SYS->GPB_MFPH = 0x00000000UL;
    //SYS->GPB_MFPL = 0x00000000UL;
    //SYS->GPC_MFPH = 0x00000000UL;
    //SYS->GPC_MFPL = 0x00000000UL;
    //SYS->GPD_MFPH = 0x00000000UL;
    //SYS->GPD_MFPL = 0x00000000UL;
    //SYS->GPF_MFPH = 0x00000000UL;
    //SYS->GPF_MFPL = 0x000033EEUL;

    MyProject_init_ice();
    MyProject_pin_init_uart0();

    return;
}

void Pin_Deinit(void)
{
    MyProject_deinit_ice();
    MyProject_pin_deinit_uart0();

    return;
}

/*** (C) COPYRIGHT 2016-2023 Nuvoton Technology Corp. ***/
