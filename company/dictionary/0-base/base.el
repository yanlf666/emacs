


	"include" "msp430.h" "msp430fr6989.h" "main(void)" "while(1)"
	"while(SFRIFG1 & OFIFG)" "p/**/"

	"defined" "elif defined" "ifndef" "define" "endif" "ifndef #define #endif"

	"error" "pragma"
		
	"\_\_bis_SR_register(LPM0_bits + GIE);
	/* Enter LPM0 interrupt. */"

	"\_\_no_operation();
	 /* For debugger */"

	"\_\_attribute\_\_ ((interrupt(TIMER0\_A0\_VECTOR))) Timer0\_A0\_ISR (void)
	 /* Timer0_A0 interrupt service routine */"
	
        "WDTCTL = WDTPW | WDTHOLD;
	/* Stop WDT */"

	"PM5CTL0 &= ~LOCKLPM5;
	/* Disable the GPIO power-on default high-impedance mode   */ 
	/* to activate previously configured port settings  	   */"

		
;; y-base
