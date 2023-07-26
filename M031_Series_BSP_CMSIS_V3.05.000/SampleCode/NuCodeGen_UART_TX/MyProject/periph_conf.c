#include "MyProject.h"
void UART0_Init()
{

    /* Configure UART0 and set UART0 baud rate */
    UART_Open(UART0, UART0_BAUD);

    /* Set Data Format*/
    UART_SetLine_Config(UART0, 0, UART_WORD_LEN_8, UART_PARITY_NONE, UART_STOP_BIT_1);

    /* RX FIFO Interrupt Trigger Level */
    UART0->FIFO = (UART0->FIFO & ~ UART_FIFO_RFITL_Msk) | UART_FIFO_RFITL_1BYTE;

}

void Periph_Init(void)
{

    UART0_Init();

}
