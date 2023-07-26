/****************************************************************************
 * @file     pin_conf.c
 * @version  V0.42
 * @Date     2023/06/03-19:15:57
 * @brief    NuMicro generated code file
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Copyright (C) 2016-2023 Nuvoton Technology Corp. All rights reserved.
*****************************************************************************/

/********************
MCU:M032SE3AE(LQFP64)
Pin Configuration:
Pin1:PB.6
Pin2:PB.5
Pin3:PB.4
Pin4:PB.3
Pin5:PB.2
Pin6:PB.1
Pin7:PB.0
Pin8:PA.11
Pin9:PA.10
Pin12:PF.6
Pin13:PF.14
Pin14:PF.5
Pin15:PF.4
Pin16:UART0_TXD
Pin17:UART0_RXD
Pin18:PC.7
Pin19:PC.6
Pin20:PA.7
Pin21:PA.6
Pin25:PA.5
Pin26:PA.4
Pin27:PA.3
Pin28:PA.2
Pin29:PA.1
Pin30:PA.0
Pin33:ICE_DAT
Pin34:ICE_CLK
Pin37:PC.3
Pin39:PC.1
Pin40:PC.0
Pin41:PD.3
Pin42:PD.2
Pin43:PD.1
Pin44:PD.0
Pin53:PB.15
Pin54:PB.14
Pin55:PB.13
Pin56:PB.12
Pin60:PB.11
Pin61:PB.10
Pin62:PB.9
Pin63:PB.8
Pin64:PB.7
Module Configuration:
PB.0(Pin:7)
PB.1(Pin:6)
PB.2(Pin:5)
PB.3(Pin:4)
PB.4(Pin:3)
PB.5(Pin:2)
PB.6(Pin:1)
PB.7(Pin:64)
PB.8(Pin:63)
PB.9(Pin:62)
PB.10(Pin:61)
PB.11(Pin:60)
PB.12(Pin:56)
PB.13(Pin:55)
PB.14(Pin:54)
PB.15(Pin:53)
PA.0(Pin:30)
PA.1(Pin:29)
PA.2(Pin:28)
PA.3(Pin:27)
PA.4(Pin:26)
PA.5(Pin:25)
PA.6(Pin:21)
PA.7(Pin:20)
PA.10(Pin:9)
PA.11(Pin:8)
PF.4(Pin:15)
PF.5(Pin:14)
PF.6(Pin:12)
PF.14(Pin:13)
UART0_RXD(Pin:17)
UART0_TXD(Pin:16)
PC.0(Pin:40)
PC.1(Pin:39)
PC.3(Pin:37)
PC.6(Pin:19)
PC.7(Pin:18)
ICE_CLK(Pin:34)
ICE_DAT(Pin:33)
PD.0(Pin:44)
PD.1(Pin:43)
PD.2(Pin:42)
PD.3(Pin:41)
GPIO Configuration:
PA.0:PA.0(Pin:30)
PA.1:PA.1(Pin:29)
PA.2:PA.2(Pin:28)
PA.3:PA.3(Pin:27)
PA.4:PA.4(Pin:26)
PA.5:PA.5(Pin:25)
PA.6:PA.6(Pin:21)
PA.7:PA.7(Pin:20)
PA.10:PA.10(Pin:9)
PA.11:PA.11(Pin:8)
PB.0:PB.0(Pin:7)
PB.1:PB.1(Pin:6)
PB.2:PB.2(Pin:5)
PB.3:PB.3(Pin:4)
PB.4:PB.4(Pin:3)
PB.5:PB.5(Pin:2)
PB.6:PB.6(Pin:1)
PB.7:PB.7(Pin:64)
PB.8:PB.8(Pin:63)
PB.9:PB.9(Pin:62)
PB.10:PB.10(Pin:61)
PB.11:PB.11(Pin:60)
PB.12:PB.12(Pin:56)
PB.13:PB.13(Pin:55)
PB.14:PB.14(Pin:54)
PB.15:PB.15(Pin:53)
PC.0:PC.0(Pin:40)
PC.1:PC.1(Pin:39)
PC.3:PC.3(Pin:37)
PC.6:PC.6(Pin:19)
PC.7:PC.7(Pin:18)
PD.0:PD.0(Pin:44)
PD.1:PD.1(Pin:43)
PD.2:PD.2(Pin:42)
PD.3:PD.3(Pin:41)
PF.0:ICE_DAT(Pin:33)
PF.1:ICE_CLK(Pin:34)
PF.2:UART0_RXD(Pin:17)
PF.3:UART0_TXD(Pin:16)
PF.4:PF.4(Pin:15)
PF.5:PF.5(Pin:14)
PF.6:PF.6(Pin:12)
PF.14:PF.14(Pin:13)
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

void MyProject_init_pa(void)
{
    SYS->GPA_MFPH &= ~(SYS_GPA_MFPH_PA11MFP_Msk | SYS_GPA_MFPH_PA10MFP_Msk);
    SYS->GPA_MFPH |= (SYS_GPA_MFPH_PA11MFP_GPIO | SYS_GPA_MFPH_PA10MFP_GPIO);
    SYS->GPA_MFPL &= ~(SYS_GPA_MFPL_PA7MFP_Msk | SYS_GPA_MFPL_PA6MFP_Msk | SYS_GPA_MFPL_PA5MFP_Msk | SYS_GPA_MFPL_PA4MFP_Msk | SYS_GPA_MFPL_PA3MFP_Msk | SYS_GPA_MFPL_PA2MFP_Msk | SYS_GPA_MFPL_PA1MFP_Msk |
                       SYS_GPA_MFPL_PA0MFP_Msk);
    SYS->GPA_MFPL |= (SYS_GPA_MFPL_PA7MFP_GPIO | SYS_GPA_MFPL_PA6MFP_GPIO | SYS_GPA_MFPL_PA5MFP_GPIO | SYS_GPA_MFPL_PA4MFP_GPIO | SYS_GPA_MFPL_PA3MFP_GPIO | SYS_GPA_MFPL_PA2MFP_GPIO |
                      SYS_GPA_MFPL_PA1MFP_GPIO | SYS_GPA_MFPL_PA0MFP_GPIO);

    return;
}

void MyProject_deinit_pa(void)
{
    SYS->GPA_MFPH &= ~(SYS_GPA_MFPH_PA11MFP_Msk | SYS_GPA_MFPH_PA10MFP_Msk);
    SYS->GPA_MFPL &= ~(SYS_GPA_MFPL_PA7MFP_Msk | SYS_GPA_MFPL_PA6MFP_Msk | SYS_GPA_MFPL_PA5MFP_Msk | SYS_GPA_MFPL_PA4MFP_Msk | SYS_GPA_MFPL_PA3MFP_Msk | SYS_GPA_MFPL_PA2MFP_Msk | SYS_GPA_MFPL_PA1MFP_Msk |
                       SYS_GPA_MFPL_PA0MFP_Msk);

    return;
}

void MyProject_init_pb(void)
{
    SYS->GPB_MFPH &= ~(SYS_GPB_MFPH_PB15MFP_Msk | SYS_GPB_MFPH_PB14MFP_Msk | SYS_GPB_MFPH_PB13MFP_Msk | SYS_GPB_MFPH_PB12MFP_Msk | SYS_GPB_MFPH_PB11MFP_Msk | SYS_GPB_MFPH_PB10MFP_Msk |
                       SYS_GPB_MFPH_PB9MFP_Msk | SYS_GPB_MFPH_PB8MFP_Msk);
    SYS->GPB_MFPH |= (SYS_GPB_MFPH_PB15MFP_GPIO | SYS_GPB_MFPH_PB14MFP_GPIO | SYS_GPB_MFPH_PB13MFP_GPIO | SYS_GPB_MFPH_PB12MFP_GPIO | SYS_GPB_MFPH_PB11MFP_GPIO | SYS_GPB_MFPH_PB10MFP_GPIO |
                      SYS_GPB_MFPH_PB9MFP_GPIO | SYS_GPB_MFPH_PB8MFP_GPIO);
    SYS->GPB_MFPL &= ~(SYS_GPB_MFPL_PB7MFP_Msk | SYS_GPB_MFPL_PB6MFP_Msk | SYS_GPB_MFPL_PB5MFP_Msk | SYS_GPB_MFPL_PB4MFP_Msk | SYS_GPB_MFPL_PB3MFP_Msk | SYS_GPB_MFPL_PB2MFP_Msk | SYS_GPB_MFPL_PB1MFP_Msk |
                       SYS_GPB_MFPL_PB0MFP_Msk);
    SYS->GPB_MFPL |= (SYS_GPB_MFPL_PB7MFP_GPIO | SYS_GPB_MFPL_PB6MFP_GPIO | SYS_GPB_MFPL_PB5MFP_GPIO | SYS_GPB_MFPL_PB4MFP_GPIO | SYS_GPB_MFPL_PB3MFP_GPIO | SYS_GPB_MFPL_PB2MFP_GPIO |
                      SYS_GPB_MFPL_PB1MFP_GPIO | SYS_GPB_MFPL_PB0MFP_GPIO);

    return;
}

void MyProject_deinit_pb(void)
{
    SYS->GPB_MFPH &= ~(SYS_GPB_MFPH_PB15MFP_Msk | SYS_GPB_MFPH_PB14MFP_Msk | SYS_GPB_MFPH_PB13MFP_Msk | SYS_GPB_MFPH_PB12MFP_Msk | SYS_GPB_MFPH_PB11MFP_Msk | SYS_GPB_MFPH_PB10MFP_Msk |
                       SYS_GPB_MFPH_PB9MFP_Msk | SYS_GPB_MFPH_PB8MFP_Msk);
    SYS->GPB_MFPL &= ~(SYS_GPB_MFPL_PB7MFP_Msk | SYS_GPB_MFPL_PB6MFP_Msk | SYS_GPB_MFPL_PB5MFP_Msk | SYS_GPB_MFPL_PB4MFP_Msk | SYS_GPB_MFPL_PB3MFP_Msk | SYS_GPB_MFPL_PB2MFP_Msk | SYS_GPB_MFPL_PB1MFP_Msk |
                       SYS_GPB_MFPL_PB0MFP_Msk);

    return;
}

void MyProject_init_pc(void)
{
    SYS->GPC_MFPL &= ~(SYS_GPC_MFPL_PC7MFP_Msk | SYS_GPC_MFPL_PC6MFP_Msk | SYS_GPC_MFPL_PC3MFP_Msk | SYS_GPC_MFPL_PC1MFP_Msk | SYS_GPC_MFPL_PC0MFP_Msk);
    SYS->GPC_MFPL |= (SYS_GPC_MFPL_PC7MFP_GPIO | SYS_GPC_MFPL_PC6MFP_GPIO | SYS_GPC_MFPL_PC3MFP_GPIO | SYS_GPC_MFPL_PC1MFP_GPIO | SYS_GPC_MFPL_PC0MFP_GPIO);

    return;
}

void MyProject_deinit_pc(void)
{
    SYS->GPC_MFPL &= ~(SYS_GPC_MFPL_PC7MFP_Msk | SYS_GPC_MFPL_PC6MFP_Msk | SYS_GPC_MFPL_PC3MFP_Msk | SYS_GPC_MFPL_PC1MFP_Msk | SYS_GPC_MFPL_PC0MFP_Msk);

    return;
}

void MyProject_init_pd(void)
{
    SYS->GPD_MFPL &= ~(SYS_GPD_MFPL_PD3MFP_Msk | SYS_GPD_MFPL_PD2MFP_Msk | SYS_GPD_MFPL_PD1MFP_Msk | SYS_GPD_MFPL_PD0MFP_Msk);
    SYS->GPD_MFPL |= (SYS_GPD_MFPL_PD3MFP_GPIO | SYS_GPD_MFPL_PD2MFP_GPIO | SYS_GPD_MFPL_PD1MFP_GPIO | SYS_GPD_MFPL_PD0MFP_GPIO);

    return;
}

void MyProject_deinit_pd(void)
{
    SYS->GPD_MFPL &= ~(SYS_GPD_MFPL_PD3MFP_Msk | SYS_GPD_MFPL_PD2MFP_Msk | SYS_GPD_MFPL_PD1MFP_Msk | SYS_GPD_MFPL_PD0MFP_Msk);

    return;
}

void MyProject_init_pf(void)
{
    SYS->GPF_MFPH &= ~(SYS_GPF_MFPH_PF14MFP_Msk);
    SYS->GPF_MFPH |= (SYS_GPF_MFPH_PF14MFP_GPIO);
    SYS->GPF_MFPL &= ~(SYS_GPF_MFPL_PF6MFP_Msk | SYS_GPF_MFPL_PF5MFP_Msk | SYS_GPF_MFPL_PF4MFP_Msk);
    SYS->GPF_MFPL |= (SYS_GPF_MFPL_PF6MFP_GPIO | SYS_GPF_MFPL_PF5MFP_GPIO | SYS_GPF_MFPL_PF4MFP_GPIO);

    return;
}

void MyProject_deinit_pf(void)
{
    SYS->GPF_MFPH &= ~(SYS_GPF_MFPH_PF14MFP_Msk);
    SYS->GPF_MFPL &= ~(SYS_GPF_MFPL_PF6MFP_Msk | SYS_GPF_MFPL_PF5MFP_Msk | SYS_GPF_MFPL_PF4MFP_Msk);

    return;
}

void MyProject_init_uart0(void)
{
    SYS->GPF_MFPL &= ~(SYS_GPF_MFPL_PF3MFP_Msk | SYS_GPF_MFPL_PF2MFP_Msk);
    SYS->GPF_MFPL |= (SYS_GPF_MFPL_PF3MFP_UART0_TXD | SYS_GPF_MFPL_PF2MFP_UART0_RXD);

    return;
}

void MyProject_deinit_uart0(void)
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
    MyProject_init_pa();
    MyProject_init_pb();
    MyProject_init_pc();
    MyProject_init_pd();
    MyProject_init_pf();
    MyProject_init_uart0();

    return;
}

void Pin_Deinit(void)
{
    MyProject_deinit_ice();
    MyProject_deinit_pa();
    MyProject_deinit_pb();
    MyProject_deinit_pc();
    MyProject_deinit_pd();
    MyProject_deinit_pf();
    MyProject_deinit_uart0();

    return;
}

/*** (C) COPYRIGHT 2016-2023 Nuvoton Technology Corp. ***/
