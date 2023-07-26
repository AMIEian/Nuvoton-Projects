#ifndef __CONTROL_LOGIC_H__
#define __CONTROL_LOGIC_H__
#include "stdint.h"
#ifdef __cplusplus
extern "C"
{
	#endif
		void GetBoardID(void);
		void setPort_1(char value);
		void setPort_2(char value);
		void setPort_3(char value);
		void setPort_4(char value);
		void changePort1States(void);
		void changePort2States(void);
		void changePort3States(void);
		void changePort4States(void);
		void changePort1(void);
		void changePort2(void);
		void changePort3(void);
		void changePort4(void);
		void UART_LOGIC(uint8_t u8InChar);
		void TIMER0_LOGIC(void);
	#ifdef __cplusplus
}
#endif
#endif /*__CONTROL_LOGIC_H__*/


