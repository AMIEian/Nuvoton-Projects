#line 1 "..\\control_logic.c"
#line 1 "..\\MyProject.h"








 
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
 
 
 





 






 







 




  
 








#line 47 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


  



    typedef unsigned int size_t;    









 
 

 



    typedef struct __va_list __va_list;






   




 




typedef struct __fpos_t_struct {
    unsigned __int64 __pos;
    



 
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
   


 


   

 

typedef struct __FILE FILE;
   






 

#line 136 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;

#line 166 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






extern __declspec(__nothrow) int remove(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int rename(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) FILE *tmpfile(void);
   




 
extern __declspec(__nothrow) char *tmpnam(char *  );
   











 

extern __declspec(__nothrow) int fclose(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) int fflush(FILE *  );
   







 
extern __declspec(__nothrow) FILE *fopen(const char * __restrict  ,
                           const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   








































 
extern __declspec(__nothrow) FILE *freopen(const char * __restrict  ,
                    const char * __restrict  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(2,3)));
   








 
extern __declspec(__nothrow) void setbuf(FILE * __restrict  ,
                    char * __restrict  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) int setvbuf(FILE * __restrict  ,
                   char * __restrict  ,
                   int  , size_t  ) __attribute__((__nonnull__(1)));
   















 
#pragma __printf_args
extern __declspec(__nothrow) int fprintf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   


















 
#pragma __printf_args
extern __declspec(__nothrow) int _fprintf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   




 
#pragma __printf_args
extern __declspec(__nothrow) int _printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






 
#pragma __printf_args
extern __declspec(__nothrow) int _sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));


#pragma __printf_args
extern __declspec(__nothrow) int snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   















 

#pragma __printf_args
extern __declspec(__nothrow) int _snprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int fscanf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






























 
#pragma __scanf_args
extern __declspec(__nothrow) int _fscanf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   






 
#pragma __scanf_args
extern __declspec(__nothrow) int _scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int sscanf(const char * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   








 
#pragma __scanf_args
extern __declspec(__nothrow) int _sscanf(const char * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

 
extern __declspec(__nothrow) int vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int _vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int _vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int _vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int __ARM_vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int _vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int vfprintf(FILE * __restrict  ,
                    const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int vsprintf(char * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int __ARM_vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));

extern __declspec(__nothrow) int vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   







 

extern __declspec(__nothrow) int _vsprintf(char * __restrict  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vfprintf(FILE * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vsnprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int __ARM_vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));
   








 

extern __declspec(__nothrow) int fgetc(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) char *fgets(char * __restrict  , int  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   










 
extern __declspec(__nothrow) int fputc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   







 
extern __declspec(__nothrow) int fputs(const char * __restrict  , FILE * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int getc(FILE *  ) __attribute__((__nonnull__(1)));
   







 




    extern __declspec(__nothrow) int (getchar)(void);

   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 




    extern __declspec(__nothrow) int (putchar)(int  );

   



 
extern __declspec(__nothrow) int puts(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int ungetc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   






















 

extern __declspec(__nothrow) size_t fread(void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   











 

extern __declspec(__nothrow) size_t __fread_bytes_avail(void * __restrict  ,
                    size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   











 

extern __declspec(__nothrow) size_t fwrite(const void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   







 

extern __declspec(__nothrow) int fgetpos(FILE * __restrict  , fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) int fseek(FILE *  , long int  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) int fsetpos(FILE * __restrict  , const fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   










 
extern __declspec(__nothrow) long int ftell(FILE *  ) __attribute__((__nonnull__(1)));
   











 
extern __declspec(__nothrow) void rewind(FILE *  ) __attribute__((__nonnull__(1)));
   





 

extern __declspec(__nothrow) void clearerr(FILE *  ) __attribute__((__nonnull__(1)));
   




 

extern __declspec(__nothrow) int feof(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) int ferror(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) void perror(const char *  );
   









 

extern __declspec(__nothrow) int _fisatty(FILE *   ) __attribute__((__nonnull__(1)));
    
 

extern __declspec(__nothrow) void __use_no_semihosting_swi(void);
extern __declspec(__nothrow) void __use_no_semihosting(void);
    





 











#line 1021 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"



 

#line 11 "..\\MyProject.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"




extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 193 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 502 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"



 

#line 12 "..\\MyProject.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\NuMicro.h"
 






 



#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
 









 







































 




 
 
 



 






 



 
typedef enum IRQn
{
     
    NonMaskableInt_IRQn       = -14,       
    HardFault_IRQn            = -13,       
    SVCall_IRQn               = -5,        
    PendSV_IRQn               = -2,        
    SysTick_IRQn              = -1,        

     
    BOD_IRQn                  = 0,         
    WDT_IRQn                  = 1,         
    EINT024_IRQn              = 2,         
    EINT135_IRQn              = 3,         
    GPIO_PAPB_IRQn            = 4,         
    GPIO_PAPBPGPH_IRQn        = 4,         
    GPIO_PCPDPEPF_IRQn        = 5,         
    PWM0_IRQn                 = 6,         
    PWM1_IRQn                 = 7,         
    TMR0_IRQn                 = 8,         
    TMR1_IRQn                 = 9,         
    TMR2_IRQn                 = 10,        
    TMR3_IRQn                 = 11,        
    UART02_IRQn               = 12,        
    UART1_IRQn                = 13,        
    UART13_IRQn               = 13,        
    SPI0_IRQn                 = 14,        
    QSPI0_IRQn                = 15,        
    ISP_IRQn                  = 16,        
    UART57_IRQn               = 17,        
    I2C0_IRQn                 = 18,        
    I2C1_IRQn                 = 19,        
    BPWM0_IRQn                = 20,        
    BPWM1_IRQn                = 21,        
    USCI_IRQn                 = 22,        
    USCI01_IRQn               = 22,        
    USBD_IRQn                 = 23,        
    ACMP01_IRQn               = 25,        
    PDMA_IRQn                 = 26,        
    UART46_IRQn               = 27,        
    PWRWU_IRQn                = 28,        
    ADC_IRQn                  = 29,        
    CKFAIL_IRQn               = 30,        
    RTC_IRQn                  = 31,        
} IRQn_Type;






 

 




   

#line 1 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"
 




 

























 











#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 45 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"

















 




 



 

 













#line 120 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"



 







#line 162 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"

#line 1 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmInstr.h"
 




 

























 












 



 

 
#line 1 "..\\..\\..\\..\\Library\\CMSIS\\Include\\cmsis_armcc.h"
 




 

























 










 



 

 
 





 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}






 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}






 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}






 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}






 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}






 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}






 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}






 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}






 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}






 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}






 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}


#line 263 "..\\..\\..\\..\\Library\\CMSIS\\Include\\cmsis_armcc.h"


#line 297 "..\\..\\..\\..\\Library\\CMSIS\\Include\\cmsis_armcc.h"



 


 



 




 






 







 






 








 










 










 











 








 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}







 

__attribute__((section(".revsh_text"))) static __inline __asm int32_t __REVSH(int32_t value)
{
  revsh r0, r0
  bx lr
}









 









 








 



__attribute__((always_inline)) static __inline uint32_t __RBIT(uint32_t value)
{
  uint32_t result;
  int32_t s = 4   * 8 - 1;  

  result = value;                       
  for (value >>= 1U; value; value >>= 1U)
  {
    result <<= 1U;
    result |= value & 1U;
    s--;
  }
  result <<= s;                         
  return(result);
}








 



#line 649 "..\\..\\..\\..\\Library\\CMSIS\\Include\\cmsis_armcc.h"

   


 



 

#line 731 "..\\..\\..\\..\\Library\\CMSIS\\Include\\cmsis_armcc.h"
 


#line 54 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmInstr.h"

 
#line 84 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmInstr.h"

   

#line 164 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"
#line 1 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmFunc.h"
 




 

























 












 



 

 
#line 54 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmFunc.h"

 
#line 84 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmFunc.h"

 

#line 165 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"
















 
#line 198 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"

 






 
#line 214 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"

 




 










 



 






 



 
typedef union
{
  struct
  {
    uint32_t _reserved0:28;               
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;

 















 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;

 






 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:15;               
    uint32_t T:1;                         
    uint32_t _reserved1:3;                
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;

 





















 
typedef union
{
  struct
  {
    uint32_t _reserved0:1;                
    uint32_t SPSEL:1;                     
    uint32_t _reserved1:30;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 



 







 



 
typedef struct
{
  volatile uint32_t ISER[1U];                
        uint32_t RESERVED0[31U];
  volatile uint32_t ICER[1U];                
        uint32_t RSERVED1[31U];
  volatile uint32_t ISPR[1U];                
        uint32_t RESERVED2[31U];
  volatile uint32_t ICPR[1U];                
        uint32_t RESERVED3[31U];
        uint32_t RESERVED4[64U];
  volatile uint32_t IP[8U];                  
}  NVIC_Type;

 







 



 
typedef struct
{
  volatile const  uint32_t CPUID;                   
  volatile uint32_t ICSR;                    
        uint32_t RESERVED0;
  volatile uint32_t AIRCR;                   
  volatile uint32_t SCR;                     
  volatile uint32_t CCR;                     
        uint32_t RESERVED1;
  volatile uint32_t SHP[2U];                 
  volatile uint32_t SHCSR;                   
} SCB_Type;

 















 



























 















 









 






 



 







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t LOAD;                    
  volatile uint32_t VAL;                     
  volatile const  uint32_t CALIB;                   
} SysTick_Type;

 












 



 



 









 








 
 







 






 







 


 







 

 










 









 


 



 





 

 
 









 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[0U] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}






 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[0U] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}








 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0U] & (1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
}






 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0U] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}






 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[0U] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}








 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) < 0)
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( (((((uint32_t)(int32_t)(IRQn)) & 0x0FUL)-8UL) >> 2UL) )] = ((uint32_t)(((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( (((((uint32_t)(int32_t)(IRQn)) & 0x0FUL)-8UL) >> 2UL) )] & ~(0xFFUL << ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL))) |
       (((priority << (8U - 2)) & (uint32_t)0xFFUL) << ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL)));
  }
  else
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( (((uint32_t)(int32_t)(IRQn)) >> 2UL) )]  = ((uint32_t)(((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( (((uint32_t)(int32_t)(IRQn)) >> 2UL) )]  & ~(0xFFUL << ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL))) |
       (((priority << (8U - 2)) & (uint32_t)0xFFUL) << ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL)));
  }
}










 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if ((int32_t)(IRQn) < 0)
  {
    return((uint32_t)(((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( (((((uint32_t)(int32_t)(IRQn)) & 0x0FUL)-8UL) >> 2UL) )] >> ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL) ) & (uint32_t)0xFFUL) >> (8U - 2)));
  }
  else
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[ ( (((uint32_t)(int32_t)(IRQn)) >> 2UL) )] >> ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL) ) & (uint32_t)0xFFUL) >> (8U - 2)));
  }
}





 
static __inline void NVIC_SystemReset(void)
{
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);                                                          
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = ((0x5FAUL << 16U) |
                 (1UL << 2U));
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);                                                           

  for(;;)                                                            
  {
    __nop();
  }
}

 



 





 













 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL ))
  {
    return (1UL);                                                    
  }

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = (uint32_t)(ticks - 1UL);                          
  NVIC_SetPriority (SysTick_IRQn, (1UL << 2) - 1UL);  
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0UL;                                              
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2U) |
                   (1UL << 1U)   |
                   (1UL );                          
  return (0UL);                                                      
}



 










#line 135 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\system_M031Series.h"
 









 







 
 
 











 



 












extern uint32_t SystemCoreClock;     
extern uint32_t CyclesPerUs;         
extern uint32_t PllClock;            

#line 71 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\system_M031Series.h"












 
extern void SystemInit(void);











 
extern void SystemCoreClockUpdate(void);







 
#line 136 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"



#pragma anon_unions











 
extern void SystemInit(void);



 
 
 

#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\acmp_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    

































































































 
    volatile uint32_t CTL[2];                 
    volatile uint32_t STATUS;                 
    volatile uint32_t VREF;                   
    volatile uint32_t CALCTL;                 
    volatile const  uint32_t CALSR;                  

} ACMP_T;




 










































































































   
   
   


#pragma no_anon_unions


#line 161 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\adc_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    



























































































































































































































 
    volatile const  uint32_t ADDR[30];               
    volatile const  uint32_t RESERVE1[2];
    volatile uint32_t ADCR;                   
    volatile uint32_t ADCHER;                 
    volatile uint32_t ADCMPR[2];              
    volatile uint32_t ADSR0;                  
    volatile const  uint32_t ADSR1;                  
    volatile const  uint32_t ADSR2;                  
    volatile const  uint32_t RESERVE2[1];
    volatile uint32_t ESMPCTL;                
    volatile uint32_t CFDCTL;                 
    volatile const  uint32_t RESERVE3[22];
    volatile const  uint32_t ADPDMA;                 
    volatile const  uint32_t RESERVE4[31];
    volatile uint32_t ADCALR;                 
    volatile uint32_t ADCALSTSR;              
    volatile uint32_t ADCALDBR;               
} ADC_T;




 






















































































































   
   
   


#pragma no_anon_unions


#line 162 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\clk_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    








































































































































































































































































































































































































































































































 
    volatile uint32_t PWRCTL;                 
    volatile uint32_t AHBCLK;                 
    volatile uint32_t APBCLK0;                
    volatile uint32_t APBCLK1;                
    volatile uint32_t CLKSEL0;                
    volatile uint32_t CLKSEL1;                
    volatile uint32_t CLKSEL2;                
    volatile uint32_t CLKSEL3;                
    volatile uint32_t CLKDIV0;                
    volatile const  uint32_t RESERVE0[3];
    volatile uint32_t CLKDIV4;                
    volatile uint32_t PCLKDIV;                
    volatile const  uint32_t RESERVE1[2];
    volatile uint32_t PLLCTL;                 
    volatile const  uint32_t RESERVE2[3];
    volatile const  uint32_t STATUS;                 
    volatile const  uint32_t RESERVE3[3];
    volatile uint32_t CLKOCTL;                
    volatile const  uint32_t RESERVE4[3];
    volatile uint32_t CLKDCTL;                
    volatile uint32_t CLKDSTS;                
    volatile uint32_t CDUPB;                  
    volatile uint32_t CDLOWB;                 
    volatile uint32_t LDOCTL;                 
    volatile const  uint32_t RESERVE5[12];
    volatile uint32_t HXTFSEL;                
    volatile const  uint32_t RESERVE9[14];
    volatile uint32_t TESTCLK;                

} CLK_T;




 



































































































































































































































































































































































   
   
   


#pragma no_anon_unions


#line 163 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\crc_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    

































































 
    volatile uint32_t CTL;                    
    volatile uint32_t DAT;                    
    volatile uint32_t SEED;                   
    volatile const  uint32_t CHECKSUM;               

} CRC_T;




 



































   
   
   


#pragma no_anon_unions


#line 164 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\ebi_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    




































































































































 
    volatile uint32_t CTL0;                   
    volatile uint32_t TCTL0;                  
    volatile const  uint32_t RESERVE0[2];
    volatile uint32_t CTL1;                   
    volatile uint32_t TCTL1;                  

} EBI_T;




 








































   
   
   


#pragma no_anon_unions


#line 165 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\fmc_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    




















































































































































 
    volatile uint32_t ISPCTL;                 
    volatile uint32_t ISPADDR;                
    volatile uint32_t ISPDAT;                 
    volatile uint32_t ISPCMD;                 
    volatile uint32_t ISPTRG;                 
    volatile const  uint32_t DFBA;                   
    volatile uint32_t FTCTL;                  
    volatile uint32_t ICPCTL;                 
    volatile const  uint32_t RESERVE0[8];
    volatile uint32_t ISPSTS;                 
    volatile const  uint32_t RESERVE1[15];
    volatile uint32_t MPDAT0;                 
    volatile uint32_t MPDAT1;                 
    volatile uint32_t MPDAT2;                 
    volatile uint32_t MPDAT3;                 
    volatile const  uint32_t RESERVE2[12];
    volatile const  uint32_t MPSTS;                  
    volatile const  uint32_t MPADDR;                 
    volatile const  uint32_t RESERVE3[0x3CD];
    volatile const  uint32_t VERSION;                
} FMC_T;




 










































































































   
   
   


#pragma no_anon_unions


#line 166 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\gpio_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    

























































































































 

    volatile uint32_t MODE;                
    volatile uint32_t DINOFF;              
    volatile uint32_t DOUT;                
    volatile uint32_t DATMSK;              
    volatile const  uint32_t PIN;                 
    volatile uint32_t DBEN;                
    volatile uint32_t INTTYPE;             
    volatile uint32_t INTEN;               
    volatile uint32_t INTSRC;              
} GPIO_T;

typedef struct
{


    





























 

    volatile uint32_t DBCTL;             
} GPIO_DBCTL_T;





 













































































































































































































































































































































































































































































































   
   
   


#pragma no_anon_unions


#line 167 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\hdiv_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    








 
    volatile uint32_t DIVIDEND;

    









 
    volatile uint32_t DIVISOR;

    








 
    volatile uint32_t QUOTIENT;

    









 
    volatile uint32_t REM;

    












 
    volatile const  uint32_t STATUS;

} HDIV_T;




 
















   
   
   


#pragma no_anon_unions





   
   
#line 168 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\i2c_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    

































































































































































































































































































































































































































































 
    volatile uint32_t CTL0;                   
    volatile uint32_t ADDR0;                  
    volatile uint32_t DAT;                    
    volatile const  uint32_t STATUS0;                
    volatile uint32_t CLKDIV;                 
    volatile uint32_t TOCTL;                  
    volatile uint32_t ADDR1;                  
    volatile uint32_t ADDR2;                  
    volatile uint32_t ADDR3;                  
    volatile uint32_t ADDRMSK0;               
    volatile uint32_t ADDRMSK1;               
    volatile uint32_t ADDRMSK2;               
    volatile uint32_t ADDRMSK3;               
    volatile const  uint32_t RESERVE0[2];
    volatile uint32_t WKCTL;                  
    volatile uint32_t WKSTS;                  
    volatile uint32_t CTL1;                   
    volatile uint32_t STATUS1;                
    volatile uint32_t TMCTL;                  
    volatile uint32_t BUSCTL;                 
    volatile uint32_t BUSTCTL;                
    volatile uint32_t BUSSTS;                 
    volatile uint32_t PKTSIZE;                
    volatile const  uint32_t PKTCRC;                 
    volatile uint32_t BUSTOUT;                
    volatile uint32_t CLKTOUT;                
} I2C_T;




 





































































































































































































































   
   
   


#pragma no_anon_unions


#line 169 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\pdma_reg.h"
 






 




#pragma anon_unions





 




 


typedef struct
{


    
















































































 
    volatile uint32_t CTL;       
    volatile uint32_t SA;        
    volatile uint32_t DA;        
    volatile uint32_t NEXT;      

} DSCT_T;


typedef struct
{


    

































































































































































































































































































































 
    DSCT_T        DSCT[9];                
    volatile const  uint32_t RESERVE0[28];
    volatile const  uint32_t CURSCAT[9];             
    volatile const  uint32_t RESERVE1[183];
    volatile uint32_t CHCTL;                  
    volatile  uint32_t PAUSE;                  
    volatile  uint32_t SWREQ;                  
    volatile const  uint32_t TRGSTS;                 
    volatile uint32_t PRISET;                 
    volatile  uint32_t PRICLR;                 
    volatile uint32_t INTEN;                  
    volatile uint32_t INTSTS;                 
    volatile uint32_t ABTSTS;                 
    volatile uint32_t TDSTS;                  
    volatile uint32_t ALIGN;                  
    volatile const  uint32_t TACTSTS;                
    volatile uint32_t TOUTPSC;                
    volatile uint32_t TOUTEN;                 
    volatile uint32_t TOUTIEN;                
    volatile uint32_t SCATBA;                 
    volatile uint32_t TOC0_1;                 
    volatile const  uint32_t RESERVE2[7];
    volatile uint32_t CHRST;                  
    volatile const  uint32_t RESERVE3[7];
    volatile uint32_t REQSEL0_3;              
    volatile uint32_t REQSEL4_7;              
    volatile uint32_t REQSEL8;                
} PDMA_T;




 


























































































































































































   
   
   


#pragma no_anon_unions


#line 170 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\pwm_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{
    















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile uint32_t CTL0;                   
    volatile uint32_t CTL1;                   
    volatile const  uint32_t RESERVE0[2];
    volatile uint32_t CLKSRC;                 
    volatile uint32_t CLKPSC[3];              
    volatile uint32_t CNTEN;                  
    volatile uint32_t CNTCLR;                 
    volatile const  uint32_t RESERVE1[2];
    volatile uint32_t PERIOD[6];             
    volatile const  uint32_t RESERVE2[2];
    volatile uint32_t CMPDAT[6];              
    volatile const  uint32_t RESERVE3[2];
    volatile uint32_t DTCTL[3];               
    volatile const  uint32_t RESERVE4[5];
    volatile const  uint32_t CNT[6];                 
    volatile const  uint32_t RESERVE5[2];
    volatile uint32_t WGCTL0;                 
    volatile uint32_t WGCTL1;                 
    volatile uint32_t MSKEN;                  
    volatile uint32_t MSK;                    
    volatile uint32_t BNF;                    
    volatile uint32_t FAILBRK;                
    volatile uint32_t BRKCTL[3];              
    volatile uint32_t POLCTL;                 
    volatile uint32_t POEN;                   
    volatile  uint32_t SWBRK;                  
    volatile uint32_t INTEN0;                 
    volatile uint32_t INTEN1;                 
    volatile uint32_t INTSTS0;                
    volatile uint32_t INTSTS1;                
    volatile const  uint32_t RESERVE6[2];
    volatile uint32_t ADCTS0;                 
    volatile uint32_t ADCTS1;                 
    volatile const  uint32_t RESERVE7[4];
    volatile uint32_t SSCTL;                  
    volatile  uint32_t SSTRG;                  
    volatile const  uint32_t RESERVE8[2];
    volatile uint32_t STATUS;                 
    volatile const  uint32_t RESERVE9[55];
    volatile uint32_t CAPINEN;                
    volatile uint32_t CAPCTL;                 
    volatile const  uint32_t CAPSTS;                 
    volatile const  uint32_t RCAPDAT0;               
    volatile const  uint32_t FCAPDAT0;               
    volatile const  uint32_t RCAPDAT1;               
    volatile const  uint32_t FCAPDAT1;               
    volatile const  uint32_t RCAPDAT2;               
    volatile const  uint32_t FCAPDAT2;               
    volatile const  uint32_t RCAPDAT3;               
    volatile const  uint32_t FCAPDAT3;               
    volatile const  uint32_t RCAPDAT4;               
    volatile const  uint32_t FCAPDAT4;               
    volatile const  uint32_t RCAPDAT5;               
    volatile const  uint32_t FCAPDAT5;               
    volatile uint32_t PDMACTL;                
    volatile const  uint32_t PDMACAP0_1;             
    volatile const  uint32_t PDMACAP2_3;             
    volatile const  uint32_t PDMACAP4_5;             
    volatile const  uint32_t RESERVE10[1];
    volatile uint32_t CAPIEN;                 
    volatile uint32_t CAPIF;                  
    volatile const  uint32_t RESERVE11[43];
    volatile const  uint32_t PBUF[6];                
    volatile const  uint32_t CMPBUF[6];              
} PWM_T;




 



























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































   
   
   


#pragma no_anon_unions


#line 171 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\bpwm_reg.h"
 






 





    #pragma anon_unions





 




 
typedef struct
{
    














 
    volatile uint32_t RCAPDAT;  
    volatile uint32_t FCAPDAT;  
} BCAPDAT_T;

typedef struct
{


    






































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
    volatile uint32_t CTL0;                   
    volatile uint32_t CTL1;                   
    volatile const  uint32_t RESERVE0[2];
    volatile uint32_t CLKSRC;                 
    volatile uint32_t CLKPSC;                 
    volatile const  uint32_t RESERVE1[2];
    volatile uint32_t CNTEN;                  
    volatile uint32_t CNTCLR;                 
    volatile const  uint32_t RESERVE2[2];
    volatile uint32_t PERIOD;                 
    volatile const  uint32_t RESERVE3[7];
    volatile uint32_t CMPDAT[6];              
    volatile const  uint32_t RESERVE4[10];
    volatile const  uint32_t CNT;                    
    volatile const  uint32_t RESERVE5[7];
    volatile uint32_t WGCTL0;                 
    volatile uint32_t WGCTL1;                 
    volatile uint32_t MSKEN;                  
    volatile uint32_t MSK;                    
    volatile const  uint32_t RESERVE6[5];
    volatile uint32_t POLCTL;                 
    volatile uint32_t POEN;                   
    volatile const  uint32_t RESERVE7[1];
    volatile uint32_t INTEN;                  
    volatile const  uint32_t RESERVE8[1];
    volatile uint32_t INTSTS;                 
    volatile const  uint32_t RESERVE9[3];
    volatile uint32_t EADCTS0;                
    volatile uint32_t EADCTS1;                
    volatile const  uint32_t RESERVE10[4];
    volatile uint32_t SSCTL;                  
    volatile  uint32_t SSTRG;                  
    volatile const  uint32_t RESERVE11[2];
    volatile uint32_t STATUS;                 
    volatile const  uint32_t RESERVE12[55];
    volatile uint32_t CAPINEN;                
    volatile uint32_t CAPCTL;                 
    volatile const  uint32_t CAPSTS;                 
    BCAPDAT_T CAPDAT[6];                  
    volatile const  uint32_t RESERVE13[5];
    volatile uint32_t CAPIEN;                 
    volatile uint32_t CAPIF;                  
    volatile const  uint32_t RESERVE14[43];
    volatile const  uint32_t PBUF;                   
    volatile const  uint32_t RESERVE15[5];
    volatile const  uint32_t CMPBUF[6];              

} BPWM_T;




 






















































































































































































































































































































































































































































































































































































































   
   
   


    #pragma no_anon_unions


#line 172 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\qspi_reg.h"
 






 




#pragma anon_unions





 




 
typedef struct
{


    









































































































































































































































































































































 
    volatile uint32_t CTL;                    
    volatile uint32_t CLKDIV;                 
    volatile uint32_t SSCTL;                  
    volatile uint32_t PDMACTL;                
    volatile uint32_t FIFOCTL;                
    volatile uint32_t STATUS;                 
    volatile const  uint32_t RESERVE0[2];
    volatile  uint32_t TX;                     
    volatile const  uint32_t RESERVE1[3];
    volatile const  uint32_t RX;                     

} QSPI_T;




 









































































































































































































   
   
   


#pragma no_anon_unions


#line 173 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\spi_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    
































































































































































































































































































































































































































































 

    volatile uint32_t CTL;                    
    volatile uint32_t CLKDIV;                 
    volatile uint32_t SSCTL;                  
    volatile uint32_t PDMACTL;                
    volatile uint32_t FIFOCTL;                
    volatile uint32_t STATUS;                 
    volatile const  uint32_t RESERVE0[2];
    volatile  uint32_t TX;                     
    volatile const  uint32_t RESERVE1[3];
    volatile const  uint32_t RX;                     
    volatile const  uint32_t RESERVE2[11];
    volatile uint32_t I2SCTL;                 
    volatile uint32_t I2SCLK;                 
    volatile uint32_t I2SSTS;                 

} SPI_T;




 


















































































































































































































































































   
   
   


#pragma no_anon_unions


#line 174 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\sys_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    



































































































































































































































































































































































































































































































































































 
    volatile const  uint32_t PDID;                   
    volatile uint32_t RSTSTS;                 
    volatile uint32_t IPRST0;                 
    volatile uint32_t IPRST1;                 
    volatile uint32_t IPRST2;                 
    volatile const  uint32_t RESERVE0[1];
    volatile uint32_t BODCTL;                 
    volatile const  uint32_t RESERVE1[2];
    volatile uint32_t PORCTL;                 
    volatile const  uint32_t RESERVE2[2];
    volatile uint32_t GPA_MFPL;               
    volatile uint32_t GPA_MFPH;               
    volatile uint32_t GPB_MFPL;               
    volatile uint32_t GPB_MFPH;               
    volatile uint32_t GPC_MFPL;               
    volatile uint32_t GPC_MFPH;               
    volatile uint32_t GPD_MFPL;               
    volatile uint32_t GPD_MFPH;               
    volatile uint32_t GPE_MFPL;               
    volatile uint32_t GPE_MFPH;               
    volatile uint32_t GPF_MFPL;               
    volatile uint32_t GPF_MFPH;               
    volatile uint32_t GPG_MFPL;               
    volatile uint32_t GPG_MFPH;               
    volatile uint32_t GPH_MFPL;               
    volatile uint32_t GPH_MFPH;               
    volatile const  uint32_t RESERVE3[2];
    volatile uint32_t LPLDOCTL;               
    volatile const  uint32_t RESERVE4[17];
    volatile uint32_t MODCTL;                 
    volatile const  uint32_t RESERVE5[3];
    volatile uint32_t SRAM_BISTCTL;           
    volatile const  uint32_t SRAM_BISTSTS;           
    volatile uint32_t SRAM_PARITY;            
    volatile uint32_t SRAM_INTCTL;            
    volatile uint32_t SRAM_STATUS;            
    volatile const  uint32_t SRAM_ERRADDR;           
    volatile const  uint32_t RESERVE6[2];
    volatile uint32_t HIRCTRIMCTL;            
    volatile uint32_t HIRCTRIMIEN;            
    volatile uint32_t HIRCTRIMSTS;            
    volatile const  uint32_t RESERVE7[1];
    volatile  uint32_t REGLCTL;                
    volatile const  uint32_t RESERVE8[5];
    volatile uint32_t HIRCADJ;                
    volatile const  uint32_t RESERVE9[1];
    volatile const  uint32_t LDOTRIM;                
    volatile const  uint32_t LVR16TRIM;              
    volatile const  uint32_t RESERVE10[4];
    volatile const  uint32_t LIRCT;                  
    volatile const  uint32_t RESERVE11[5];
    volatile const  uint32_t LVR17TRIM;              
    volatile const  uint32_t LVR20TRIM;              
    volatile const  uint32_t LVR25TRIM;              
    volatile const  uint32_t uLDOVITRIM;             
    volatile uint32_t LVRITRIMSEL;            
    volatile const  uint32_t RESERVE12[9];
    volatile uint32_t HIRCTCTL;               
    volatile uint32_t ADCCHIP;                
    volatile uint32_t HXTTCTL;                
    volatile const  uint32_t RESERVE13[22];
    volatile uint32_t PORDISAN;               
} SYS_T;

typedef struct
{


    






























































































 
    volatile uint32_t NMIEN;                  
    volatile const  uint32_t NMISTS;                 

} NMI_T;




 




















































































































































































































































































































































































































































































































































































































































































































































   
   
   


#pragma no_anon_unions


#line 175 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\rtc_reg.h"
 






 







 

 



 

typedef struct
{


    












































































































































































































 
    volatile uint32_t INIT;                   
    volatile const  uint32_t RESERVE0[1];
    volatile uint32_t FREQADJ;                
    volatile uint32_t TIME;                   
    volatile uint32_t CAL;                    
    volatile uint32_t CLKFMT;                 
    volatile uint32_t WEEKDAY;                
    volatile uint32_t TALM;                   
    volatile uint32_t CALM;                   
    volatile const  uint32_t LEAPYEAR;               
    volatile uint32_t INTEN;                  
    volatile uint32_t INTSTS;                 
    volatile uint32_t TICK;                   
    volatile uint32_t TAMSK;                  
    volatile uint32_t CAMSK;                  
    volatile const  uint32_t RESERVE1[49];           
    volatile uint32_t LXTCTL;                 

} RTC_T;




 





























































































































































   
   
   

#line 176 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\timer_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    


























































































































































































 
    volatile uint32_t CTL;                    
    volatile uint32_t CMP;                    
    volatile uint32_t INTSTS;                 
    volatile const  uint32_t CNT;                    
    volatile const  uint32_t CAP;                    
    volatile uint32_t EXTCTL;                 
    volatile uint32_t EINTSTS;                
} TIMER_T;




 

































































































   
   
   


#pragma no_anon_unions


#line 177 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\uart_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    






























































































































































































































































































































































































































































































































































































































































































 
    volatile uint32_t DAT;                    
    volatile uint32_t INTEN;                  
    volatile uint32_t FIFO;                   
    volatile uint32_t LINE;                   
    volatile uint32_t MODEM;                  
    volatile uint32_t MODEMSTS;               
    volatile uint32_t FIFOSTS;                
    volatile uint32_t INTSTS;                 
    volatile uint32_t TOUT;                   
    volatile uint32_t BAUD;                   
    volatile uint32_t IRDA;                   
    volatile uint32_t ALTCTL;                 
    volatile uint32_t FUNCSEL;                
    volatile const  uint32_t RESERVE0[2];
    volatile uint32_t BRCOMP;                 
    volatile uint32_t WKCTL;                  
    volatile uint32_t WKSTS;                  
    volatile uint32_t DWKCOMP;                

} UART_T;





 





























































































































































































































































































































































   
   
   


#pragma no_anon_unions


#line 178 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\ui2c_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    















































































































































































































































































































































 
    volatile uint32_t CTL;                    
    volatile const  uint32_t RESERVE0[1];
    volatile uint32_t BRGEN;                  
    volatile const  uint32_t RESERVE1[8];
    volatile uint32_t LINECTL;                
    volatile  uint32_t TXDAT;                  
    volatile const  uint32_t RXDAT;                  
    volatile const  uint32_t RESERVE2[3];
    volatile uint32_t DEVADDR0;               
    volatile uint32_t DEVADDR1;               
    volatile uint32_t ADDRMSK0;               
    volatile uint32_t ADDRMSK1;               
    volatile uint32_t WKCTL;                  
    volatile uint32_t WKSTS;                  
    volatile uint32_t PROTCTL;                
    volatile uint32_t PROTIEN;                
    volatile uint32_t PROTSTS;                
    volatile const  uint32_t RESERVE3[8];
    volatile uint32_t ADMAT;                  
    volatile uint32_t TMCTL;                  

} UI2C_T;




 






































































































































































   
   


   


#pragma no_anon_unions


#line 179 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\usbd_reg.h"
 






 




#pragma anon_unions





 




 



typedef struct
{

    































































 
    volatile uint32_t BUFSEG;                 
    volatile uint32_t MXPLD;                  
    volatile uint32_t CFG;                    
    volatile uint32_t CFGP;                   

} USBD_EP_T;

typedef struct
{
    

























































































































































































































































 
    volatile uint32_t INTEN;                  
    volatile uint32_t INTSTS;                 
    volatile uint32_t FADDR;                  
    volatile const  uint32_t EPSTS;                  
    volatile uint32_t ATTR;                   
    volatile const  uint32_t VBUSDET;                
    volatile uint32_t STBUFSEG;               
    
    volatile const  uint32_t RESERVE0[1];
    
    volatile const  uint32_t EPSTS0;                 
    
    volatile const  uint32_t RESERVE1[25];
    
    volatile const  uint32_t LPMATTR;                
    volatile const  uint32_t FN;                     
    volatile uint32_t SE0;                    
    
    volatile const  uint32_t RESERVE2[283];
    
    USBD_EP_T EP[8];                     

} USBD_T;




 

















































































































































































   
   
   


#pragma no_anon_unions




#line 180 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\uspi_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    

















































































































































































































































































































































































































 
    volatile uint32_t CTL;                    
    volatile uint32_t INTEN;                  
    volatile uint32_t BRGEN;                  
    volatile const  uint32_t RESERVE0[1];
    volatile uint32_t DATIN0;                 
    volatile const  uint32_t RESERVE1[3];
    volatile uint32_t CTLIN0;                 
    volatile const  uint32_t RESERVE2[1];
    volatile uint32_t CLKIN;                  
    volatile uint32_t LINECTL;                
    volatile  uint32_t TXDAT;                  
    volatile const  uint32_t RXDAT;                  
    volatile uint32_t BUFCTL;                 
    volatile  uint32_t BUFSTS;                 
    volatile uint32_t PDMACTL;                
    volatile const  uint32_t RESERVE3[4];
    volatile uint32_t WKCTL;                  
    volatile uint32_t WKSTS;                  
    volatile uint32_t PROTCTL;                
    volatile uint32_t PROTIEN;                
    volatile uint32_t PROTSTS;                

} USPI_T;




 










































































































































































































   
   


   


#pragma no_anon_unions


#line 181 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\uuart_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    

































































































































































































































































































































































































 
    volatile uint32_t CTL;                    
    volatile uint32_t INTEN;                  
    volatile uint32_t BRGEN;                  
    volatile const  uint32_t RESERVE0[1];
    volatile uint32_t DATIN0;                 
    volatile const  uint32_t RESERVE1[3];
    volatile uint32_t CTLIN0;                 
    volatile const  uint32_t RESERVE2[1];
    volatile uint32_t CLKIN;                  
    volatile uint32_t LINECTL;                
    volatile  uint32_t TXDAT;                  
    volatile const  uint32_t RXDAT;                  
    volatile uint32_t BUFCTL;                 
    volatile uint32_t BUFSTS;                 
    volatile uint32_t PDMACTL;                
    volatile const  uint32_t RESERVE3[4];
    volatile uint32_t WKCTL;                  
    volatile uint32_t WKSTS;                  
    volatile uint32_t PROTCTL;                
    volatile uint32_t PROTIEN;                
    volatile uint32_t PROTSTS;                

} UUART_T;




 



















































































































































































































   
   


   


#pragma no_anon_unions


#line 182 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\wdt_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{

    























































































 
    volatile uint32_t CTL;                    
    volatile uint32_t ALTCTL;                 
    volatile  uint32_t RSTCNT;                 

} WDT_T;




 





































   
   
   


#pragma no_anon_unions




#line 183 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\wwdt_reg.h"
 






 




#pragma anon_unions





 




 

typedef struct
{


    





































































 
    volatile  uint32_t RLDCNT;                 
    volatile uint32_t CTL;                    
    volatile uint32_t STATUS;                 
    volatile const  uint32_t CNT;                    

} WWDT_T;




 




























   
   
   


#pragma no_anon_unions


#line 184 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"


 
 
 



 
 






 






#line 218 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"



























#line 253 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"









   

 
 
 




 
#line 281 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"

#line 290 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"























































   







 

typedef volatile unsigned char  vu8;
typedef volatile unsigned long  vu32;
typedef volatile unsigned short vu16;





 







 







 








 







 








 







 







 






 








 







 








 







 







 






 


   

 
 
 




 













 
#line 536 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"


 










 
#line 557 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"

   

 
 
 
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"
 









 










 



 



 

 
 
 





#line 60 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

#line 67 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
 
 






#line 85 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

#line 94 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
 
 








 
 
#line 115 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 125 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 137 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 151 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 162 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 172 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 183 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 194 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 204 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 213 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 222 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 231 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 





 





 




 




 
#line 266 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 279 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 293 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 308 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 322 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 336 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 350 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 364 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 375 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 386 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 397 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 408 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 423 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 438 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 453 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 468 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 479 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 492 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 501 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 510 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 519 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 528 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 539 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 550 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 559 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 






 






 
#line 582 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 591 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 601 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 609 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 

 
#line 619 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 






 
#line 634 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 643 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 





 




 





 





 





 





 




 




 
#line 698 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 




 






 





 
#line 724 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 732 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 741 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 750 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 759 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 768 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 






 





 
#line 789 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 797 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 805 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 814 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 






 
#line 831 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 





 





 
#line 852 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 861 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 871 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 880 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 889 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 900 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 






 





 





 





 





 





 

 

 
#line 950 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 
#line 958 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 

 

 






 






 




 

 

 

 

 




 




 





 





 





 





 





 

 

 

 

 





 





 




 




 






 






 






 
#line 1088 "..\\..\\..\\..\\Library\\StdDriver\\inc\\sys.h"

 

 

 

 


   



 








 









 









 









 









 










 









 









 









 











 









 









 









 









 









 









 









 









 









 









 









 
















 










 
static __inline void SYS_UnlockReg(void)
{
    do {
        ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->REGLCTL = 0x59;
        ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->REGLCTL = 0x16;
        ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->REGLCTL = 0x88;
    } while (((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->REGLCTL == 0);
}








 
static __inline void SYS_LockReg(void)
{
    ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->REGLCTL = 0;
}


void SYS_ClearResetSrc(uint32_t u32Src);
uint32_t SYS_GetBODStatus(void);
uint32_t SYS_GetResetSrc(void);
uint32_t SYS_IsRegLocked(void);
uint32_t SYS_ReadPDID(void);
void SYS_ResetChip(void);
void SYS_ResetCPU(void);
void SYS_ResetModule(uint32_t u32ModuleIndex);
void SYS_EnableBOD(int32_t i32Mode, uint32_t u32BODLevel);
void SYS_DisableBOD(void);


   

   

   








 
#line 564 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"
 









 










 



 



 


#line 49 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

 
 
 
#line 61 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

 
 
 






#line 77 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"




 
 
 







#line 98 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

#line 105 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

#line 112 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

#line 119 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

#line 126 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

#line 133 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

#line 140 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

 
 
 



























 
 
 
#line 180 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

#line 187 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

#line 194 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

#line 201 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

#line 208 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

#line 215 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"


 
 
 






 
 
 
#line 235 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

 
 
 












 
 
 










#line 274 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

 
 
 
 

#line 290 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"

#line 299 "..\\..\\..\\..\\Library\\StdDriver\\inc\\clk.h"















































































































































   

extern int32_t g_CLK_i32ErrCode;



 

 
 
 







 
static __inline uint32_t CLK_GetPLLClockFreq(void)
{
    uint32_t u32PllFreq;
    uint32_t u32FIN, u32NF, u32NR, u32NO;
    uint8_t au8NoTbl[4] = {1, 2, 2, 4};  
    uint32_t u32Reg;

    u32PllFreq = 0;
    u32Reg = ((CLK_T *) ((( uint32_t)0x40000000) + 0x00200))->PLLCTL;

    if ((u32Reg & ((0x1ul << (16)) | (0x1ul << (18)))) == 0)
    {
         
        if (u32Reg & (0x1ul << (19)))
        {
            u32FIN = ((48000000UL) >> 2);
        } else
            u32FIN = (32000000UL);

        if (u32Reg & (0x1ul << (17)))
        {
             
            u32PllFreq = u32FIN;
        }
        else
        {
             
            u32NO = au8NoTbl[((u32Reg & (0x3ul << (14))) >> (14))];
            u32NF  = ((u32Reg & (0x1fful << (0))) >> (0)) + 2;
            u32NR  = ((u32Reg & (0x1ful << (9))) >> (9)) + 2;
             
            u32PllFreq = (((u32FIN >> 2) * u32NF) / (u32NR * u32NO) << 2);
        }
    }

    return u32PllFreq;
}












 
static __inline int32_t CLK_SysTickDelay(uint32_t us)
{
     
    uint32_t u32TimeOutCnt = SystemCoreClock * 2;

    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = us * CyclesPerUs;
    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL  = (0x00);
    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = (1UL << 2U) | (1UL );

     
    while ((((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL & (1UL << 16U)) == 0)
    {
        if(--u32TimeOutCnt == 0)
        {
            break;
        }
    }

     
    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = 0;

    if(u32TimeOutCnt == 0)
        return (-1);
    else
        return 0;
}







 
static __inline uint32_t CLK_GetUARTFreq(void)
{
    uint32_t u32Freqout, u32AHBDivider, u32ClkSel, PCLK0Div;

    u32Freqout = 0;
    u32ClkSel = ((CLK_T *) ((( uint32_t)0x40000000) + 0x00200))->CLKSEL1 & (0x7ul << (24)) ;

    if (u32ClkSel == (0x0UL<<(24)))   
    {
        u32Freqout = (32000000UL);
    }
    else if(u32ClkSel == (0x1UL<<(24)))       
    {
        u32Freqout = CLK_GetPLLClockFreq();
    }
    else if(u32ClkSel == (0x2UL<<(24)))       
    {
        u32Freqout = (32768UL);
    }
    else if(u32ClkSel == (0x3UL<<(24)))      
    {
        u32Freqout = (48000000UL);
    }
    else if(u32ClkSel == (0x4UL<<(24)))     
    {
        PCLK0Div = (((CLK_T *) ((( uint32_t)0x40000000) + 0x00200))->PCLKDIV & (0x7ul << (0))) >> (0);
        u32Freqout = (SystemCoreClock >> PCLK0Div);
    }
    else if(u32ClkSel == (0x5UL<<(24)))      
    {
        u32Freqout = (38400UL);
    }

    u32AHBDivider = (((CLK_T *) ((( uint32_t)0x40000000) + 0x00200))->CLKDIV0 & (0xful << (8))) + 1 ;

    return (u32Freqout/u32AHBDivider);
}


uint32_t CLK_WaitClockReady(uint32_t);
void CLK_DisableCKO(void);
void CLK_EnableCKO(uint32_t u32ClkSrc, uint32_t u32ClkDiv, uint32_t u32ClkDivBy1En);
uint32_t CLK_GetHCLKFreq(void);
uint32_t CLK_GetCPUFreq(void);
uint32_t CLK_GetLXTFreq(void);
uint32_t CLK_GetHXTFreq(void);
void CLK_SetHCLK(uint32_t u32ClkSrc, uint32_t u32ClkDiv);
uint32_t CLK_SetCoreClock(uint32_t u32Hclk);
uint32_t CLK_GetPCLK0Freq(void);
uint32_t CLK_GetPCLK1Freq(void);
void CLK_EnableXtalRC(uint32_t u32ClkMask);
void CLK_DisableXtalRC(uint32_t u32ClkMask);
void CLK_DisableModuleClock(uint32_t u32ModuleIdx);
void CLK_EnableModuleClock(uint32_t u32ModuleIdx);
void CLK_SetModuleClock(uint32_t u32ModuleIdx, uint32_t u32ClkSrc, uint32_t u32ClkDiv);
void CLK_DisablePLL(void);
uint32_t CLK_EnablePLL(uint32_t u32PllClkSrc, uint32_t u32PllFreq);
void CLK_SetSysTickClockSrc(uint32_t u32ClkSrc);
void CLK_DisableSysTick(void);
void CLK_EnableSysTick(uint32_t u32ClkSrc, uint32_t u32Count);
void CLK_PowerDown(void);
void CLK_Idle(void);

   

   

   







 
#line 565 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\acmp.h"
 









 



 
 
 
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
 









 







































 

#line 589 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"

 
#line 19 "..\\..\\..\\..\\Library\\StdDriver\\inc\\acmp.h"









 



 




 


 
 
 
#line 63 "..\\..\\..\\..\\Library\\StdDriver\\inc\\acmp.h"

 
 
 




   




 

 
 
 









 









 













 









 









 










 









 









 









 









 









 









 









 









 









 














 









 









 


















 












 











 













 












 









 
















 









 



 
void ACMP_Open(ACMP_T *, uint32_t u32ChNum, uint32_t u32NegSrc, uint32_t u32HysteresisEn);
void ACMP_Close(ACMP_T *, uint32_t u32ChNum);



   

   

   








 
#line 566 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\adc.h"
 









 











 



 



 

 
 
 



























 
 
 
#line 72 "..\\..\\..\\..\\Library\\StdDriver\\inc\\adc.h"

 
 
 




 
 
 





 
 
 





 
 
 



 
 
 


   

extern int32_t g_ADC_i32ErrCode;



 









 













 













 









 










 










 








 








 
















 
#line 228 "..\\..\\..\\..\\Library\\StdDriver\\inc\\adc.h"







 
















 
#line 262 "..\\..\\..\\..\\Library\\StdDriver\\inc\\adc.h"







 









 









 










 












 








 













 









 








 







 













 













 



void ADC_Open(ADC_T *adc,
              uint32_t u32InputMode,
              uint32_t u32OpMode,
              uint32_t u32ChMask);
void ADC_Close(ADC_T *adc);
void ADC_EnableHWTrigger(ADC_T *adc,
                         uint32_t u32Source,
                         uint32_t u32Param);
void ADC_DisableHWTrigger(ADC_T *adc);
void ADC_EnableInt(ADC_T *adc, uint32_t u32Mask);
void ADC_DisableInt(ADC_T *adc, uint32_t u32Mask);
void ADC_SetExtendSampleTime(ADC_T *adc,
                             uint32_t u32ModuleNum,
                             uint32_t u32ExtendSampleTime);


   

   

   







 
#line 567 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\crc.h"










 
 











 



 



 
 
 
 





 
 
 





 
 
 




   




 













 











 











 


void CRC_Open(uint32_t u32Mode, uint32_t u32Attribute, uint32_t u32Seed, uint32_t u32DataLen);
uint32_t CRC_GetChecksum(void);

   

   

   







 
#line 568 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ebi.h"
 








 











 



 



 
 
 
 




 
 
 



 
 
 



 
 
 



 
 
 
#line 65 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ebi.h"

#line 73 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ebi.h"




   




 









 











 










 











 










 











 










 











 










 











 










 











 










 










 


void EBI_Open(uint32_t u32Bank, uint32_t u32DataWidth, uint32_t u32TimingClass, uint32_t u32BusMode, uint32_t u32CSActiveLevel);
void EBI_Close(uint32_t u32Bank);
void EBI_SetBusTiming(uint32_t u32Bank, uint32_t u32TimingConfig, uint32_t u32MclkDiv);

   

   

   







 
#line 569 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\fmc.h"
 









 










 



 




 


	
 
 
 
#line 45 "..\\..\\..\\..\\Library\\StdDriver\\inc\\fmc.h"





#line 57 "..\\..\\..\\..\\Library\\StdDriver\\inc\\fmc.h"



 
 
 
#line 78 "..\\..\\..\\..\\Library\\StdDriver\\inc\\fmc.h"















   




 


 
 
 

#line 123 "..\\..\\..\\..\\Library\\StdDriver\\inc\\fmc.h"

   

 
 
 
extern int32_t  g_FMC_i32ErrCode;



 
 
 
 
static __inline uint32_t FMC_ReadCID(void);
static __inline uint32_t FMC_ReadPID(void);
static __inline uint32_t FMC_ReadUID(uint8_t u8Index);
static __inline uint32_t FMC_ReadUCID(uint32_t u32Index);
static __inline int32_t  FMC_SetVectorPageAddr(uint32_t u32PageAddr);
static __inline uint32_t FMC_GetVECMAP(void);








 
static __inline uint32_t FMC_GetVECMAP(void)
{
    return (((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPSTS & (0x1ffffful << (9)));
}









 
static __inline uint32_t FMC_ReadCID(void)
{
    uint32_t  tout = ((SystemCoreClock/10)/4);

    g_FMC_i32ErrCode = 0;

    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPCMD = 0x0BUL;            
    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPADDR = 0x0u;                          
    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPTRG = (0x1ul << (0));           



    while (tout-- > 0)
    {
        if (!(((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPTRG & (0x1ul << (0))))   
        {
            if (((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPDAT != 0xDA)
                g_FMC_i32ErrCode = -1;
            return ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPDAT;
        }
    }
    g_FMC_i32ErrCode = -1;
    return 0xFFFFFFFF;

}









 
static __inline uint32_t FMC_ReadPID(void)
{
    uint32_t  tout = ((SystemCoreClock/10)/4);

    g_FMC_i32ErrCode = 0;

    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPCMD = 0x0CUL;           
    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPADDR = 0x04u;                        
    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPTRG = (0x1ul << (0));          



    while (tout-- > 0)
    {
        if (!(((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPTRG & (0x1ul << (0))))   
            return ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPDAT;
    }
    g_FMC_i32ErrCode = -1;
    return 0xFFFFFFFF;
}









 
static __inline uint32_t FMC_ReadUID(uint8_t u8Index)
{
    uint32_t  tout = ((SystemCoreClock/10)/4);

    g_FMC_i32ErrCode = 0;

    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPCMD = 0x04UL;
    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPADDR = ((uint32_t)u8Index << 2u);
    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPDAT = 0u;
    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPTRG = 0x1u;



    while (tout-- > 0)
    {
        if (!(((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPTRG & (0x1ul << (0))))   
            return ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPDAT;
    }
    g_FMC_i32ErrCode = -1;
    return 0xFFFFFFFF;
}









 
static __inline uint32_t FMC_ReadUCID(uint32_t u32Index)
{
    uint32_t  tout = ((SystemCoreClock/10)/4);

    g_FMC_i32ErrCode = 0;

    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPCMD = 0x04UL;             
    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPADDR = (0x04u * u32Index) + 0x10u;     
    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPTRG = (0x1ul << (0));            



    while (tout-- > 0)
    {
        if (!(((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPTRG & (0x1ul << (0))))   
            return ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPDAT;
    }
    g_FMC_i32ErrCode = -1;
    return 0xFFFFFFFF;
}














 
static __inline int32_t FMC_SetVectorPageAddr(uint32_t u32PageAddr)
{
    uint32_t  tout = ((SystemCoreClock/10)/4);

    g_FMC_i32ErrCode = 0;

    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPCMD = 0x2EUL;   
    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPADDR = u32PageAddr;        
    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPTRG = 0x1u;                



    while (tout-- > 0)
    {
        if (!((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPTRG)              
            return 0;
    }
    g_FMC_i32ErrCode = -1;
    return -1;
}


 
 
 

extern void FMC_Close(void);
extern int32_t FMC_Erase(uint32_t u32PageAddr);
extern int32_t FMC_Erase_SPROM(void);
extern int32_t FMC_Erase_Bank(uint32_t u32BankAddr);
extern int32_t FMC_GetBootSource(void);
extern void FMC_Open(void);
extern uint32_t FMC_Read(uint32_t u32Addr);
extern uint32_t FMC_ReadDataFlashBaseAddr(void);
extern void FMC_SetBootSource(int32_t i32BootSrc);
extern int32_t  FMC_Write(uint32_t u32Addr, uint32_t u32Data);
extern int32_t  FMC_Write8Bytes(uint32_t u32addr, uint32_t u32data0, uint32_t u32data1);
extern int32_t  FMC_ReadConfig(uint32_t u32Config[], uint32_t u32Count);
extern int32_t  FMC_WriteConfig(uint32_t u32Config[], uint32_t u32Count);
extern uint32_t FMC_GetChkSum(uint32_t u32addr, uint32_t u32count);
extern uint32_t  FMC_CheckAllOne(uint32_t u32addr, uint32_t u32count);
extern int32_t FMC_WriteMultiple(uint32_t u32Addr, uint32_t pu32Buf[], uint32_t u32Len);
extern int32_t FMC_RemapBank(uint32_t u32BankIdx);

   

   

   







 
#line 570 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\gpio.h"
 









 



#line 16 "..\\..\\..\\..\\Library\\StdDriver\\inc\\gpio.h"








 



 



 

















 
#line 68 "..\\..\\..\\..\\Library\\StdDriver\\inc\\gpio.h"

#line 85 "..\\..\\..\\..\\Library\\StdDriver\\inc\\gpio.h"

#line 101 "..\\..\\..\\..\\Library\\StdDriver\\inc\\gpio.h"

#line 118 "..\\..\\..\\..\\Library\\StdDriver\\inc\\gpio.h"

#line 135 "..\\..\\..\\..\\Library\\StdDriver\\inc\\gpio.h"

#line 150 "..\\..\\..\\..\\Library\\StdDriver\\inc\\gpio.h"

#line 161 "..\\..\\..\\..\\Library\\StdDriver\\inc\\gpio.h"

#line 170 "..\\..\\..\\..\\Library\\StdDriver\\inc\\gpio.h"

 
 
 






 
 
 






 
 
 



 
 
 






#line 220 "..\\..\\..\\..\\Library\\StdDriver\\inc\\gpio.h"


   



 













 














 














 














 














 














 














 















 































 








 








 








 









 








 




















 














 



void GPIO_SetMode(GPIO_T *port, uint32_t u32PinMask, uint32_t u32Mode);
void GPIO_EnableInt(GPIO_T *port, uint32_t u32Pin, uint32_t u32IntAttribs);
void GPIO_DisableInt(GPIO_T *port, uint32_t u32Pin);


   

   

   







 
#line 571 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\i2c.h"
 






 











 



 



 



 
 
 
#line 44 "..\\..\\..\\..\\Library\\StdDriver\\inc\\i2c.h"

 
 
 



 
 
 





   

extern int32_t g_I2C_i32ErrCode;



 










 











 











 











 












 











 












 












 











 












 











 












 












 











 












 












 












 












 












 











 












 











 











 











 











 











 











 








 








 








 








 








 








 








 


 
 
 

 
static __inline void I2C_STOP(I2C_T *i2c);









 
static __inline void I2C_STOP(I2C_T *i2c)
{
    uint32_t u32TimeOutCount = SystemCoreClock;

    (i2c)->CTL0 |= ((0x1ul << (3)) | (0x1ul << (4)));
    while(i2c->CTL0 & (0x1ul << (4)))
    {
        u32TimeOutCount--;
        if(u32TimeOutCount == 0) break;
    }
}

void I2C_ClearTimeoutFlag(I2C_T *i2c);
void I2C_Close(I2C_T *i2c);
void I2C_Trigger(I2C_T *i2c, uint8_t u8Start, uint8_t u8Stop, uint8_t u8Si, uint8_t u8Ack);
void I2C_DisableInt(I2C_T *i2c);
void I2C_EnableInt(I2C_T *i2c);
uint32_t I2C_GetBusClockFreq(I2C_T *i2c);
uint32_t I2C_GetIntFlag(I2C_T *i2c);
uint32_t I2C_GetStatus(I2C_T *i2c);
uint32_t I2C_Open(I2C_T *i2c, uint32_t u32BusClock);
uint8_t I2C_GetData(I2C_T *i2c);
void I2C_SetSlaveAddr(I2C_T *i2c, uint8_t u8SlaveNo, uint8_t u8SlaveAddr, uint8_t u8GCMode);
void I2C_SetSlaveAddrMask(I2C_T *i2c, uint8_t u8SlaveNo, uint8_t u8SlaveAddrMask);
uint32_t I2C_SetBusClockFreq(I2C_T *i2c, uint32_t u32BusClock);
void I2C_EnableTimeout(I2C_T *i2c, uint8_t u8LongTimeout);
void I2C_DisableTimeout(I2C_T *i2c);
void I2C_EnableWakeup(I2C_T *i2c);
void I2C_DisableWakeup(I2C_T *i2c);
void I2C_SetData(I2C_T *i2c, uint8_t u8Data);
uint8_t I2C_WriteByte(I2C_T *i2c, uint8_t u8SlaveAddr, uint8_t data);
uint32_t I2C_WriteMultiBytes(I2C_T *i2c, uint8_t u8SlaveAddr, uint8_t data[], uint32_t u32wLen);
uint8_t I2C_WriteByteOneReg(I2C_T *i2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr, uint8_t data);
uint32_t I2C_WriteMultiBytesOneReg(I2C_T *i2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr, uint8_t data[], uint32_t u32wLen);
uint8_t I2C_WriteByteTwoRegs(I2C_T *i2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr, uint8_t data);
uint32_t I2C_WriteMultiBytesTwoRegs(I2C_T *i2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr, uint8_t data[], uint32_t u32wLen);
uint8_t I2C_ReadByte(I2C_T *i2c, uint8_t u8SlaveAddr);
uint32_t I2C_ReadMultiBytes(I2C_T *i2c, uint8_t u8SlaveAddr, uint8_t rdata[], uint32_t u32rLen);
uint8_t I2C_ReadByteOneReg(I2C_T *i2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr);
uint32_t I2C_ReadMultiBytesOneReg(I2C_T *i2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr, uint8_t rdata[], uint32_t u32rLen);
uint8_t I2C_ReadByteTwoRegs(I2C_T *i2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr);
uint32_t I2C_ReadMultiBytesTwoRegs(I2C_T *i2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr, uint8_t rdata[], uint32_t u32rLen);
uint32_t I2C_SMBusGetStatus(I2C_T *i2c);
void I2C_SMBusClearInterruptFlag(I2C_T *i2c, uint8_t u8SMBusIntFlag);
void I2C_SMBusSetPacketByteCount(I2C_T *i2c, uint32_t u32PktSize);
void I2C_SMBusOpen(I2C_T *i2c, uint8_t u8HostDevice);
void I2C_SMBusClose(I2C_T *i2c);
void I2C_SMBusPECTxEnable(I2C_T *i2c, uint8_t u8PECTxEn);
uint8_t I2C_SMBusGetPECValue(I2C_T *i2c);
void I2C_SMBusIdleTimeout(I2C_T *i2c, uint32_t us, uint32_t u32Hclk);
void I2C_SMBusTimeout(I2C_T *i2c, uint32_t ms, uint32_t u32Pclk);
void I2C_SMBusClockLoTimeout(I2C_T *i2c, uint32_t ms, uint32_t u32Pclk);

   

   

   







 
#line 572 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\pdma.h"
 






 











 



 



 


 
 
 




 
 
 




 
 
 





 
 
 



#line 67 "..\\..\\..\\..\\Library\\StdDriver\\inc\\pdma.h"

 
 
 



 
 
 
#line 117 "..\\..\\..\\..\\Library\\StdDriver\\inc\\pdma.h"


 
 
 





   



 










 











 












 











 












 











 












 












 













 













 













 













 













 












 












 


 
 
 
void PDMA_Open(PDMA_T *pdma, uint32_t u32Mask);
void PDMA_Close(PDMA_T *pdma);
void PDMA_SetTransferCnt(PDMA_T *pdma, uint32_t u32Ch, uint32_t u32Width, uint32_t u32TransCount);
void PDMA_SetTransferAddr(PDMA_T *pdma, uint32_t u32Ch, uint32_t u32SrcAddr, uint32_t u32SrcCtrl, uint32_t u32DstAddr, uint32_t u32DstCtrl);
void PDMA_SetTransferMode(PDMA_T *pdma, uint32_t u32Ch, uint32_t u32Peripheral, uint32_t u32ScatterEn, uint32_t u32DescAddr);
void PDMA_SetBurstType(PDMA_T *pdma, uint32_t u32Ch, uint32_t u32BurstType, uint32_t u32BurstSize);
void PDMA_EnableTimeout(PDMA_T *pdma, uint32_t u32Mask);
void PDMA_DisableTimeout(PDMA_T *pdma, uint32_t u32Mask);
void PDMA_SetTimeOut(PDMA_T *pdma, uint32_t u32Ch, uint32_t u32OnOff, uint32_t u32TimeOutCnt);
void PDMA_Trigger(PDMA_T *pdma, uint32_t u32Ch);
void PDMA_EnableInt(PDMA_T *pdma, uint32_t u32Ch, uint32_t u32Mask);
void PDMA_DisableInt(PDMA_T *pdma, uint32_t u32Ch, uint32_t u32Mask);


   

   

   







 
#line 573 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\pwm.h"
 








 











 



 



 
#line 38 "..\\..\\..\\..\\Library\\StdDriver\\inc\\pwm.h"

 
 
 




 
 
 



 
 
 





 
 
 



 
 
 
#line 76 "..\\..\\..\\..\\Library\\StdDriver\\inc\\pwm.h"

 
 
 
#line 88 "..\\..\\..\\..\\Library\\StdDriver\\inc\\pwm.h"

#line 97 "..\\..\\..\\..\\Library\\StdDriver\\inc\\pwm.h"




 
 
 







 
 
 



 
 
 



 
 
 
#line 132 "..\\..\\..\\..\\Library\\StdDriver\\inc\\pwm.h"

 
 
 
#line 144 "..\\..\\..\\..\\Library\\StdDriver\\inc\\pwm.h"

 
 
 







   




 







 








 













 










 
#line 211 "..\\..\\..\\..\\Library\\StdDriver\\inc\\pwm.h"








 










 









 









 












 
















 











 











 









 












 









 













 
#line 360 "..\\..\\..\\..\\Library\\StdDriver\\inc\\pwm.h"









 
#line 378 "..\\..\\..\\..\\Library\\StdDriver\\inc\\pwm.h"
 




























 
#line 420 "..\\..\\..\\..\\Library\\StdDriver\\inc\\pwm.h"












 












 




 
 
 
uint32_t PWM_ConfigCaptureChannel(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32UnitTimeNsec, uint32_t u32CaptureEdge);
uint32_t PWM_ConfigOutputChannel(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Frequency, uint32_t u32DutyCycle);
void PWM_Start(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_Stop(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_ForceStop(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_EnableADCTrigger(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Condition);
void PWM_DisableADCTrigger(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_ClearADCTriggerFlag(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Condition);
uint32_t PWM_GetADCTriggerFlag(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableFaultBrake(PWM_T *pwm, uint32_t u32ChannelMask, uint32_t u32LevelMask, uint32_t u32BrakeSource);
void PWM_EnableCapture(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_DisableCapture(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_EnableOutput(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_DisableOutput(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_EnablePDMA(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32RisingFirst, uint32_t u32Mode);
void PWM_DisablePDMA(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableDeadZone(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Duration);
void PWM_DisableDeadZone(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableCaptureInt(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Edge);
void PWM_DisableCaptureInt(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Edge);
void PWM_ClearCaptureIntFlag(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Edge);
uint32_t PWM_GetCaptureIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableDutyInt(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32IntDutyType);
void PWM_DisableDutyInt(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_ClearDutyIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
uint32_t PWM_GetDutyIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableFaultBrakeInt(PWM_T *pwm, uint32_t u32BrakeSource);
void PWM_DisableFaultBrakeInt(PWM_T *pwm, uint32_t u32BrakeSource);
void PWM_ClearFaultBrakeIntFlag(PWM_T *pwm, uint32_t u32BrakeSource);
uint32_t PWM_GetFaultBrakeIntFlag(PWM_T *pwm, uint32_t u32BrakeSource);
void PWM_EnablePeriodInt(PWM_T *pwm, uint32_t u32ChannelNum,  uint32_t u32IntPeriodType);
void PWM_DisablePeriodInt(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_ClearPeriodIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
uint32_t PWM_GetPeriodIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableZeroInt(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_DisableZeroInt(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_ClearZeroIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
uint32_t PWM_GetZeroIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableLoadMode(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32LoadMode);
void PWM_DisableLoadMode(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32LoadMode);
void PWM_SetClockSource(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32ClkSrcSel);
void PWM_EnableBrakeNoiseFilter(PWM_T *pwm, uint32_t u32BrakePinNum, uint32_t u32ClkCnt, uint32_t u32ClkDivSel);
void PWM_DisableBrakeNoiseFilter(PWM_T *pwm, uint32_t u32BrakePinNum);
void PWM_EnableBrakePinInverse(PWM_T *pwm, uint32_t u32BrakePinNum);
void PWM_DisableBrakePinInverse(PWM_T *pwm, uint32_t u32BrakePinNum);
void PWM_SetBrakePinSource(PWM_T *pwm, uint32_t u32BrakePinNum, uint32_t u32SelAnotherModule);
uint32_t PWM_GetWrapAroundFlag(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_ClearWrapAroundFlag(PWM_T *pwm, uint32_t u32ChannelNum);

   

   

   







 
#line 574 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\bpwm.h"









 











 



 




 
#line 39 "..\\..\\..\\..\\Library\\StdDriver\\inc\\bpwm.h"

 
 
 




 
 
 



 
 
 





 
 
 





 
 
 
#line 79 "..\\..\\..\\..\\Library\\StdDriver\\inc\\bpwm.h"

 
 
 



 
 
 



 
 
 



 
 
 






   




 














 










 









 









 








 








 












 













 











 










 









 











 









 













 









 






























 
#line 326 "..\\..\\..\\..\\Library\\StdDriver\\inc\\bpwm.h"


 
 
 
uint32_t BPWM_ConfigCaptureChannel(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32UnitTimeNsec, uint32_t u32CaptureEdge);
uint32_t BPWM_ConfigOutputChannel(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32Frequency, uint32_t u32DutyCycle);
void BPWM_Start(BPWM_T *bpwm, uint32_t u32ChannelMask);
void BPWM_Stop(BPWM_T *bpwm, uint32_t u32ChannelMask);
void BPWM_ForceStop(BPWM_T *bpwm, uint32_t u32ChannelMask);
void BPWM_EnableADCTrigger(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32Condition);
void BPWM_DisableADCTrigger(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_ClearADCTriggerFlag(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32Condition);
uint32_t BPWM_GetADCTriggerFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_EnableCapture(BPWM_T *bpwm, uint32_t u32ChannelMask);
void BPWM_DisableCapture(BPWM_T *bpwm, uint32_t u32ChannelMask);
void BPWM_EnableOutput(BPWM_T *bpwm, uint32_t u32ChannelMask);
void BPWM_DisableOutput(BPWM_T *bpwm, uint32_t u32ChannelMask);
void BPWM_EnableCaptureInt(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32Edge);
void BPWM_DisableCaptureInt(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32Edge);
void BPWM_ClearCaptureIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32Edge);
uint32_t BPWM_GetCaptureIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_EnableDutyInt(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32IntDutyType);
void BPWM_DisableDutyInt(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_ClearDutyIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
uint32_t BPWM_GetDutyIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_EnablePeriodInt(BPWM_T *bpwm, uint32_t u32ChannelNum,  uint32_t u32IntPeriodType);
void BPWM_DisablePeriodInt(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_ClearPeriodIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
uint32_t BPWM_GetPeriodIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_EnableZeroInt(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_DisableZeroInt(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_ClearZeroIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
uint32_t BPWM_GetZeroIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_EnableLoadMode(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32LoadMode);
void BPWM_DisableLoadMode(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32LoadMode);
void BPWM_SetClockSource(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32ClkSrcSel);
uint32_t BPWM_GetWrapAroundFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_ClearWrapAroundFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);


   

   

   







 
#line 575 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\qspi.h"
 






 











 



 



 













 
#line 54 "..\\..\\..\\..\\Library\\StdDriver\\inc\\qspi.h"

 
#line 64 "..\\..\\..\\..\\Library\\StdDriver\\inc\\qspi.h"

   




 







 








 








 








 








 








 








 








 









 









 









 








 









 








 








 








 








 










 








 








 









 









 








 








 








 








 








 








 







 







 







 







 







 







 





 
uint32_t QSPI_Open(QSPI_T *qspi, uint32_t u32MasterSlave, uint32_t u32QSPIMode, uint32_t u32DataWidth, uint32_t u32BusClock);
void QSPI_Close(QSPI_T *qspi);
void QSPI_ClearRxFIFO(QSPI_T *qspi);
void QSPI_ClearTxFIFO(QSPI_T *qspi);
void QSPI_DisableAutoSS(QSPI_T *qspi);
void QSPI_EnableAutoSS(QSPI_T *qspi, uint32_t u32SSPinMask, uint32_t u32ActiveLevel);
uint32_t QSPI_SetBusClock(QSPI_T *qspi, uint32_t u32BusClock);
void QSPI_SetFIFO(QSPI_T *qspi, uint32_t u32TxThreshold, uint32_t u32RxThreshold);
uint32_t QSPI_GetBusClock(QSPI_T *qspi);
void QSPI_EnableInt(QSPI_T *qspi, uint32_t u32Mask);
void QSPI_DisableInt(QSPI_T *qspi, uint32_t u32Mask);
uint32_t QSPI_GetIntFlag(QSPI_T *qspi, uint32_t u32Mask);
void QSPI_ClearIntFlag(QSPI_T *qspi, uint32_t u32Mask);
uint32_t QSPI_GetStatus(QSPI_T *qspi, uint32_t u32Mask);


   

   

   







 
#line 576 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\spi.h"









 











 



 



 
#line 41 "..\\..\\..\\..\\Library\\StdDriver\\inc\\spi.h"

 
#line 53 "..\\..\\..\\..\\Library\\StdDriver\\inc\\spi.h"

 
#line 63 "..\\..\\..\\..\\Library\\StdDriver\\inc\\spi.h"


 





 



 





 



 




 





 



 



 
#line 112 "..\\..\\..\\..\\Library\\StdDriver\\inc\\spi.h"

   




 






 







 







 







 







 







 








 








 








 







 








 







 







 







 







 









 







 







 








 








 







 







 











 
static __inline void SPII2S_ENABLE_TX_ZCD(SPI_T *i2s, uint32_t u32ChMask)
{
    if(u32ChMask == (0ul))
        i2s->I2SCTL |= (0x1ul << (16));
    else
        i2s->I2SCTL |= (0x1ul << (17));
}









 
static __inline void SPII2S_DISABLE_TX_ZCD(SPI_T *i2s, uint32_t u32ChMask)
{
    if(u32ChMask == (0ul))
        i2s->I2SCTL &= ~(0x1ul << (16));
    else
        i2s->I2SCTL &= ~(0x1ul << (17));
}






 







 







 







 







 







 







 







 







 







 







 







 










 
static __inline void SPII2S_SET_MONO_RX_CHANNEL(SPI_T *i2s, uint32_t u32Ch)
{
    u32Ch == (0x1ul << (23)) ?
    (i2s->I2SCTL |= (0x1ul << (23))) :
    (i2s->I2SCTL &= ~(0x1ul << (23)));
}







 







 








 









 







 







 




 
uint32_t SPI_Open(SPI_T *spi, uint32_t u32MasterSlave, uint32_t u32SPIMode, uint32_t u32DataWidth, uint32_t u32BusClock);
void SPI_Close(SPI_T *spi);
void SPI_ClearRxFIFO(SPI_T *spi);
void SPI_ClearTxFIFO(SPI_T *spi);
void SPI_DisableAutoSS(SPI_T *spi);
void SPI_EnableAutoSS(SPI_T *spi, uint32_t u32SSPinMask, uint32_t u32ActiveLevel);
uint32_t SPI_SetBusClock(SPI_T *spi, uint32_t u32BusClock);
void SPI_SetFIFO(SPI_T *spi, uint32_t u32TxThreshold, uint32_t u32RxThreshold);
uint32_t SPI_GetBusClock(SPI_T *spi);
void SPI_EnableInt(SPI_T *spi, uint32_t u32Mask);
void SPI_DisableInt(SPI_T *spi, uint32_t u32Mask);
uint32_t SPI_GetIntFlag(SPI_T *spi, uint32_t u32Mask);
void SPI_ClearIntFlag(SPI_T *spi, uint32_t u32Mask);
uint32_t SPI_GetStatus(SPI_T *spi, uint32_t u32Mask);

uint32_t SPII2S_Open(SPI_T *i2s, uint32_t u32MasterSlave, uint32_t u32SampleRate, uint32_t u32WordWidth, uint32_t u32Channels, uint32_t u32DataFormat);
void SPII2S_Close(SPI_T *i2s);
void SPII2S_EnableInt(SPI_T *i2s, uint32_t u32Mask);
void SPII2S_DisableInt(SPI_T *i2s, uint32_t u32Mask);
uint32_t SPII2S_EnableMCLK(SPI_T *i2s, uint32_t u32BusClock);
void SPII2S_DisableMCLK(SPI_T *i2s);
void SPII2S_SetFIFO(SPI_T *i2s, uint32_t u32TxThreshold, uint32_t u32RxThreshold);


   

   

   







 
#line 577 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\rtc.h"










 












 



 



 
 
 
 


 
 
 
#line 73 "..\\..\\..\\..\\Library\\StdDriver\\inc\\rtc.h"

 
 
 





 
 
 
#line 93 "..\\..\\..\\..\\Library\\StdDriver\\inc\\rtc.h"

 
 
 
#line 104 "..\\..\\..\\..\\Library\\StdDriver\\inc\\rtc.h"

 
 
 



 
 
 



   




 


 
typedef struct
{
    uint32_t u32Year;            
    uint32_t u32Month;           
    uint32_t u32Day;             
    uint32_t u32DayOfWeek;       
    uint32_t u32Hour;            
    uint32_t u32Minute;          
    uint32_t u32Second;          
    uint32_t u32TimeScale;       
    uint32_t u32AmPm;            
} S_RTC_TIME_DATA_T;

   




 











 











 











 












 












 











 











 











 











 












 


void RTC_Open(S_RTC_TIME_DATA_T *psPt);
void RTC_Close(void);
void RTC_32KCalibration(int32_t i32FrequencyX10000);
void RTC_GetDateAndTime(S_RTC_TIME_DATA_T *psPt);
void RTC_GetAlarmDateAndTime(S_RTC_TIME_DATA_T *psPt);
void RTC_SetDateAndTime(S_RTC_TIME_DATA_T *psPt);
void RTC_SetAlarmDateAndTime(S_RTC_TIME_DATA_T *psPt);
void RTC_SetDate(uint32_t u32Year, uint32_t u32Month, uint32_t u32Day, uint32_t u32DayOfWeek);
void RTC_SetTime(uint32_t u32Hour, uint32_t u32Minute, uint32_t u32Second, uint32_t u32TimeMode, uint32_t u32AmPm);
void RTC_SetAlarmDate(uint32_t u32Year, uint32_t u32Month, uint32_t u32Day);
void RTC_SetAlarmTime(uint32_t u32Hour, uint32_t u32Minute, uint32_t u32Second, uint32_t u32TimeMode, uint32_t u32AmPm);
void RTC_SetAlarmDateMask(uint8_t u8IsTenYMsk, uint8_t u8IsYMsk, uint8_t u8IsTenMMsk, uint8_t u8IsMMsk, uint8_t u8IsTenDMsk, uint8_t u8IsDMsk);
void RTC_SetAlarmTimeMask(uint8_t u8IsTenHMsk, uint8_t u8IsHMsk, uint8_t u8IsTenMMsk, uint8_t u8IsMMsk, uint8_t u8IsTenSMsk, uint8_t u8IsSMsk);
uint32_t RTC_GetDayOfWeek(void);
void RTC_SetTickPeriod(uint32_t u32TickSelection);
void RTC_EnableInt(uint32_t u32IntFlagMask);
void RTC_DisableInt(uint32_t u32IntFlagMask);

   

   

   







 
#line 578 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\hdiv.h"
 








 











 



 



 











 
static __inline int32_t HDIV_Div(int32_t x, int16_t y)
{
    uint32_t *p32;

    p32 = (uint32_t *)((( uint32_t)0x40000000) + 0x14000);
    *p32++ = x;
    *p32++ = y;
    return *p32;
}











 
static __inline int16_t HDIV_Mod(int32_t x, int16_t y)
{
    uint32_t *p32;

    p32 = (uint32_t *)((( uint32_t)0x40000000) + 0x14000);
    *p32++ = x;
    *p32++ = y;
    return p32[1];
}

   

   

   







 


#line 579 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\timer.h"
 









 











 



 



 

 
 
 











































   




 















 














 













 















 















 












 
static __inline void TIMER_Start(TIMER_T *timer)
{
    timer->CTL |= (0x1ul << (30));
}











 
static __inline void TIMER_Stop(TIMER_T *timer)
{
    timer->CTL &= ~(0x1ul << (30));
}













 
static __inline void TIMER_EnableWakeup(TIMER_T *timer)
{
    timer->CTL |= (0x1ul << (23));
}











 
static __inline void TIMER_DisableWakeup(TIMER_T *timer)
{
    timer->CTL &= ~(0x1ul << (23));
}











 
static __inline void TIMER_StartCapture(TIMER_T *timer)
{
    timer->EXTCTL |= (0x1ul << (3));
}











 
static __inline void TIMER_StopCapture(TIMER_T *timer)
{
    timer->EXTCTL &= ~(0x1ul << (3));
}











 
static __inline void TIMER_EnableCaptureDebounce(TIMER_T *timer)
{
    timer->EXTCTL |= (0x1ul << (6));
}











 
static __inline void TIMER_DisableCaptureDebounce(TIMER_T *timer)
{
    timer->EXTCTL &= ~(0x1ul << (6));
}











 
static __inline void TIMER_EnableEventCounterDebounce(TIMER_T *timer)
{
    timer->EXTCTL |= (0x1ul << (7));
}











 
static __inline void TIMER_DisableEventCounterDebounce(TIMER_T *timer)
{
    timer->EXTCTL &= ~(0x1ul << (7));
}











 
static __inline void TIMER_EnableInt(TIMER_T *timer)
{
    timer->CTL |= (0x1ul << (29));
}











 
static __inline void TIMER_DisableInt(TIMER_T *timer)
{
    timer->CTL &= ~(0x1ul << (29));
}











 
static __inline void TIMER_EnableCaptureInt(TIMER_T *timer)
{
    timer->EXTCTL |= (0x1ul << (5));
}











 
static __inline void TIMER_DisableCaptureInt(TIMER_T *timer)
{
    timer->EXTCTL &= ~(0x1ul << (5));
}












 
static __inline uint32_t TIMER_GetIntFlag(TIMER_T *timer)
{
    return ((timer->INTSTS & (0x1ul << (0))) ? 1 : 0);
}











 
static __inline void TIMER_ClearIntFlag(TIMER_T *timer)
{
    timer->INTSTS = (0x1ul << (0));
}












 
static __inline uint32_t TIMER_GetCaptureIntFlag(TIMER_T *timer)
{
    return timer->EINTSTS;
}











 
static __inline void TIMER_ClearCaptureIntFlag(TIMER_T *timer)
{
    timer->EINTSTS = (0x1ul << (0));
}












 
static __inline uint32_t TIMER_GetWakeupFlag(TIMER_T *timer)
{
    return (timer->INTSTS & (0x1ul << (1)) ? 1 : 0);
}











 
static __inline void TIMER_ClearWakeupFlag(TIMER_T *timer)
{
    timer->INTSTS = (0x1ul << (1));
}











 
static __inline uint32_t TIMER_GetCaptureData(TIMER_T *timer)
{
    return timer->CAP;
}











 
static __inline uint32_t TIMER_GetCounter(TIMER_T *timer)
{
    return timer->CNT;
}











 
static __inline void TIMER_ResetCounter(TIMER_T *timer)
{
    timer->CTL |= (0x1ul << (26));
    while((timer->CTL & (0x1ul << (26))) == (0x1ul << (26)));
}


uint32_t TIMER_Open(TIMER_T *timer, uint32_t u32Mode, uint32_t u32Freq);
void TIMER_Close(TIMER_T *timer);
int32_t TIMER_Delay(TIMER_T *timer, uint32_t u32Usec);
void TIMER_EnableCapture(TIMER_T *timer, uint32_t u32CapMode, uint32_t u32Edge);
void TIMER_DisableCapture(TIMER_T *timer);
void TIMER_EnableEventCounter(TIMER_T *timer, uint32_t u32Edge);
void TIMER_DisableEventCounter(TIMER_T *timer);
uint32_t TIMER_GetModuleClock(TIMER_T *timer);
void TIMER_EnableFreqCounter(TIMER_T *timer,
                             uint32_t u32DropCount,
                             uint32_t u32Timeout,
                             uint32_t u32EnableInt);
void TIMER_DisableFreqCounter(TIMER_T *timer);
void TIMER_SetTriggerSource(TIMER_T *timer, uint32_t u32Src);
void TIMER_SetTriggerTarget(TIMER_T *timer, uint32_t u32Mask);
void TIMER_CaptureSelect(TIMER_T *timer, uint32_t u32Src);

   

   

   







 
#line 580 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\uart.h"







 












 



 



 

 
 
 

#line 43 "..\\..\\..\\..\\Library\\StdDriver\\inc\\uart.h"

 
 
 











 
 
 
















 
 
 




 
 
 




 
 
 







 
 
 




   




 












 













 













 












 













 













 














 












 













 













 













 













 













 












 

























 

























 









































 












 













 


 
static __inline void UART_CLEAR_RTS(UART_T *uart);
static __inline void UART_SET_RTS(UART_T *uart);










 
static __inline void UART_CLEAR_RTS(UART_T *uart)
{
    uart->MODEM |= (0x1ul << (9));
    uart->MODEM &= ~(0x1ul << (1));
}










 
static __inline void UART_SET_RTS(UART_T *uart)
{
    uart->MODEM |= (0x1ul << (9)) | (0x1ul << (1));
}


void UART_ClearIntFlag(UART_T *uart , uint32_t u32InterruptFlag);
void UART_Close(UART_T *uart);
void UART_DisableFlowCtrl(UART_T *uart);
void UART_DisableInt(UART_T  *uart, uint32_t u32InterruptFlag);
void UART_EnableFlowCtrl(UART_T *uart);
void UART_EnableInt(UART_T  *uart, uint32_t u32InterruptFlag);
void UART_Open(UART_T *uart, uint32_t u32baudrate);
uint32_t UART_Read(UART_T *uart, uint8_t pu8RxBuf[], uint32_t u32ReadBytes);
void UART_SetLine_Config(UART_T *uart, uint32_t u32baudrate, uint32_t u32data_width, uint32_t u32parity, uint32_t  u32stop_bits);
void UART_SetTimeoutCnt(UART_T *uart, uint32_t u32TOC);
void UART_SelectIrDAMode(UART_T *uart, uint32_t u32Buadrate, uint32_t u32Direction);
void UART_SelectRS485Mode(UART_T *uart, uint32_t u32Mode, uint32_t u32Addr);
uint32_t UART_Write(UART_T *uart, uint8_t pu8TxBuf[], uint32_t u32WriteBytes);
void UART_SelectSingleWireMode(UART_T *uart);



   

   

   







 
#line 581 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usbd.h"

 









  











 



 



 
typedef struct s_usbd_info
{
    uint8_t *gu8DevDesc;             
    uint8_t *gu8ConfigDesc;          
    uint8_t **gu8StringDesc;         
    uint8_t **gu8HidReportDesc;      
    uint8_t *gu8BosDesc;             
    uint32_t *gu32HidReportSize;     
    uint32_t *gu32ConfigHidDescIdx;  

} S_USBD_INFO_T;   

extern const S_USBD_INFO_T gsInfo;

   






 



#line 66 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usbd.h"

 
 




 
#line 85 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usbd.h"

 
#line 98 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usbd.h"

 



 



 
#line 118 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usbd.h"

 







 


 

 
 
 

#line 146 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usbd.h"







#line 168 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usbd.h"

#line 175 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usbd.h"












   




 











 













 












 











 











 











 











 











 











 











 














 











 














 











 















 












 











 












 












 













 











 













 













 











 











 











 












 















 
static __inline void USBD_MemCopy(uint8_t dest[], uint8_t src[], uint32_t size)
{
    uint32_t volatile i=0ul;

    while(size--)
    {
        dest[i] = src[i];
        i++;
    }
}










 
static __inline void USBD_SetStall(uint8_t epnum)
{
    uint32_t u32CfgAddr;
    uint32_t u32Cfg;
    uint32_t i;

    for(i = 0ul; i < 8ul; i++)
    {
        u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0xC0000))->EP[0].CFG;  
        u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

        if((u32Cfg & 0xful) == epnum)
        {
            u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0xC0000))->EP[0].CFGP;  
            u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

            *((volatile uint32_t *)(u32CfgAddr)) = (u32Cfg | (0x1ul << (1)));
            break;
        }
    }
}









 
static __inline void USBD_ClearStall(uint8_t epnum)
{
    uint32_t u32CfgAddr;
    uint32_t u32Cfg;
    uint32_t i;

    for(i = 0ul; i < 8ul; i++)
    {
        u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0xC0000))->EP[0].CFG;  
        u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

        if((u32Cfg & 0xful) == epnum)
        {
            u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0xC0000))->EP[0].CFGP;  
            u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

            *((volatile uint32_t *)(u32CfgAddr)) = (u32Cfg & ~(0x1ul << (1)));
            break;
        }
    }
}











 
static __inline uint32_t USBD_GetStall(uint8_t epnum)
{
    uint32_t u32CfgAddr;
    uint32_t u32Cfg;
    uint32_t i;

    for(i = 0ul; i < 8ul; i++)
    {
        u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0xC0000))->EP[0].CFG;  
        u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

        if((u32Cfg & 0xful) == epnum)
        {
            u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0xC0000))->EP[0].CFGP;  
            break;
        }
    }

    return ((*((volatile uint32_t *)(u32CfgAddr))) & (0x1ul << (1)));
}


extern volatile uint8_t g_usbd_RemoteWakeupEn;


typedef void (*VENDOR_REQ)(void);            
typedef void (*CLASS_REQ)(void);             
typedef void (*SET_INTERFACE_REQ)(uint32_t u32AltInterface);     
typedef void (*SET_CONFIG_CB)(void);        


 
void USBD_Open(const S_USBD_INFO_T *param, CLASS_REQ pfnClassReq, SET_INTERFACE_REQ pfnSetInterface);
void USBD_Start(void);
void USBD_GetSetupPacket(uint8_t *buf);
void USBD_ProcessSetupPacket(void);
void USBD_StandardRequest(void);
void USBD_PrepareCtrlIn(uint8_t pu8Buf[], uint32_t u32Size);
void USBD_CtrlIn(void);
void USBD_PrepareCtrlOut(uint8_t *pu8Buf, uint32_t u32Size);
void USBD_CtrlOut(void);
void USBD_SwReset(void);
void USBD_SetVendorRequest(VENDOR_REQ pfnVendorReq);
void USBD_SetConfigCallback(SET_CONFIG_CB pfnSetConfigCallback);
void USBD_LockEpStall(uint32_t u32EpBitmap);

   

   

   







 
#line 582 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usci_i2c.h"
 






 











 



 



 

 
 
 
enum UI2C_MASTER_EVENT
{
    MASTER_SEND_ADDRESS = 10u,     
    MASTER_SEND_H_WR_ADDRESS,     
    MASTER_SEND_H_RD_ADDRESS,     
    MASTER_SEND_L_ADDRESS,        
    MASTER_SEND_DATA,             
    MASTER_SEND_REPEAT_START,     
    MASTER_READ_DATA,             
    MASTER_STOP,                  
    MASTER_SEND_START             
};

 
 
 
enum UI2C_SLAVE_EVENT
{
    SLAVE_ADDRESS_ACK = 100u,       
    SLAVE_H_WR_ADDRESS_ACK,        
    SLAVE_L_WR_ADDRESS_ACK,        
    SLAVE_GET_DATA,                
    SLAVE_SEND_DATA,               
    SLAVE_H_RD_ADDRESS_ACK,        
    SLAVE_L_RD_ADDRESS_ACK         
};

 
 
 





 
 
 



 
 
 



 
 
 
#line 90 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usci_i2c.h"

   




 











 











 











 











 












 












 












 











 











 











 











 

















 

















 

















 



uint32_t UI2C_Open(UI2C_T *ui2c, uint32_t u32BusClock);
void UI2C_Close(UI2C_T *ui2c);
void UI2C_ClearTimeoutFlag(UI2C_T *ui2c);
void UI2C_Trigger(UI2C_T *ui2c, uint8_t u8Start, uint8_t u8Stop, uint8_t u8Ptrg, uint8_t u8Ack);
void UI2C_DisableInt(UI2C_T *ui2c, uint32_t u32Mask);
void UI2C_EnableInt(UI2C_T *ui2c, uint32_t u32Mask);
uint32_t UI2C_GetBusClockFreq(UI2C_T *ui2c);
uint32_t UI2C_SetBusClockFreq(UI2C_T *ui2c, uint32_t u32BusClock);
uint32_t UI2C_GetIntFlag(UI2C_T *ui2c, uint32_t u32Mask);
void UI2C_ClearIntFlag(UI2C_T *ui2c , uint32_t u32Mask);
uint32_t UI2C_GetData(UI2C_T *ui2c);
void UI2C_SetData(UI2C_T *ui2c, uint8_t u8Data);
void UI2C_SetSlaveAddr(UI2C_T *ui2c, uint8_t u8SlaveNo, uint16_t u16SlaveAddr, uint8_t u8GCMode);
void UI2C_SetSlaveAddrMask(UI2C_T *ui2c, uint8_t u8SlaveNo, uint16_t u16SlaveAddrMask);
void UI2C_EnableTimeout(UI2C_T *ui2c, uint32_t u32TimeoutCnt);
void UI2C_DisableTimeout(UI2C_T *ui2c);
void UI2C_EnableWakeup(UI2C_T *ui2c, uint8_t u8WakeupMode);
void UI2C_DisableWakeup(UI2C_T *ui2c);
uint8_t UI2C_WriteByte(UI2C_T *ui2c, uint8_t u8SlaveAddr, const uint8_t data);
uint32_t UI2C_WriteMultiBytes(UI2C_T *ui2c, uint8_t u8SlaveAddr, const uint8_t *data, uint32_t u32wLen);
uint8_t UI2C_WriteByteOneReg(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr, const uint8_t data);
uint32_t UI2C_WriteMultiBytesOneReg(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr, const uint8_t *data, uint32_t u32wLen);
uint8_t UI2C_WriteByteTwoRegs(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr, const uint8_t data);
uint32_t UI2C_WriteMultiBytesTwoRegs(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr, const uint8_t *data, uint32_t u32wLen);
uint8_t UI2C_ReadByte(UI2C_T *ui2c, uint8_t u8SlaveAddr);
uint32_t UI2C_ReadMultiBytes(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint8_t *rdata, uint32_t u32rLen);
uint8_t UI2C_ReadByteOneReg(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr);
uint32_t UI2C_ReadMultiBytesOneReg(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr, uint8_t *rdata, uint32_t u32rLen);
uint8_t UI2C_ReadByteTwoRegs(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr);
uint32_t UI2C_ReadMultiBytesTwoRegs(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr, uint8_t *rdata, uint32_t u32rLen);

   

   

   







 
#line 583 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usci_spi.h"
 






 











 



 



 













 
#line 53 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usci_spi.h"

 
#line 61 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usci_spi.h"

   




 






 







 









 









 









 







 








 








 












 












 







 







 








 
#line 198 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usci_spi.h"








 









 







 







 
















 







 










 












 












 










 










 












 












 








 








 








 








 








 








 


uint32_t USPI_Open(USPI_T *uspi, uint32_t u32MasterSlave, uint32_t u32SPIMode,  uint32_t u32DataWidth, uint32_t u32BusClock);
void USPI_Close(USPI_T *uspi);
void USPI_ClearRxBuf(USPI_T *uspi);
void USPI_ClearTxBuf(USPI_T *uspi);
void USPI_DisableAutoSS(USPI_T *uspi);
void USPI_EnableAutoSS(USPI_T *uspi, uint32_t u32SSPinMask, uint32_t u32ActiveLevel);
uint32_t USPI_SetBusClock(USPI_T *uspi, uint32_t u32BusClock);
uint32_t USPI_GetBusClock(USPI_T *uspi);
void USPI_EnableInt(USPI_T *uspi, uint32_t u32Mask);
void USPI_DisableInt(USPI_T *uspi, uint32_t u32Mask);
uint32_t USPI_GetIntFlag(USPI_T *uspi, uint32_t u32Mask);
void USPI_ClearIntFlag(USPI_T *uspi, uint32_t u32Mask);
uint32_t USPI_GetStatus(USPI_T *uspi, uint32_t u32Mask);
void USPI_EnableWakeup(USPI_T *uspi);
void USPI_DisableWakeup(USPI_T *uspi);


   

   

   







 
#line 584 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usci_uart.h"
 






 












 



 



 

 
 
 





 
 
 







 
 
 
#line 59 "..\\..\\..\\..\\Library\\StdDriver\\inc\\usci_uart.h"


   




 












 












 













 













 














 














 












 













 













 













 













 















 















 














 














 

















 

















 












 






















 












 














 













 












 















 















 












 












 












 












 



void UUART_ClearIntFlag(UUART_T* uuart, uint32_t u32Mask);
uint32_t UUART_GetIntFlag(UUART_T* uuart, uint32_t u32Mask);
void UUART_Close(UUART_T* uuart);
void UUART_DisableInt(UUART_T*  uuart, uint32_t u32Mask);
void UUART_EnableInt(UUART_T*  uuart, uint32_t u32Mask);
uint32_t UUART_Open(UUART_T* uuart, uint32_t u32baudrate);
uint32_t UUART_Read(UUART_T* uuart, uint8_t pu8RxBuf[], uint32_t u32ReadBytes);
uint32_t UUART_SetLine_Config(UUART_T* uuart, uint32_t u32baudrate, uint32_t u32data_width, uint32_t u32parity, uint32_t u32stop_bits);
uint32_t UUART_Write(UUART_T* uuart, uint8_t pu8TxBuf[], uint32_t u32WriteBytes);
void UUART_EnableWakeup(UUART_T* uuart, uint32_t u32WakeupMode);
void UUART_DisableWakeup(UUART_T* uuart);
void UUART_EnableFlowCtrl(UUART_T* uuart);
void UUART_DisableFlowCtrl(UUART_T* uuart);


   

   

   







 
#line 585 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\wdt.h"
 









 











 



 



 
 
 
 
#line 44 "..\\..\\..\\..\\Library\\StdDriver\\inc\\wdt.h"

 
 
 





 
 
 


   




 










 











 











 












 












 












 














 


static __inline void WDT_Close(void);
static __inline void WDT_EnableInt(void);
static __inline void WDT_DisableInt(void);








 
static __inline void WDT_Close(void)
{
    ((WDT_T *) ((( uint32_t)0x40000000) + 0x40000))->CTL = 0UL;
    while(((WDT_T *) ((( uint32_t)0x40000000) + 0x40000))->CTL & (0x1ul << (30))); 
    return;
}









 
static __inline void WDT_EnableInt(void)
{
    ((WDT_T *) ((( uint32_t)0x40000000) + 0x40000))->CTL |= (0x1ul << (6));
    while(((WDT_T *) ((( uint32_t)0x40000000) + 0x40000))->CTL & (0x1ul << (30))); 
    return;
}









 
static __inline void WDT_DisableInt(void)
{
     
    ((WDT_T *) ((( uint32_t)0x40000000) + 0x40000))->CTL &= ~((0x1ul << (6)) | (0x1ul << (2)) | (0x1ul << (3)) | (0x1ul << (5)));
    return;
}

void WDT_Open(uint32_t u32TimeoutInterval, uint32_t u32ResetDelay, uint32_t u32EnableReset, uint32_t u32EnableWakeup);

   

   

   







 
#line 586 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\wwdt.h"
 









 











 



 



 
 
 
 
#line 51 "..\\..\\..\\..\\Library\\StdDriver\\inc\\wwdt.h"

 
 
 


   




 










 











 












 












 











 














 


void WWDT_Open(uint32_t u32PreScale, uint32_t u32CmpValue, uint32_t u32EnableInt);

   

   

   







 
#line 587 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\M031Series.h"



 
#line 13 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\M031\\Include\\NuMicro.h"



 
#line 13 "..\\MyProject.h"
#line 1 "..\\periph_conf.h"









 



 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 

 
 
 





 
 
 








 
#line 14 "..\\MyProject.h"
#line 1 "..\\control_logic.h"
#line 4 "..\\control_logic.h"




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






#line 15 "..\\MyProject.h"
#line 1 "..\\port_helper.h"







		void Set_port_a(int val);
		void Set_port_b(int val);
		void Set_port_c(int val);
		void Set_port_d(int val);
		void Set_port_f(int val);






#line 16 "..\\MyProject.h"

 
#line 2 "..\\control_logic.c"
#line 3 "..\\control_logic.c"


volatile char totalRegsToRead = 6;
volatile char toatalDataBytesToReceived = 12;
volatile char responceSize = 15;

volatile char responce[107];
volatile char First_Reg_L;
volatile char First_Reg_H;
volatile char Second_Reg_L;
volatile char Second_Reg_H;

volatile char port1Readings[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
volatile char port2Readings[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
volatile char port3Readings[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
volatile char port4Readings[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

volatile char port1States[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
volatile char port2States[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
volatile char port3States[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
volatile char port4States[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

volatile char boardID = 0;
volatile uint32_t i;
volatile uint32_t arrayIndex = 0;
volatile uint32_t dataReceiving = 0;
volatile uint32_t seconds = 0;

volatile uint32_t ticks = 0;






 

void GetBoardID()
{
	if((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(3))) + ((0)<<2)))) == 0)
		boardID = boardID | 0x01;
	if((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(3))) + ((1)<<2)))) == 0)
		boardID = boardID | 0x02;
	if((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(3))) + ((2)<<2)))) == 0)
		boardID = boardID | 0x04;
	if((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(3))) + ((3)<<2)))) == 0)
		boardID = boardID | 0x08;
	if((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(2))) + ((0)<<2)))) == 0)
		boardID = boardID | 0x10;
	if((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(2))) + ((1)<<2)))) == 0)
		boardID = boardID | 0x20;
	
	
	toatalDataBytesToReceived = 2 * totalRegsToRead;
	responceSize = toatalDataBytesToReceived + 3;
	boardID = 1;
	printf("%d", boardID);
}

void setPort_1(char value)
{
	volatile char res = value & 0x01;
	port1Readings[0] = port1Readings[0] << 1;
	if(res != 0)
		port1Readings[0] = port1Readings[0] | 0x01;
	
	res = value & 0x02;
	port1Readings[1] = port1Readings[1] << 1;
	if(res != 0)
		port1Readings[1] = port1Readings[1] | 0x01;
	
	res = value & 0x04;
	port1Readings[2] = port1Readings[2] << 1;
	if(res != 0)
		port1Readings[2] = port1Readings[2] | 0x01;
	
	res = value & 0x08;
	port1Readings[3] = port1Readings[3] << 1;
	if(res != 0)
		port1Readings[3] = port1Readings[3] | 0x01;
	
	res = value & 0x10;
	port1Readings[4] = port1Readings[4] << 1;
	if(res != 0)
		port1Readings[4] = port1Readings[4] | 0x01;
		
	res = value & 0x20;
	port1Readings[5] = port1Readings[5] << 1;
	if(res != 0)
		port1Readings[5] = port1Readings[5] | 0x01;
	
	res = value & 0x40;
	port1Readings[6] = port1Readings[6] << 1;
	if(res != 0)
		port1Readings[6] = port1Readings[6] | 0x01;
	
	res = value & 0x80;
	port1Readings[7] = port1Readings[7] << 1;
	if(res != 0)
		port1Readings[7] = port1Readings[7] | 0x01;
}

void setPort_2(char value)
{
	volatile char res = value & 0x01;
	port2Readings[0] = port2Readings[0] << 1;
	if(res != 0)
		port2Readings[0] = port2Readings[0] | 0x01;
	
	res = value & 0x02;
	port2Readings[1] = port2Readings[1] << 1;
	if(res != 0)
		port2Readings[1] = port2Readings[1] | 0x01;
	
	res = value & 0x04;
	port2Readings[2] = port2Readings[2] << 1;
	if(res != 0)
		port2Readings[2] = port2Readings[2] | 0x01;
	
	res = value & 0x08;
	port2Readings[3] = port2Readings[3] << 1;
	if(res != 0)
		port2Readings[3] = port2Readings[3] | 0x01;
	
	res = value & 0x10;
	port2Readings[4] = port2Readings[4] << 1;
	if(res != 0)
		port2Readings[4] = port2Readings[4] | 0x01;
		
	res = value & 0x20;
	port2Readings[5] = port2Readings[5] << 1;
	if(res != 0)
		port2Readings[5] = port2Readings[5] | 0x01;
	
	res = value & 0x40;
	port2Readings[6] = port2Readings[6] << 1;
	if(res != 0)
		port2Readings[6] = port2Readings[6] | 0x01;
	
	res = value & 0x80;
	port2Readings[7] = port2Readings[7] << 1;
	if(res != 0)
		port2Readings[7] = port2Readings[7] | 0x01;
}

void setPort_3(char value)
{
	volatile char res = value & 0x01;
	port3Readings[0] = port3Readings[0] << 1;
	if(res != 0)
		port3Readings[0] = port3Readings[0] | 0x01;
	
	res = value & 0x02;
	port3Readings[1] = port3Readings[1] << 1;
	if(res != 0)
		port3Readings[1] = port3Readings[1] | 0x01;
	
	res = value & 0x04;
	port3Readings[2] = port3Readings[2] << 1;
	if(res != 0)
		port3Readings[2] = port3Readings[2] | 0x01;
	
	res = value & 0x08;
	port3Readings[3] = port3Readings[3] << 1;
	if(res != 0)
		port3Readings[3] = port3Readings[3] | 0x01;
	
	res = value & 0x10;
	port3Readings[4] = port3Readings[4] << 1;
	if(res != 0)
		port3Readings[4] = port3Readings[4] | 0x01;
		
	res = value & 0x20;
	port3Readings[5] = port3Readings[5] << 1;
	if(res != 0)
		port3Readings[5] = port3Readings[5] | 0x01;
	
	res = value & 0x40;
	port3Readings[6] = port3Readings[6] << 1;
	if(res != 0)
		port3Readings[6] = port3Readings[6] | 0x01;
	
	res = value & 0x80;
	port3Readings[7] = port3Readings[7] << 1;
	if(res != 0)
		port3Readings[7] = port3Readings[7] | 0x01;
}

void setPort_4(char value)
{
	volatile char res = value & 0x01;
	port4Readings[0] = port4Readings[0] << 1;
	if(res != 0)
		port4Readings[0] = port4Readings[0] | 0x01;
	
	res = value & 0x02;
	port4Readings[1] = port4Readings[1] << 1;
	if(res != 0)
		port4Readings[1] = port4Readings[1] | 0x01;
	
	res = value & 0x04;
	port4Readings[2] = port4Readings[2] << 1;
	if(res != 0)
		port4Readings[2] = port4Readings[2] | 0x01;
	
	res = value & 0x08;
	port4Readings[3] = port4Readings[3] << 1;
	if(res != 0)
		port4Readings[3] = port4Readings[3] | 0x01;
	
	res = value & 0x10;
	port4Readings[4] = port4Readings[4] << 1;
	if(res != 0)
		port4Readings[4] = port4Readings[4] | 0x01;
		
	res = value & 0x20;
	port4Readings[5] = port4Readings[5] << 1;
	if(res != 0)
		port4Readings[5] = port4Readings[5] | 0x01;
	
	res = value & 0x40;
	port4Readings[6] = port4Readings[6] << 1;
	if(res != 0)
		port4Readings[6] = port4Readings[6] | 0x01;
	
	res = value & 0x80;
	port4Readings[7] = port4Readings[7] << 1;
	if(res != 0)
		port4Readings[7] = port4Readings[7] | 0x01;
}

void changePort1States()
{
	port1Readings[0] = port1Readings[0] & 0x1F;
	if(port1Readings[0] == 0x1F)
		port1States[0] = 1;
	else if(port1Readings[0] == 0x00)
		port1States[0] = 0;
	else
		{
			port1States[0] = port1States[0] + 1;
			if(port1States[0] == 1)
				port1States[0] = 2;
			if(port1States[0] == 7)
				port1States[0] = 6;
		}
	
	port1Readings[1] = port1Readings[1] & 0x1F;
	if(port1Readings[1] == 0x1F)
		port1States[1] = 1;
	else if(port1Readings[1] == 0x00)
		port1States[1] = 0;
	else
		{
			port1States[1] = port1States[1] + 1;
			if(port1States[1] == 1)
				port1States[1] = 2;
			if(port1States[1] == 7)
				port1States[1] = 6;
		}
		
	port1Readings[2] = port1Readings[2] & 0x1F;
	if(port1Readings[2] == 0x1F)
		port1States[2] = 1;
	else if(port1Readings[2] == 0x00)
		port1States[2] = 0;
	else
		{
			port1States[2] = port1States[2] + 1;
			if(port1States[2] == 1)
				port1States[2] = 2;
			if(port1States[2] == 7)
				port1States[2] = 6;
		}
		
	port1Readings[3] = port1Readings[3] & 0x1F;
	if(port1Readings[3] == 0x1F)
		port1States[3] = 1;
	else if(port1Readings[3] == 0x00)
		port1States[3] = 0;
	else
		{
			port1States[3] = port1States[3] + 1;
			if(port1States[3] == 1)
				port1States[3] = 2;
			if(port1States[3] == 7)
				port1States[3] = 6;
		}
		
	port1Readings[4] = port1Readings[4] & 0x1F;
	if(port1Readings[4] == 0x1F)
		port1States[4] = 1;
	else if(port1Readings[4] == 0x00)
		port1States[4] = 0;
	else
		{
			port1States[4] = port1States[4] + 1;
			if(port1States[4] == 1)
				port1States[4] = 2;
			if(port1States[4] == 7)
				port1States[4] = 6;
		}
		
	port1Readings[5] = port1Readings[5] & 0x1F;
	if(port1Readings[5] == 0x1F)
		port1States[5] = 1;
	else if(port1Readings[5] == 0x00)
		port1States[5] = 0;
	else
		{
			port1States[5] = port1States[5] + 1;
			if(port1States[5] == 1)
				port1States[5] = 2;
			if(port1States[5] == 7)
				port1States[5] = 6;
		}
		
	port1Readings[6] = port1Readings[6] & 0x1F;
	if(port1Readings[6] == 0x1F)
		port1States[6] = 1;
	else if(port1Readings[6] == 0x00)
		port1States[6] = 0;
	else
		{
			port1States[6] = port1States[6] + 1;
			if(port1States[6] == 1)
				port1States[6] = 2;
			if(port1States[6] == 7)
				port1States[6] = 6;
		}
		
	port1Readings[7] = port1Readings[7] & 0x1F;
	if(port1Readings[7] == 0x1F)
		port1States[7] = 1;
	else if(port1Readings[7] == 0x00)
		port1States[7] = 0;
	else
		{
			port1States[7] = port1States[7] + 1;
			if(port1States[7] == 1)
				port1States[7] = 2;
			if(port1States[7] == 7)
				port1States[7] = 6;
		}
}

void changePort2States()
{
	port2Readings[0] = port2Readings[0] & 0x1F;
	if(port2Readings[0] == 0x1F)
		port2States[0] = 1;
	else if(port2Readings[0] == 0x00)
		port2States[0] = 0;
	else
		{
			port2States[0] = port2States[0] + 1;
			if(port2States[0] == 1)
				port2States[0] = 2;
			if(port2States[0] == 7)
				port2States[0] = 6;
		}
	
	port2Readings[1] = port2Readings[1] & 0x1F;
	if(port2Readings[1] == 0x1F)
		port2States[1] = 1;
	else if(port2Readings[1] == 0x00)
		port2States[1] = 0;
	else
		{
			port2States[1] = port2States[1] + 1;
			if(port2States[1] == 1)
				port2States[1] = 2;
			if(port2States[1] == 7)
				port2States[1] = 6;
		}
		
	port2Readings[2] = port2Readings[2] & 0x1F;
	if(port2Readings[2] == 0x1F)
		port2States[2] = 1;
	else if(port2Readings[2] == 0x00)
		port2States[2] = 0;
	else
		{
			port2States[2] = port2States[2] + 1;
			if(port2States[2] == 1)
				port2States[2] = 2;
			if(port2States[2] == 7)
				port2States[2] = 6;
		}
		
	port2Readings[3] = port2Readings[3] & 0x1F;
	if(port2Readings[3] == 0x1F)
		port2States[3] = 1;
	else if(port2Readings[3] == 0x00)
		port2States[3] = 0;
	else
		{
			port2States[3] = port2States[3] + 1;
			if(port2States[3] == 1)
				port2States[3] = 2;
			if(port2States[3] == 7)
				port2States[3] = 6;
		}
		
	port2Readings[4] = port2Readings[4] & 0x1F;
	if(port2Readings[4] == 0x1F)
		port2States[4] = 1;
	else if(port2Readings[4] == 0x00)
		port2States[4] = 0;
	else
		{
			port2States[4] = port2States[4] + 1;
			if(port2States[4] == 1)
				port2States[4] = 2;
			if(port2States[4]== 7)
				port2States[4] = 6;
		}
		
	port2Readings[5] = port2Readings[5] & 0x1F;
	if(port2Readings[5] == 0x1F)
		port2States[5] = 1;
	else if(port2Readings[5] == 0x00)
		port2States[5] = 0;
	else
		{
			port2States[5] = port2States[5] + 1;
			if(port2States[5] == 1)
				port2States[5] = 2;
			if(port2States[5] == 7)
				port2States[5] = 6;
		}
		
	port2Readings[6] = port2Readings[6] & 0x1F;
	if(port2Readings[6] == 0x1F)
		port2States[6] = 1;
	else if(port2Readings[6] == 0x00)
		port2States[6] = 0;
	else
		{
			port2States[6] = port2States[6] + 1;
			if(port2States[6] == 1)
				port2States[6] = 2;
			if(port2States[6] == 7)
				port2States[6] = 6;
		}
		
	port2Readings[7] = port2Readings[7] & 0x1F;
	if(port2Readings[7] == 0x1F)
		port2States[7] = 1;
	else if(port2Readings[7] == 0x00)
		port2States[7] = 0;
	else
		{
			port2States[7] = port2States[7] + 1;
			if(port2States[7] == 1)
				port2States[7] = 2;
			if(port2States[7] == 7)
				port2States[7] = 6;
		}
}

void changePort3States()
{
	port3Readings[0] = port3Readings[0] & 0x1F;
	if(port3Readings[0] == 0x1F)
		port3States[0] = 1;
	else if(port3Readings[0] == 0x00)
		port3States[0] = 0;
	else
		{
			port3States[0] = port3States[0] + 1;
			if(port3States[0] == 1)
				port3States[0] = 2;
			if(port3States[0] == 7)
				port3States[0] = 6;
		}
	
	port3Readings[1] = port3Readings[1] & 0x1F;
	if(port3Readings[1] == 0x1F)
		port3States[1] = 1;
	else if(port3Readings[1] == 0x00)
		port3States[1] = 0;
	else
		{
			port3States[1] = port3States[1] + 1;
			if(port3States[1] == 1)
				port3States[1] = 2;
			if(port3States[1] == 7)
				port3States[1] = 6;
		}
		
	port3Readings[2] = port3Readings[2] & 0x1F;
	if(port3Readings[2] == 0x1F)
		port3States[2] = 1;
	else if(port3Readings[2] == 0x00)
		port3States[2] = 0;
	else
		{
			port3States[2] = port3States[2] + 1;
			if(port3States[2] == 1)
				port3States[2] = 2;
			if(port3States[2] == 7)
				port3States[2] = 6;
		}
		
	port3Readings[3] = port3Readings[3] & 0x1F;
	if(port3Readings[3] == 0x1F)
		port3States[3] = 1;
	else if(port3Readings[3] == 0x00)
		port3States[3] = 0;
	else
		{
			port3States[3] = port3States[3] + 1;
			if(port3States[3] == 1)
				port3States[3] = 2;
			if(port3States[3] == 7)
				port3States[3] = 6;
		}
		
	port3Readings[4] = port3Readings[4] & 0x1F;
	if(port3Readings[4] == 0x1F)
		port3States[4] = 1;
	else if(port3Readings[4] == 0x00)
		port3States[4] = 0;
	else
		{
			port3States[4] = port3States[4] + 1;
			if(port3States[4] == 1)
				port3States[4] = 2;
			if(port3States[4] == 7)
				port3States[4] = 6;
		}
		
	port3Readings[5] = port3Readings[5] & 0x1F;
	if(port3Readings[5] == 0x1F)
		port3States[5] = 1;
	else if(port3Readings[5] == 0x00)
		port3States[5] = 0;
	else
		{
			port3States[5] = port3States[5] + 1;
			if(port3States[5] == 1)
				port3States[5] = 2;
			if(port3States[5] == 7)
				port3States[5] = 6;
		}
		
	port3Readings[6] = port3Readings[6] & 0x1F;
	if(port3Readings[6] == 0x1F)
		port3States[6] = 1;
	else if(port3Readings[6] == 0x00)
		port3States[6] = 0;
	else
		{
			port3States[6] = port3States[6] + 1;
			if(port3States[6] == 1)
				port3States[6] = 2;
			if(port3States[6] == 7)
				port3States[6] = 6;
		}
		
	port3Readings[7] = port3Readings[7] & 0x1F;
	if(port3Readings[7] == 0x1F)
		port3States[7] = 1;
	else if(port3Readings[7] == 0x00)
		port3States[7] = 0;
	else
		{
			port3States[7] = port3States[7] + 1;
			if(port3States[7] == 1)
				port3States[7] = 2;
			if(port3States[7] == 7)
				port3States[7] = 6;
		}
}

void changePort4States()
{
	port4Readings[0] = port4Readings[0] & 0x1F;
	if(port4Readings[0] == 0x1F)
		port4States[0] = 1;
	else if(port4Readings[0] == 0x00)
		port4States[0] = 0;
	else
		{
			port4States[0] = port4States[0] + 1;
			if(port4States[0] == 1)
				port4States[0] = 2;
			if(port4States[0] == 7)
				port4States[0] = 6;
		}
	
	port4Readings[1] = port4Readings[1] & 0x1F;
	if(port4Readings[1] == 0x1F)
		port4States[1] = 1;
	else if(port4Readings[1] == 0x00)
		port4States[1] = 0;
	else
		{
			port4States[1] = port4States[1] + 1;
			if(port4States[1] == 1)
				port4States[1] = 2;
			if(port4States[1] == 7)
				port4States[1] = 6;
		}
		
	port4Readings[2] = port4Readings[2] & 0x1F;
	if(port4Readings[2] == 0x1F)
		port4States[2] = 1;
	else if(port4Readings[2] == 0x00)
		port4States[2] = 0;
	else
		{
			port4States[2] = port4States[2] + 1;
			if(port4States[2] == 1)
				port4States[2] = 2;
			if(port4States[2] == 7)
				port4States[2] = 6;
		}
		
	port4Readings[3] = port4Readings[3] & 0x1F;
	if(port4Readings[3] == 0x1F)
		port4States[3] = 1;
	else if(port4Readings[3] == 0x00)
		port4States[3] = 0;
	else
		{
			port4States[3] = port4States[3] + 1;
			if(port4States[3] == 1)
				port4States[3] = 2;
			if(port4States[3] == 7)
				port4States[3] = 6;
		}
		
	port4Readings[4] = port4Readings[4] & 0x1F;
	if(port4Readings[4] == 0x1F)
		port4States[4] = 1;
	else if(port4Readings[4] == 0x00)
		port4States[4] = 0;
	else
		{
			port4States[4] = port4States[4] + 1;
			if(port4States[4] == 1)
				port4States[4] = 2;
			if(port4States[4] == 7)
				port4States[4] = 6;
		}
		
	port4Readings[5] = port4Readings[5] & 0x1F;
	if(port4Readings[5] == 0x1F)
		port4States[5] = 1;
	else if(port4Readings[5] == 0x00)
		port4States[5] = 0;
	else
		{
			port4States[5] = port4States[5] + 1;
			if(port4States[5] == 1)
				port4States[5] = 2;
			if(port4States[5] == 7)
				port4States[5] = 6;
		}
		
	port4Readings[6] = port4Readings[6] & 0x1F;
	if(port4Readings[6] == 0x1F)
		port4States[6] = 1;
	else if(port4Readings[6] == 0x00)
		port4States[6] = 0;
	else
		{
			port4States[6] = port4States[6] + 1;
			if(port4States[6] == 1)
				port4States[6] = 2;
			if(port4States[6] == 7)
				port4States[6] = 6;
		}
		
	port4Readings[7] = port4Readings[7] & 0x1F;
	if(port4Readings[7] == 0x1F)
		port4States[7] = 1;
	else if(port4Readings[7] == 0x00)
		port4States[7] = 0;
	else
		{
			port4States[7] = port4States[7] + 1;
			if(port4States[7] == 1)
				port4States[7] = 2;
			if(port4States[7] == 7)
				port4States[7] = 6;
		}
}

void changePort1()
{
	printf("1");
	if(port1States[0] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((15)<<2)))) = 1;
	else if(port1States[0] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((15)<<2)))) = 0;
	else if(port1States[0] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((15)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((15)<<2)))));
	
	if(port1States[1] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((14)<<2)))) = 1;
	else if(port1States[1] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((14)<<2)))) = 0;
	else if(port1States[1] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((14)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((14)<<2)))));
	
	if(port1States[2] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((13)<<2)))) = 1;
	else if(port1States[2] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((13)<<2)))) = 0;
	else if(port1States[2] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((13)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((13)<<2)))));
	
	if(port1States[3] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((12)<<2)))) = 1;
	else if(port1States[3] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((12)<<2)))) = 0;
	else if(port1States[3] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((12)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((12)<<2)))));
	
	if(port1States[4] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((11)<<2)))) = 1;
	else if(port1States[4] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((11)<<2)))) = 0;
	else if(port1States[4] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((11)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((11)<<2)))));
	
	if(port1States[5] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((10)<<2)))) = 1;
	else if(port1States[5] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((10)<<2)))) = 0;
	else if(port1States[5] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((10)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((10)<<2)))));
	
	if(port1States[6] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((9)<<2)))) = 1;
	else if(port1States[6] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((9)<<2)))) = 0;
	else if(port1States[6] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((9)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((9)<<2)))));
	
	if(port1States[7] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((8)<<2)))) = 1;
	else if(port1States[7] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((8)<<2)))) = 0;
	else if(port1States[7] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((8)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((8)<<2)))));
}

void changePort2()
{
	if(port2States[0] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((11)<<2)))) = 1;
	else if(port2States[0] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((11)<<2)))) = 0;
	else if(port2States[0] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((11)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((11)<<2)))));
	
	if(port2States[1] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((10)<<2)))) = 1;
	else if(port2States[1] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((10)<<2)))) = 0;
	else if(port2States[1] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((10)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((10)<<2)))));
	
	if(port2States[2] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(5))) + ((6)<<2)))) = 1;
	else if(port2States[2] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(5))) + ((6)<<2)))) = 0;
	else if(port2States[2] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(5))) + ((6)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(5))) + ((6)<<2)))));
	
	if(port2States[3] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(5))) + ((14)<<2)))) = 1;
	else if(port2States[3] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(5))) + ((14)<<2)))) = 0;
	else if(port2States[3] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(5))) + ((14)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(5))) + ((14)<<2)))));
	
	if(port2States[4] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(5))) + ((5)<<2)))) = 1;
	else if(port2States[4] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(5))) + ((5)<<2)))) = 0;
	else if(port2States[4] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(5))) + ((5)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(5))) + ((5)<<2)))));
	
	if(port2States[5] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(5))) + ((4)<<2)))) = 1;
	else if(port2States[5] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(5))) + ((4)<<2)))) = 0;
	else if(port2States[5] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(5))) + ((4)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(5))) + ((4)<<2)))));
	
	if(port2States[6] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(2))) + ((7)<<2)))) = 1;
	else if(port2States[6] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(2))) + ((7)<<2)))) = 0;
	else if(port2States[6] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(2))) + ((7)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(2))) + ((7)<<2)))));
	
	if(port2States[7] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(2))) + ((6)<<2)))) = 1;
	else if(port2States[7] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(2))) + ((6)<<2)))) = 0;
	else if(port2States[7] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(2))) + ((6)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(2))) + ((6)<<2)))));
}

void changePort3()
{
	if(port3States[0] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((7)<<2)))) = 1;
	else if(port3States[0] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((7)<<2)))) = 0;
	else if(port3States[0] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((7)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((7)<<2)))));
	
	if(port3States[1] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((6)<<2)))) = 1;
	else if(port3States[1] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((6)<<2)))) = 0;
	else if(port3States[1] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((6)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((6)<<2)))));
	
	if(port3States[2] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((5)<<2)))) = 1;
	else if(port3States[2] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((5)<<2)))) = 0;
	else if(port3States[2] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((5)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((5)<<2)))));
	
	if(port3States[3] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((4)<<2)))) = 1;
	else if(port3States[3] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((4)<<2)))) = 0;
	else if(port3States[3] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((4)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((4)<<2)))));
	
	if(port3States[4] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((3)<<2)))) = 1;
	else if(port3States[4] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((3)<<2)))) = 0;
	else if(port3States[4] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((3)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((3)<<2)))));
	
	if(port3States[5] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((2)<<2)))) = 1;
	else if(port3States[5] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((2)<<2)))) = 0;
	else if(port3States[5] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((2)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((2)<<2)))));
	
	if(port3States[6] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((1)<<2)))) = 1;
	else if(port3States[6] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((1)<<2)))) = 0;
	else if(port3States[6] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((1)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((1)<<2)))));
	
	if(port3States[7] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((0)<<2)))) = 1;
	else if(port3States[7] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((0)<<2)))) = 0;
	else if(port3States[7] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((0)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(1))) + ((0)<<2)))));
}

void changePort4()
{
	if(port4States[0] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((7)<<2)))) = 1;
	else if(port4States[0] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((7)<<2)))) = 0;
	else if(port4States[0] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((7)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((7)<<2)))));
	
	if(port4States[1] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((6)<<2)))) = 1;
	else if(port4States[1] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((6)<<2)))) = 0;
	else if(port4States[1] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((6)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((6)<<2)))));
	
	if(port4States[2] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((5)<<2)))) = 1;
	else if(port4States[2] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((5)<<2)))) = 0;
	else if(port4States[2] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((5)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((5)<<2)))));
	
	if(port4States[3] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((4)<<2)))) = 1;
	else if(port4States[3] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((4)<<2)))) = 0;
	else if(port4States[3] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((4)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((4)<<2)))));
	
	if(port4States[4] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((3)<<2)))) = 1;
	else if(port4States[4] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((3)<<2)))) = 0;
	else if(port4States[4] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((3)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((3)<<2)))));
	
	if(port4States[5] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((2)<<2)))) = 1;
	else if(port4States[5] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((2)<<2)))) = 0;
	else if(port4States[5] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((2)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((2)<<2)))));
	
	if(port4States[6] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((1)<<2)))) = 1;
	else if(port4States[6] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((1)<<2)))) = 0;
	else if(port4States[6] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((1)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((1)<<2)))));
	
	if(port4States[7] == 1)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((0)<<2)))) = 1;
	else if(port4States[7] == 0)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((0)<<2)))) = 0;
	else if(port4States[7] == 6)
		(*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((0)<<2)))) = ~((*((volatile uint32_t *)(((((( uint32_t)0x40000000) + 0x4000) + 0x0800)+(0x40*(0))) + ((0)<<2)))));
}

void UART_LOGIC(uint8_t u8InChar)
{
	if(dataReceiving == 1)
		{
			responce[arrayIndex] = u8InChar;					
			if(arrayIndex == 1)
				{					
					if(u8InChar != 0x03)
						{
							if(u8InChar == 0x83)
							{
								totalRegsToRead = totalRegsToRead - 1;
								toatalDataBytesToReceived = 2 * totalRegsToRead;
								responceSize = toatalDataBytesToReceived + 3;
								
							}
							dataReceiving = 0;
							arrayIndex = 0;
						}
				}
			if(arrayIndex == 2)
				{
					if(u8InChar != toatalDataBytesToReceived)
						{
							dataReceiving = 0;
							arrayIndex = 0;
						}
				}
			if(dataReceiving == 1)
				arrayIndex = arrayIndex + 1;
			if(arrayIndex == responceSize)
				{
					dataReceiving = 0;
					arrayIndex = 0;
					First_Reg_L = (3 * boardID) + (boardID - 1);
					First_Reg_H = First_Reg_L + 1;
					Second_Reg_L = First_Reg_H + 1;
					Second_Reg_H = Second_Reg_L + 1;					
					setPort_4(responce[First_Reg_H]);
					setPort_2(responce[First_Reg_L]);
					setPort_3(responce[Second_Reg_H]);
					setPort_1(responce[Second_Reg_L]);
					
					changePort1States();
					changePort2States();
					changePort3States();
					changePort4States();
				}
		}
	if(u8InChar == 0x01 && dataReceiving == 0)
		{
			responce[arrayIndex] = u8InChar;
			dataReceiving = 1;
			arrayIndex = arrayIndex + 1;
		}
}
	
void TIMER0_LOGIC()
{
	ticks = ticks + 1;
	if(ticks == 2)
	{
		changePort1();
		changePort2();
		changePort3();
		changePort4();
		ticks = 0;
	}					

	if(dataReceiving != 0)
	{
		seconds = seconds + 1;
		if(seconds > 4)
		{
			seconds = 0;
			dataReceiving = 0;
			arrayIndex = 0;
		}
	}	
}
