

#include <msp430.h>

int led(void)
{

     P1OUT |= BIT0;
     return 0;
}
