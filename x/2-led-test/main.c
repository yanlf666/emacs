

#include <msp430.h>
#include "led/led.h"

void main(void)
{

     WDTCTL = WDTPW | WDTHOLD;
	/* Stop WDT */
     PM5CTL0 &= ~LOCKLPM5;
	/* Disable the GPIO power-on default high-impedance mode 
	    to activate previously configured port settings */

     P1DIR |= BIT0;
     P1OUT &= ~BIT0;
     while(1)
     {
	  
	  led();
	  
     }
}
