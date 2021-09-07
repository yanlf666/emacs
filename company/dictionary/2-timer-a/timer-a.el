

;; Timer_A

   "timerA
   /*  时钟周期： 1/晶振频率fosc */
   /*  机器周期： 晶振频率fosc/分频divide */
   /*  定时20ms,0.02秒，要经过x个机器周期后得到0.02秒， */
   /*  x(多少个机器周期) * (晶振频率fosc/分频divide) = 0.02s */
   /*  1MHz = 1000000Hz 变秒11.0592MHz 变成时间11.059200 * 1000000 */
   /*  tmp = (fosc * 1000000) / divide; MHz*1000000, KHz * 1000 */
   /*  tmp = (tmp * ms) / 1000; */
   /*  TA0CCR0 = tmp; */"

  
;; TAxCTL
	"TA0CTL = TASSEL__ | MC__ | ID__;
	/* TASSEL : clock source select. TAxCLK, ACLK, SMCLK, INCLK. */
	/* ID	  : input divider. 1, 2, 4, 8.*/
	/* MC	  : Mode control. UP, CONTINUOUS, UP/DOWN */"
	"TA0CTL = TACLR | TAIE | TAIFG;
	/* TACLR  : Timer_A clear */
	/* TAIE	  : 1b = interrupt enable */
	/*        :  b = Interrupt disabled */
	/* TAIFG  : 1b = interrupt pending */
	/*        : 0b = No interrupt flag */"

;; TAxR
	"TAxR"

;; TAxCCTLn
	"TA0CCTL0 = CM__ | CCIS__ | OUTMOD__;
	/*  CM	    : Capture mode */
	/*          : 00b = No capture */
	/*          : 01b = Capture on rising edge */
	/*          : 10b = Capture on falling edge */
	/*          : 11b = Capture on both rising and falling edges */
	/*  CCIS    : Capture/compare input select. */
	/*          : 00b = CCIxA */
	/*          : 01b = CCIxB */
	/*          : 10b = GND */
	/*          : 11b = VCC */
	/*  OUTMOD  : Output mode */
	/*          : 000b = OUT bit value */
	/*	    : 001b = Set */
	/*	    : 010b = Toggle/reset */
	/*  	    : 011b = Set/reset */
	/*	    : 100b = Toggle */
	/*	    : 101b = Reset */
	/*	    : 110b = Toggle/set */
	/*	    : 111b = Reset/set */"

	"TA0CCTL0 = CCIE | CCIFG | CAP | SCS  | CCI | OUT | COV;	
	/*  SCS	    : Synchronize capture source */
	/*          : 0b = Asynchronous capture */
	/*          : 1b = Synchronous capture */
	/*  SCCI    : Synchronized capture/compare input. */
	/*  CAP     : Capture mode. */
	/*  	    : 0b = Compare mode */
	/* 	    : 1b = Capture mode */
	/*  CCIE    : Capture/compare interrupt enable */
	/*   	    : 0b = Interrupt disabled */
	/* 	    : 1b = Interrupt enabled */
	/*  CCI	    : Capture/compare input. */
	/*  OUT     : Output. */
	/*  	    : 0b = Output low */
	/* 	    : 1b = Output high */
	/*  COV	    : Capture overflow. */
	/*  	    : 0b = No capture overflow occurred */
	/* 	    : 1b = Capture overflow occurred */
	/*  CCIFG   : Capture/compare interrupt flag */
	/*  	    : 0b = No interrupt pending flag */
	/* 	    : 1b = Interrupt pending */"

;; TAxCCRn
	"TA0CCR0 = ;
	/*  Compare mode: TAxCCRn holds the data for the */
	/*  	          comparison to the timer value */
	/*		  in the Timer_A Register, TAR. */
	/*  Capture mode: The Timer_A Register, TAR, is */
	/*  	    	  copied into the TAxCCRn register */
	/*		  when a capture is performed.*/"

;; TAxIV
	"TAxIV = TAIV__;
	/* Timer_A interrupt vector value  */
	/* 00h = No interrupt pending  */
	/* 02h = Interrupt Source: Capture/compare 1; */
	/*     	 Interrupt Flag: TAxCCR1 CCIFG; */
	/*	 Interrupt Priority: Highest  */
	/* 04h = Interrupt Source: Capture/compare 2; */
	/*     	 Interrupt Flag: TAxCCR2 CCIFG  */
	/* 06h = Interrupt Source: Capture/compare 3;*/
	/*     	 Interrupt Flag: TAxCCR3 CCIFG  */
	/* 08h = Interrupt Source: Capture/compare 4;*/
	/*     	 Interrupt Flag: TAxCCR4 CCIFG  */
	/* 0Ah = Interrupt Source: Capture/compare 5;*/
	/*     	 Interrupt Flag: TAxCCR5 CCIFG  */
	/* 0Ch = Interrupt Source: Capture/compare 6;*/
	/*     	 Interrupt Flag: TAxCCR6 CCIFG  */
	/* 0Eh = Interrupt Source: Timer overflow;*/
	/*     	 Interrupt Flag: TAxCTL TAIFG;*/
	/* 	 Interrupt Priority: Lowest  */"

	
;; TAxEX0
	"TAxEX0 = ;
	/* Input divider expansion. These bits along */
	/* with the ID bits select the divider for */
	/* the input clock.  */
	/* 000b = Divide by 1  */
	/* 001b = Divide by 2  */
	/* 010b = Divide by 3  */
	/* 011b = Divide by 4  */
	/* 100b = Divide by 5  */
	/* 101b = Divide by 6  */
	/* 110b = Divide by 7  */
	/* 111b = Divide by 8  */"
	

;; y-timera



