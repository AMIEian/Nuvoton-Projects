#include "MyProject.h"
/*--------------------------------------------------------------------------------------------*/
/* GPIO                                                                                     */
/*--------------------------------------------------------------------------------------------*/
void GPIO_Init()
{
    volatile const uint32_t u32RegDefault = 0;

    //GPIO_PF disable digital input path
    PF->DINOFF =

        (1 << GPIO_DINOFF_DINOFF2_Pos) |

        u32RegDefault;

    //GPIO_PF out data
    PF->DOUT =

        (0 << GPIO_DOUT_DOUT2_Pos) |

        u32RegDefault;

    //GPIO_PF DOUT mask
    PF->DATMSK =

        (1 << GPIO_DATMSK_DATMSK2_Pos) |

        u32RegDefault;

    //GPIO_PF mode
    PF->MODE =

        (0x3UL << GPIO_MODE_MODE2_Pos) |

        u32RegDefault;

    //GPIO_PF enable de-bounce
    PF->DBEN =

        (0 << GPIO_DBEN_DBEN2_Pos) |

        u32RegDefault;

    //GPIO_PF edge or level interrupt
    PF->INTTYPE =

        (GPIO_INTTYPE_EDGE << GPIO_INTTYPE_TYPE2_Pos) |

        u32RegDefault;

    //GPIO_PF enable falling(edge) or low(level) interrupt
    PF->INTEN =

        (0 << GPIO_INTEN_FLIEN2_Pos) |

        u32RegDefault;

    //GPIO_PF enable rising(edge) or high(level) interrupt
    PF->INTEN |=

        (0 << GPIO_INTEN_RHIEN2_Pos) |

        u32RegDefault;

}

void Periph_Init(void)
{

    GPIO_Init();

}
