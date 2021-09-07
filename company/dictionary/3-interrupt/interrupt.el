

;; System Resets,Interrupt,and Operating Modes, System Control Module(SYS)

;; SFR Registers

;; SFRIE1
	"SFRIE1 &= ~(JMBOUTIE | JMBINIE | NMIIE | VMAIE | OFIE | WDTIE);
	/*  JMBOUTIE : JTAG mailbox output interrupt enable.		 */
	/*             0b = Interrupts disabled, 1b = Interrupts enabled */
	/*  JMBINIE  : JTAG mailbox input interrupt enable.	 	 */
	/*   	       0b = Interrupts disabled, 1b = Interrupts enabled */
	/*  NMIIE    : NMI pin interrupt enable.      		 	 */
	/*  	       0b = Interrupts disabled, 1b = Interrupts enabled */
	/*  VMAIE    : Vacant memory access interrupt enable.	 	 */
	/*  	       0b = Interrupts disabled, 1b = Interrupts enabled */
	/*  OFIE     : Oscillator fault interrupt enable.*/
	/*  	       0b = Interrupts disabled, 1b = Interrupts enabled */
	/*  WDTIE    : Watchdog timer interrupt enable.		 	 */
	/*  	       This bit enables the WDTIFG interrupt for	 */
	/*	       interval timer mode. It is not necessary to set	 */
	/* 	       this bit for watchdog mode.Because other bits in	 */
	/* 	       SFRIE1 may be used for other modules, it is   	 */
	/*	       recommended to set or clear this bit using BIS.B  */
	/* or BIC.B instructions, rather than MOV.B or CLR.B instruction.*/
	/*   	       0b = Interrupts disabled	      	    		 */
	/*	       1b = Interrupts enabled				 */"

	"SFRIE1 |= JMBOUTIE | JMBINIE | NMIIE | VMAIE | OFIE | WDTIE;
	/*  JMBOUTIE : JTAG mailbox output interrupt enable.		 */
	/*             0b = Interrupts disabled, 1b = Interrupts enabled */
	/*  JMBINIE  : JTAG mailbox input interrupt enable.	 	 */
	/*   	       0b = Interrupts disabled, 1b = Interrupts enabled */
	/*  NMIIE    : NMI pin interrupt enable.      		 	 */
	/*  	       0b = Interrupts disabled, 1b = Interrupts enabled */
	/*  VMAIE    : Vacant memory access interrupt enable.	 	 */
	/*  	       0b = Interrupts disabled, 1b = Interrupts enabled */
	/*  OFIE     : Oscillator fault interrupt enable.*/
	/*  	       0b = Interrupts disabled, 1b = Interrupts enabled */
	/*  WDTIE    : Watchdog timer interrupt enable.		 	 */
	/*  	       This bit enables the WDTIFG interrupt for	 */
	/*	       interval timer mode. It is not necessary to set	 */
	/* 	       this bit for watchdog mode.Because other bits in	 */
	/* 	       SFRIE1 may be used for other modules, it is   	 */
	/*	       recommended to set or clear this bit using BIS.B  */
	/* or BIC.B instructions, rather than MOV.B or CLR.B instruction.*/
	/*   	       0b = Interrupts disabled	      	    		 */
	/*	       1b = Interrupts enabled				 */"

;; SFRIFG1
	"SFRIFG1 &= ~(JMBOUTIFG | JMBINIFG | NMIIFG | VMAIFG | OFIFG | WDTIFG);
	/*  JMBOUTIFG: JTAG mailbox output interrupt flag.		 */
	/*  	       0b = No interrupt pending     			 */
	/*	       1b = Interrupt pending				 */
	/*  JMBINIFG : JTAG mailbox input interrupt flag.		 */
	/*  	       0b = No Interrupt pending.   			 */
	/*	       1b = Interrupt pending 				 */
	/*  NMIIFG   : NMI pin interrupt flag.				 */
	/*  	       0b = No interrupt pending. 			 */
	/* 	       1b = Interrupt pending 				 */
	/*  VMAIFG   : Vacant menmory access interrupt flag 		 */
	/*  	       0b = No interrupt pending       			 */
	/*	       1b = Interrupt pending				 */
	/*  OFIFG    : Oscillator fault interrupt flag.			 */
	/*  	       0b = No interrupt pending			 */
	/*	       1b = Interrupt pending 				 */
	/*  WDTIFG   : Watchdog timer interrupt flag.			 */
	/*  	       0b = No interrupt pending,			 */
	/*	       1b = Interrupt pending 				 */"

	"SFRIFG1 |= JMBOUTIFG | JMBINIFG | NMIIFG | VMAIFG | OFIFG | WDTIFG;
	/*  JMBOUTIFG: JTAG mailbox output interrupt flag.		 */
	/*  	       0b = No interrupt pending     			 */
	/*	       1b = Interrupt pending				 */
	/*  JMBINIFG : JTAG mailbox input interrupt flag.		 */
	/*  	       0b = No Interrupt pending.   			 */
	/*	       1b = Interrupt pending 				 */
	/*  NMIIFG   : NMI pin interrupt flag.				 */
	/*  	       0b = No interrupt pending. 			 */
	/* 	       1b = Interrupt pending 				 */
	/*  VMAIFG   : Vacant menmory access interrupt flag 		 */
	/*  	       0b = No interrupt pending       			 */
	/*	       1b = Interrupt pending				 */
	/*  OFIFG    : Oscillator fault interrupt flag.			 */
	/*  	       0b = No interrupt pending			 */
	/*	       1b = Interrupt pending 				 */
	/*  WDTIFG   : Watchdog timer interrupt flag.			 */
	/*  	       0b = No interrupt pending,			 */
	/*	       1b = Interrupt pending 				 */"

;; SFRRPCR
	"SFRRPCR &= ~(SYSRSTRE | SYSRSTUP | SYSNMIIES | SYSNMI);
	/*  SYSRSTRE : Reset pin resistor enable.			 */
	/*  	       0b = Pullup or pulldown resistor at the RST/NMI 	 */
	/*	       	    pin is disabled.   		       		 */
	/*	       1b = Pullup or pulldown resistor at the RST/NMI 	 */
	/*	       	    pin is enabled.    		       		 */
	/*  SYSRSTUP : Reset resistor pin pullup or pulldown.		 */
	/*  	       0b = Pulldown is selected.   			 */
	/*	       1b = Pullup is selected.				 */
	/*  SYSNMIIES: NMI edge select.					 */
	/*  	       0b = NMI on rising edge 				 */
	/*	       1b = NMI on falling edge				 */
	/*  SYSNMI   : NMI select.This bit selects the function for the  */
	/*  	       RST/NMI pin.    	   	       		    	 */
	/*	       0b = Reset function				 */
	/*	       1b = NMI function				 */"

	"SFRRPCR |= SYSRSTRE | SYSRSTUP | SYSNMIIES | SYSNMI;
	/*  SYSRSTRE : Reset pin resistor enable.			 */
	/*  	       0b = Pullup or pulldown resistor at the RST/NMI 	 */
	/*	       	    pin is disabled.   		       		 */
	/*	       1b = Pullup or pulldown resistor at the RST/NMI 	 */
	/*	       	    pin is enabled.    		       		 */
	/*  SYSRSTUP : Reset resistor pin pullup or pulldown.		 */
	/*  	       0b = Pulldown is selected.   			 */
	/*	       1b = Pullup is selected.				 */
	/*  SYSNMIIES: NMI edge select.					 */
	/*  	       0b = NMI on rising edge 				 */
	/*	       1b = NMI on falling edge				 */
	/*  SYSNMI   : NMI select.This bit selects the function for the  */
	/*  	       RST/NMI pin.    	   	       		    	 */
	/*	       0b = Reset function				 */
	/*	       1b = NMI function				 */"

;; y-interrupt

