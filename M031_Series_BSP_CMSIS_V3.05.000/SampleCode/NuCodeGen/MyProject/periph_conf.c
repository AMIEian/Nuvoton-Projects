#include "MyProject.h"
/*--------------------------------------------------------------------------------------------*/
/* GPIO                                                                                     */
/*--------------------------------------------------------------------------------------------*/
void GPIO_Init()
{
    volatile const uint32_t u32RegDefault = 0;

    GPIO_SET_DEBOUNCE_TIME(GPIO_DBCTL_DBCLKSRC_HCLK, GPIO_DBCTL_DBCLKSEL_32768);

    //GPIO_PA disable digital input path
    PA->DINOFF =

        (0 << GPIO_DINOFF_DINOFF0_Pos) |

        (1 << GPIO_DINOFF_DINOFF1_Pos) |

        (1 << GPIO_DINOFF_DINOFF2_Pos) |

        (1 << GPIO_DINOFF_DINOFF3_Pos) |

        (1 << GPIO_DINOFF_DINOFF4_Pos) |

        (1 << GPIO_DINOFF_DINOFF5_Pos) |

        (1 << GPIO_DINOFF_DINOFF6_Pos) |

        (1 << GPIO_DINOFF_DINOFF7_Pos) |

        (1 << GPIO_DINOFF_DINOFF10_Pos) |

        (1 << GPIO_DINOFF_DINOFF11_Pos) |

        u32RegDefault;

    //GPIO_PA out data
    PA->DOUT =

        (0 << GPIO_DOUT_DOUT0_Pos) |

        (0 << GPIO_DOUT_DOUT1_Pos) |

        (0 << GPIO_DOUT_DOUT2_Pos) |

        (0 << GPIO_DOUT_DOUT3_Pos) |

        (0 << GPIO_DOUT_DOUT4_Pos) |

        (0 << GPIO_DOUT_DOUT5_Pos) |

        (0 << GPIO_DOUT_DOUT6_Pos) |

        (0 << GPIO_DOUT_DOUT7_Pos) |

        (0 << GPIO_DOUT_DOUT10_Pos) |

        (0 << GPIO_DOUT_DOUT11_Pos) |

        u32RegDefault;

    //GPIO_PA DOUT mask
    PA->DATMSK =

        (1 << GPIO_DATMSK_DATMSK0_Pos) |

        (1 << GPIO_DATMSK_DATMSK1_Pos) |

        (1 << GPIO_DATMSK_DATMSK2_Pos) |

        (1 << GPIO_DATMSK_DATMSK3_Pos) |

        (1 << GPIO_DATMSK_DATMSK4_Pos) |

        (1 << GPIO_DATMSK_DATMSK5_Pos) |

        (1 << GPIO_DATMSK_DATMSK6_Pos) |

        (1 << GPIO_DATMSK_DATMSK7_Pos) |

        (1 << GPIO_DATMSK_DATMSK10_Pos) |

        (1 << GPIO_DATMSK_DATMSK11_Pos) |

        u32RegDefault;

    //GPIO_PA mode
    PA->MODE =

        (0x1UL << GPIO_MODE_MODE0_Pos) |

        (0x1UL << GPIO_MODE_MODE1_Pos) |

        (0x1UL << GPIO_MODE_MODE2_Pos) |

        (0x1UL << GPIO_MODE_MODE3_Pos) |

        (0x1UL << GPIO_MODE_MODE4_Pos) |

        (0x1UL << GPIO_MODE_MODE5_Pos) |

        (0x1UL << GPIO_MODE_MODE6_Pos) |

        (0x1UL << GPIO_MODE_MODE7_Pos) |

        (0x1UL << GPIO_MODE_MODE10_Pos) |

        (0x1UL << GPIO_MODE_MODE11_Pos) |

        u32RegDefault;

    //GPIO_PA enable de-bounce
    PA->DBEN =

        (0 << GPIO_DBEN_DBEN0_Pos) |

        (0 << GPIO_DBEN_DBEN1_Pos) |

        (0 << GPIO_DBEN_DBEN2_Pos) |

        (0 << GPIO_DBEN_DBEN3_Pos) |

        (0 << GPIO_DBEN_DBEN4_Pos) |

        (0 << GPIO_DBEN_DBEN5_Pos) |

        (0 << GPIO_DBEN_DBEN6_Pos) |

        (0 << GPIO_DBEN_DBEN7_Pos) |

        (0 << GPIO_DBEN_DBEN10_Pos) |

        (0 << GPIO_DBEN_DBEN11_Pos) |

        u32RegDefault;

    //GPIO_PA edge or level interrupt
    PA->INTTYPE =

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE0_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE1_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE2_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE3_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE4_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE5_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE6_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE7_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE10_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE11_Pos) |

        u32RegDefault;

    //GPIO_PA enable falling(edge) or low(level) interrupt
    PA->INTEN =

        (0 << GPIO_INTEN_FLIEN0_Pos) |

        (0 << GPIO_INTEN_FLIEN1_Pos) |

        (0 << GPIO_INTEN_FLIEN2_Pos) |

        (0 << GPIO_INTEN_FLIEN3_Pos) |

        (0 << GPIO_INTEN_FLIEN4_Pos) |

        (0 << GPIO_INTEN_FLIEN5_Pos) |

        (0 << GPIO_INTEN_FLIEN6_Pos) |

        (0 << GPIO_INTEN_FLIEN7_Pos) |

        (0 << GPIO_INTEN_FLIEN10_Pos) |

        (0 << GPIO_INTEN_FLIEN11_Pos) |

        u32RegDefault;

    //GPIO_PA enable rising(edge) or high(level) interrupt
    PA->INTEN |=

        (0 << GPIO_INTEN_RHIEN0_Pos) |

        (0 << GPIO_INTEN_RHIEN1_Pos) |

        (0 << GPIO_INTEN_RHIEN2_Pos) |

        (0 << GPIO_INTEN_RHIEN3_Pos) |

        (0 << GPIO_INTEN_RHIEN4_Pos) |

        (0 << GPIO_INTEN_RHIEN5_Pos) |

        (0 << GPIO_INTEN_RHIEN6_Pos) |

        (0 << GPIO_INTEN_RHIEN7_Pos) |

        (0 << GPIO_INTEN_RHIEN10_Pos) |

        (0 << GPIO_INTEN_RHIEN11_Pos) |

        u32RegDefault;

    //GPIO_PB disable digital input path
    PB->DINOFF =

        (1 << GPIO_DINOFF_DINOFF0_Pos) |

        (1 << GPIO_DINOFF_DINOFF1_Pos) |

        (1 << GPIO_DINOFF_DINOFF2_Pos) |

        (1 << GPIO_DINOFF_DINOFF3_Pos) |

        (1 << GPIO_DINOFF_DINOFF4_Pos) |

        (1 << GPIO_DINOFF_DINOFF5_Pos) |

        (1 << GPIO_DINOFF_DINOFF6_Pos) |

        (1 << GPIO_DINOFF_DINOFF7_Pos) |

        (1 << GPIO_DINOFF_DINOFF8_Pos) |

        (1 << GPIO_DINOFF_DINOFF9_Pos) |

        (1 << GPIO_DINOFF_DINOFF10_Pos) |

        (1 << GPIO_DINOFF_DINOFF11_Pos) |

        (1 << GPIO_DINOFF_DINOFF12_Pos) |

        (1 << GPIO_DINOFF_DINOFF13_Pos) |

        (1 << GPIO_DINOFF_DINOFF14_Pos) |

        ((uint64_t)1 << GPIO_DINOFF_DINOFF15_Pos) |

        u32RegDefault;

    //GPIO_PB out data
    PB->DOUT =

        (0 << GPIO_DOUT_DOUT0_Pos) |

        (0 << GPIO_DOUT_DOUT1_Pos) |

        (0 << GPIO_DOUT_DOUT2_Pos) |

        (0 << GPIO_DOUT_DOUT3_Pos) |

        (0 << GPIO_DOUT_DOUT4_Pos) |

        (0 << GPIO_DOUT_DOUT5_Pos) |

        (0 << GPIO_DOUT_DOUT6_Pos) |

        (0 << GPIO_DOUT_DOUT7_Pos) |

        (0 << GPIO_DOUT_DOUT8_Pos) |

        (0 << GPIO_DOUT_DOUT9_Pos) |

        (0 << GPIO_DOUT_DOUT10_Pos) |

        (0 << GPIO_DOUT_DOUT11_Pos) |

        (0 << GPIO_DOUT_DOUT12_Pos) |

        (0 << GPIO_DOUT_DOUT13_Pos) |

        (0 << GPIO_DOUT_DOUT14_Pos) |

        ((uint64_t)0 << GPIO_DOUT_DOUT15_Pos) |

        u32RegDefault;

    //GPIO_PB DOUT mask
    PB->DATMSK =

        (1 << GPIO_DATMSK_DATMSK0_Pos) |

        (1 << GPIO_DATMSK_DATMSK1_Pos) |

        (1 << GPIO_DATMSK_DATMSK2_Pos) |

        (1 << GPIO_DATMSK_DATMSK3_Pos) |

        (1 << GPIO_DATMSK_DATMSK4_Pos) |

        (1 << GPIO_DATMSK_DATMSK5_Pos) |

        (1 << GPIO_DATMSK_DATMSK6_Pos) |

        (1 << GPIO_DATMSK_DATMSK7_Pos) |

        (1 << GPIO_DATMSK_DATMSK8_Pos) |

        (1 << GPIO_DATMSK_DATMSK9_Pos) |

        (1 << GPIO_DATMSK_DATMSK10_Pos) |

        (1 << GPIO_DATMSK_DATMSK11_Pos) |

        (1 << GPIO_DATMSK_DATMSK12_Pos) |

        (1 << GPIO_DATMSK_DATMSK13_Pos) |

        (1 << GPIO_DATMSK_DATMSK14_Pos) |

        ((uint64_t)1 << GPIO_DATMSK_DATMSK15_Pos) |

        u32RegDefault;

    //GPIO_PB mode
    PB->MODE =

        (0x1UL << GPIO_MODE_MODE0_Pos) |

        (0x1UL << GPIO_MODE_MODE1_Pos) |

        (0x1UL << GPIO_MODE_MODE2_Pos) |

        (0x1UL << GPIO_MODE_MODE3_Pos) |

        (0x1UL << GPIO_MODE_MODE4_Pos) |

        (0x1UL << GPIO_MODE_MODE5_Pos) |

        (0x1UL << GPIO_MODE_MODE6_Pos) |

        (0x1UL << GPIO_MODE_MODE7_Pos) |

        (0x1UL << GPIO_MODE_MODE8_Pos) |

        (0x1UL << GPIO_MODE_MODE9_Pos) |

        (0x1UL << GPIO_MODE_MODE10_Pos) |

        (0x1UL << GPIO_MODE_MODE11_Pos) |

        (0x1UL << GPIO_MODE_MODE12_Pos) |

        (0x1UL << GPIO_MODE_MODE13_Pos) |

        (0x1UL << GPIO_MODE_MODE14_Pos) |

        ((uint64_t)0x1UL << GPIO_MODE_MODE15_Pos) |

        u32RegDefault;

    //GPIO_PB enable de-bounce
    PB->DBEN =

        (0 << GPIO_DBEN_DBEN0_Pos) |

        (0 << GPIO_DBEN_DBEN1_Pos) |

        (0 << GPIO_DBEN_DBEN2_Pos) |

        (0 << GPIO_DBEN_DBEN3_Pos) |

        (0 << GPIO_DBEN_DBEN4_Pos) |

        (0 << GPIO_DBEN_DBEN5_Pos) |

        (0 << GPIO_DBEN_DBEN6_Pos) |

        (0 << GPIO_DBEN_DBEN7_Pos) |

        (0 << GPIO_DBEN_DBEN8_Pos) |

        (0 << GPIO_DBEN_DBEN9_Pos) |

        (0 << GPIO_DBEN_DBEN10_Pos) |

        (0 << GPIO_DBEN_DBEN11_Pos) |

        (0 << GPIO_DBEN_DBEN12_Pos) |

        (0 << GPIO_DBEN_DBEN13_Pos) |

        (0 << GPIO_DBEN_DBEN14_Pos) |

        ((uint64_t)0 << GPIO_DBEN_DBEN15_Pos) |

        u32RegDefault;

    //GPIO_PB edge or level interrupt
    PB->INTTYPE =

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE0_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE1_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE2_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE3_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE4_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE5_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE6_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE7_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE8_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE9_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE10_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE11_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE12_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE13_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE14_Pos) |

        ((uint64_t)GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE15_Pos) |

        u32RegDefault;

    //GPIO_PB enable falling(edge) or low(level) interrupt
    PB->INTEN =

        (0 << GPIO_INTEN_FLIEN0_Pos) |

        (0 << GPIO_INTEN_FLIEN1_Pos) |

        (0 << GPIO_INTEN_FLIEN2_Pos) |

        (0 << GPIO_INTEN_FLIEN3_Pos) |

        (0 << GPIO_INTEN_FLIEN4_Pos) |

        (0 << GPIO_INTEN_FLIEN5_Pos) |

        (0 << GPIO_INTEN_FLIEN6_Pos) |

        (0 << GPIO_INTEN_FLIEN7_Pos) |

        (0 << GPIO_INTEN_FLIEN8_Pos) |

        (0 << GPIO_INTEN_FLIEN9_Pos) |

        (0 << GPIO_INTEN_FLIEN10_Pos) |

        (0 << GPIO_INTEN_FLIEN11_Pos) |

        (0 << GPIO_INTEN_FLIEN12_Pos) |

        (0 << GPIO_INTEN_FLIEN13_Pos) |

        (0 << GPIO_INTEN_FLIEN14_Pos) |

        ((uint64_t)0 << GPIO_INTEN_FLIEN15_Pos) |

        u32RegDefault;

    //GPIO_PB enable rising(edge) or high(level) interrupt
    PB->INTEN |=

        (0 << GPIO_INTEN_RHIEN0_Pos) |

        (0 << GPIO_INTEN_RHIEN1_Pos) |

        (0 << GPIO_INTEN_RHIEN2_Pos) |

        (0 << GPIO_INTEN_RHIEN3_Pos) |

        (0 << GPIO_INTEN_RHIEN4_Pos) |

        (0 << GPIO_INTEN_RHIEN5_Pos) |

        (0 << GPIO_INTEN_RHIEN6_Pos) |

        (0 << GPIO_INTEN_RHIEN7_Pos) |

        (0 << GPIO_INTEN_RHIEN8_Pos) |

        (0 << GPIO_INTEN_RHIEN9_Pos) |

        (0 << GPIO_INTEN_RHIEN10_Pos) |

        (0 << GPIO_INTEN_RHIEN11_Pos) |

        (0 << GPIO_INTEN_RHIEN12_Pos) |

        (0 << GPIO_INTEN_RHIEN13_Pos) |

        (0 << GPIO_INTEN_RHIEN14_Pos) |

        ((uint64_t)0 << GPIO_INTEN_RHIEN15_Pos) |

        u32RegDefault;

    //GPIO_PC disable digital input path
    PC->DINOFF =

        (0 << GPIO_DINOFF_DINOFF0_Pos) |

        (0 << GPIO_DINOFF_DINOFF1_Pos) |

        (1 << GPIO_DINOFF_DINOFF3_Pos) |

        (1 << GPIO_DINOFF_DINOFF6_Pos) |

        (1 << GPIO_DINOFF_DINOFF7_Pos) |

        u32RegDefault;

    //GPIO_PC out data
    PC->DOUT =

        (1 << GPIO_DOUT_DOUT0_Pos) |

        (1 << GPIO_DOUT_DOUT1_Pos) |

        (0 << GPIO_DOUT_DOUT3_Pos) |

        (0 << GPIO_DOUT_DOUT6_Pos) |

        (0 << GPIO_DOUT_DOUT7_Pos) |

        u32RegDefault;

    //GPIO_PC DOUT mask
    PC->DATMSK =

        (0 << GPIO_DATMSK_DATMSK0_Pos) |

        (0 << GPIO_DATMSK_DATMSK1_Pos) |

        (1 << GPIO_DATMSK_DATMSK3_Pos) |

        (1 << GPIO_DATMSK_DATMSK6_Pos) |

        (1 << GPIO_DATMSK_DATMSK7_Pos) |

        u32RegDefault;

    //GPIO_PC mode
    PC->MODE =

        (0x0UL << GPIO_MODE_MODE0_Pos) |

        (0x0UL << GPIO_MODE_MODE1_Pos) |

        (0x1UL << GPIO_MODE_MODE3_Pos) |

        (0x1UL << GPIO_MODE_MODE6_Pos) |

        (0x1UL << GPIO_MODE_MODE7_Pos) |

        u32RegDefault;

    //GPIO_PC enable de-bounce
    PC->DBEN =

        (1 << GPIO_DBEN_DBEN0_Pos) |

        (1 << GPIO_DBEN_DBEN1_Pos) |

        (0 << GPIO_DBEN_DBEN3_Pos) |

        (0 << GPIO_DBEN_DBEN6_Pos) |

        (0 << GPIO_DBEN_DBEN7_Pos) |

        u32RegDefault;

    //GPIO_PC edge or level interrupt
    PC->INTTYPE =

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE0_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE1_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE3_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE6_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE7_Pos) |

        u32RegDefault;

    //GPIO_PC enable falling(edge) or low(level) interrupt
    PC->INTEN =

        (0 << GPIO_INTEN_FLIEN0_Pos) |

        (0 << GPIO_INTEN_FLIEN1_Pos) |

        (0 << GPIO_INTEN_FLIEN3_Pos) |

        (0 << GPIO_INTEN_FLIEN6_Pos) |

        (0 << GPIO_INTEN_FLIEN7_Pos) |

        u32RegDefault;

    //GPIO_PC enable rising(edge) or high(level) interrupt
    PC->INTEN |=

        (0 << GPIO_INTEN_RHIEN0_Pos) |

        (0 << GPIO_INTEN_RHIEN1_Pos) |

        (0 << GPIO_INTEN_RHIEN3_Pos) |

        (0 << GPIO_INTEN_RHIEN6_Pos) |

        (0 << GPIO_INTEN_RHIEN7_Pos) |

        u32RegDefault;

    //GPIO_PD disable digital input path
    PD->DINOFF =

        (0 << GPIO_DINOFF_DINOFF0_Pos) |

        (0 << GPIO_DINOFF_DINOFF1_Pos) |

        (0 << GPIO_DINOFF_DINOFF2_Pos) |

        (0 << GPIO_DINOFF_DINOFF3_Pos) |

        u32RegDefault;

    //GPIO_PD out data
    PD->DOUT =

        (1 << GPIO_DOUT_DOUT0_Pos) |

        (1 << GPIO_DOUT_DOUT1_Pos) |

        (1 << GPIO_DOUT_DOUT2_Pos) |

        (1 << GPIO_DOUT_DOUT3_Pos) |

        u32RegDefault;

    //GPIO_PD DOUT mask
    PD->DATMSK =

        (0 << GPIO_DATMSK_DATMSK0_Pos) |

        (0 << GPIO_DATMSK_DATMSK1_Pos) |

        (0 << GPIO_DATMSK_DATMSK2_Pos) |

        (0 << GPIO_DATMSK_DATMSK3_Pos) |

        u32RegDefault;

    //GPIO_PD mode
    PD->MODE =

        (0x0UL << GPIO_MODE_MODE0_Pos) |

        (0x0UL << GPIO_MODE_MODE1_Pos) |

        (0x0UL << GPIO_MODE_MODE2_Pos) |

        (0x0UL << GPIO_MODE_MODE3_Pos) |

        u32RegDefault;

    //GPIO_PD enable de-bounce
    PD->DBEN =

        (1 << GPIO_DBEN_DBEN0_Pos) |

        (1 << GPIO_DBEN_DBEN1_Pos) |

        (1 << GPIO_DBEN_DBEN2_Pos) |

        (1 << GPIO_DBEN_DBEN3_Pos) |

        u32RegDefault;

    //GPIO_PD edge or level interrupt
    PD->INTTYPE =

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE0_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE1_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE2_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE3_Pos) |

        u32RegDefault;

    //GPIO_PD enable falling(edge) or low(level) interrupt
    PD->INTEN =

        (0 << GPIO_INTEN_FLIEN0_Pos) |

        (0 << GPIO_INTEN_FLIEN1_Pos) |

        (0 << GPIO_INTEN_FLIEN2_Pos) |

        (0 << GPIO_INTEN_FLIEN3_Pos) |

        u32RegDefault;

    //GPIO_PD enable rising(edge) or high(level) interrupt
    PD->INTEN |=

        (0 << GPIO_INTEN_RHIEN0_Pos) |

        (0 << GPIO_INTEN_RHIEN1_Pos) |

        (0 << GPIO_INTEN_RHIEN2_Pos) |

        (0 << GPIO_INTEN_RHIEN3_Pos) |

        u32RegDefault;

    //GPIO_PF disable digital input path
    PF->DINOFF =

        (1 << GPIO_DINOFF_DINOFF4_Pos) |

        (1 << GPIO_DINOFF_DINOFF5_Pos) |

        (1 << GPIO_DINOFF_DINOFF6_Pos) |

        (1 << GPIO_DINOFF_DINOFF14_Pos) |

        u32RegDefault;

    //GPIO_PF out data
    PF->DOUT =

        (0 << GPIO_DOUT_DOUT4_Pos) |

        (0 << GPIO_DOUT_DOUT5_Pos) |

        (0 << GPIO_DOUT_DOUT6_Pos) |

        (0 << GPIO_DOUT_DOUT14_Pos) |

        u32RegDefault;

    //GPIO_PF DOUT mask
    PF->DATMSK =

        (1 << GPIO_DATMSK_DATMSK4_Pos) |

        (1 << GPIO_DATMSK_DATMSK5_Pos) |

        (1 << GPIO_DATMSK_DATMSK6_Pos) |

        (1 << GPIO_DATMSK_DATMSK14_Pos) |

        u32RegDefault;

    //GPIO_PF mode
    PF->MODE =

        (0x1UL << GPIO_MODE_MODE4_Pos) |

        (0x1UL << GPIO_MODE_MODE5_Pos) |

        (0x1UL << GPIO_MODE_MODE6_Pos) |

        (0x1UL << GPIO_MODE_MODE14_Pos) |

        u32RegDefault;

    //GPIO_PF enable de-bounce
    PF->DBEN =

        (0 << GPIO_DBEN_DBEN4_Pos) |

        (0 << GPIO_DBEN_DBEN5_Pos) |

        (0 << GPIO_DBEN_DBEN6_Pos) |

        (0 << GPIO_DBEN_DBEN14_Pos) |

        u32RegDefault;

    //GPIO_PF edge or level interrupt
    PF->INTTYPE =

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE4_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE5_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE6_Pos) |

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE14_Pos) |

        u32RegDefault;

    //GPIO_PF enable falling(edge) or low(level) interrupt
    PF->INTEN =

        (0 << GPIO_INTEN_FLIEN4_Pos) |

        (0 << GPIO_INTEN_FLIEN5_Pos) |

        (0 << GPIO_INTEN_FLIEN6_Pos) |

        (0 << GPIO_INTEN_FLIEN14_Pos) |

        u32RegDefault;

    //GPIO_PF enable rising(edge) or high(level) interrupt
    PF->INTEN |=

        (0 << GPIO_INTEN_RHIEN4_Pos) |

        (0 << GPIO_INTEN_RHIEN5_Pos) |

        (0 << GPIO_INTEN_RHIEN6_Pos) |

        (0 << GPIO_INTEN_RHIEN14_Pos) |

        u32RegDefault;

}
void TIMER0_Init()
{
    TIMER_Open(TIMER0, TIMER0_MODE, TIMER0_FREQ);

#if (TIMER0_MODE == TIMER_TOGGLE_MODE)
    TIMER_SELECT_TOUT_PIN(TIMER0, TIMER_TOUT_PIN_FROM_TX);
#endif

    // Enable timer time-out interrupt
    TIMER_EnableInt(TIMER0);

    NVIC_EnableIRQ(TMR0_IRQn);

}
void UART0_Init()
{

    /* Configure UART0 and set UART0 baud rate */
    UART_Open(UART0, UART0_BAUD);

    /* Set Data Format*/
    UART_SetLine_Config(UART0, 0, UART_WORD_LEN_8, UART_PARITY_NONE, UART_STOP_BIT_1);

    /* Enable UART0 Interrupt */
    UART_EnableInt(UART0, (UART_INTEN_RDAIEN_Msk));

    /* RX FIFO Interrupt Trigger Level */
    UART0->FIFO = (UART0->FIFO & ~ UART_FIFO_RFITL_Msk) | UART_FIFO_RFITL_1BYTE;

    /*Enable UART0 IRQ Handler */
    NVIC_EnableIRQ(UART02_IRQn);

}

void Periph_Init(void)
{

    UART0_Init();

    GPIO_Init();

    TIMER0_Init();

}
