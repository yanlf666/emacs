

	

;;Clock System (CS) Module

;;CSCTL0

	"CSCTL0_H = CSKEY >> 8;
	/*  Unlock CS registers */
	/*  CSCTL0_H = 0xA5; */
	
	CSCTL0_H = 0;
	/* Lock CS registers */"

;;CSCTL1

	
	"CSCTL1 = DCORSEL | DCOFSEL_;
	/* 单下划线是地址位，双下划线是地址里面的内容 */
	/* DCO range select : high speed devices */
	/* 0h : DCOFSEL = 1:1 MHz */
	/* 1h : DCOFSEL = 1:5.33MHz */
	/* 2h : DCOFSEL = 1:7MHz */
	/* 3h : DCOFSEL = 1:8MHz */
	/* 4h : DCOFSEL = 1:16MHz */
	/* 5h : DCOFSEL = 1:21MHz */
	/* 6h : DCOFSEL = 1:24MHz */"
	
	"CSCTL1 = DCOFSEL_;
	 CSCTL1 &= ~DCORSEL;
	/* 单下划线是地址位，双下划线是地址里面的内容 */	
	/* DCO range select : low speed devices */
	/* DCORSEL &= ~DCORSEL default */
	/* 0h : DCOFSEL = 0:1MHz */
	/* 1h : DCOFSEL = 0:2.67MHz */
	/* 2h : DCOFSEL = 0:3.5MHz */
	/* 3h : DCOFSEL = 0:4MHz */
	/* 4h : DCOFSEL = 0:5.33MHz */
	/* 5h : DCOFSEL = 0:7MHz */
	/* 6h : DCOFSEL = 0:8MHz */"
	



;;CSCTL2
	"CSCTL2 = SELA__ | SELS__ | SELM__;
	/* 单下划线是：地址位，双下划线是：地址里面的内容 */
	/* CSCTL2 = SELA_0 | SELS_2 | SELM_5;  */
	/* SELA : 0h =  LFXTCLK, 1h = VLOCLK, 2h = LFMODCLK */
	/* SELS : 0h = LFXTCLK, 1h = VLOCLK, 2h = LFMODCLK,*/
	/*        3h = DCOCLK, 4h = MODCLK, 5h = HFXTCLK */
	/* SELM : 0h = LFXTCLK, 1h = VLOCLK, 2h =LFMODCLK,*/
	/*        3h = DCOCLK, 4h = MODCLK, 5h = HFXTCLK */"

;;CSCTL3
	"CSCTL3 = DIVA__ | DIVS__ | DIVM__;
	/* 单下划线是地址位，双下划线是地址里面的内容 */
	/* CSCTL3 = DIVA_0 | DIVS_0 | DIVM_0;*/
	/*          0h = 1 : /1, 1h = 2 : /2, 2h = 4 : /4,*/
	/*          3h = 8 : /8, 4h = 16 : /16, 5h = 32 : /32.*/
	/* Divider 1 2 4 8 16 32 */"


;;CSCTL4
	"CSCTL4 = LFXTOFF |LFXTBYPASS | VLOOFF | SMCLKOFF | HFXTBYPASS | HFXTOFF;
	/* 单下划线是：地址位，双下划线是：地址里面的内容 */
	/*  LFXTOFF    : LFXT off. This bit turns off the LFXT */
	/*               0h = LFXT is on if LFXT is selected via the port */
	/*                    selection and LFXT is not in bypass mode of  */
	/*                    operation */
	/*               1h = LFXT is off if it is not used as a source  */
	/*                    for ACLK, MCLK, or SMCLK */
	/*  LFXTBYPASS : LFXT bypass select */
	/*               0h = LFXT sourced form external crystal */
	/*               1h = LFXT sourced from external clock signal */
	/*  VLOOFF     : VLO off. This bit turns off the VLO. */
	/*               0h = VLO is on  */
	/*               1h = VLO is off if it is not used as a source  */
	/*                    for ACLK, MCLK, or SMCLK or if not used */
	/*                    as a source for the RTC IN LPM3.5 */
	/*  SMCLKOFF   : SMCLK off. This bit turns off the SMCLK. */
	/*               0h = SMCLK on */
	/*               1h = SMCLK off */"

	"CSCTL4 &= ~(LFXTOFF | LFXTBYPASS | VLOOFF | SMCLKOFF | HFXTBYPASS | HFXTOFF);
	/* 单下划线是：地址位，双下划线是：地址里面的内容 */
	/*  LFXTOFF    : LFXT off. This bit turns off the LFXT */
	/*               0h = LFXT is on if LFXT is selected via the port */
	/*                    selection and LFXT is not in bypass mode of  */
	/*                    operation */
	/*               1h = LFXT is off if it is not used as a source  */
	/*                    for ACLK, MCLK, or SMCLK */
	/*  LFXTBYPASS : LFXT bypass select */
	/*               0h = LFXT sourced form external crystal */
	/*               1h = LFXT sourced from external clock signal */
	/*  VLOOFF     : VLO off. This bit turns off the VLO. */
	/*               0h = VLO is on  */
	/*               1h = VLO is off if it is not used as a source  */
	/*                    for ACLK, MCLK, or SMCLK or if not used */
	/*                    as a source for the RTC IN LPM3.5 */
	/*  SMCLKOFF   : SMCLK off. This bit turns off the SMCLK. */
	/*               0h = SMCLK on */
	/*               1h = SMCLK off */"

	"CSCTL4 |= HFXTDRIVE_ | HFFREQ_ | LFXTDRIVE_;
	/* 单下划线是：地址位，双下划线是：地址里面的内容 */
	/*  HFXTDRIVE  : The HFXT oscillator current can be adjusted */ 
	/*               to its drive needs. */
	/*               This in combination with the HFFREQ bits can */ 
	/*               be used for optimizing crystal power based */
	/*               on crystal characteristics. */
	/*           0h (R/W) = Lowest current consumption */
	/*           1h (R/W) = Increased drive strength HFXT oscillator */
	/*           2h (R/W) = Increased drive strength HFXT oscillator */
	/*           3h (R/W) = Maximum drive strength HFXT oscillator */
	/*  HFFREQ     : The HFXT frequency selection. These bits must */
	/*               be set to the appropriate frequency for */
	/*               crystal or bypass modes of operation.*/
	/*              0h (R/W) = 0 to 4 MHz */
	/*              1h (R/W) = Greater than 4 MHz to 8 MHz */
	/*              2h (R/W) = Greater than 8 MHz to 16 MHz */
	/*              3h (R/W) = Greater than 16 MHz to 24 MHz */
	/*  LFXTDRIVE  : The LFXT oscillator current can be adjusted */
	/*               to its drive needs.*/
	/*           0h (R/W) = Lowest drive strength and current */
	/*                      consumption LFXT oscillator */
	/*           1h (R/W) = Increased drive strength LFXT oscillator*/
	/*           2h (R/W) = Increased drive strength LFXT oscillator */
	/*           3h (R/W) = Maximum drive strength and maximum current*/
	/*                      consumption LFXT oscillator*/"
	

;;CSCTL5
	"CSCTL5 &= ~(LFXTOFFG | HFXTOFFG | ENSTFCNT2 | ENSTFCNT1 | SWDONE);
	/* 单下划线是：地址位，双下划线是：地址里面的内容 */
	/*  LFXTOFFG  : LFXT oscillator fault flag. If this bit is set,*/
	/*              the OFIFG flag is also set.*/
	/*              LFXTOFFG is set if a LFXT fault condition exists.*/
	/*              LFXTOFFG can be cleared via software. If the */
	/*              LFXT fault condition still remains,LFXTOFFG is set.*/
	/*              0h (R/W) = No fault condition occurred after */
	/*                         the last reset */
	/*              1h (R/W) = LFXT fault; an LFXT fault occurred */
	/*                         after the last reset*/
	/*  ENSTFCNT2 : Enable start counter for HFXT when available.*/
	/*              0h (R/W) = DISABLE : Startup fault counter */
	/*                         disabled. Counter is cleared. */
	/*              1h (R/W) = ENABLE : Startup fault counter enabled*/
	/*  ENSTFCNT1 : Enable start counter for LFXT. */
	/*              0h (R/W) = DISABLE : Startup fault counter */
	/*                         disabled. Counter is cleared.*/
	/*              1h (R/W) = ENABLE : Startup fault counter enabled*/
	/*  SWDONE    : Clock switch done. This bit indicates a clock */
	/*              switch is done. A clock switch happens when */
	/*              changing the clock system configuration,*/
	/*              including any write access of */
	/*              CSCTL1/CSCTL2/CSCTL3 registers,or any*/
	/*              fail-safe condition happens. When clock switch*/
	/*              happens, this bit is reset automatically, */
	/*              and is set again after the switching is done.*/
	/*              Only available in CS_A module.*/
	/*              0h (R) = Clock switch is in progress */
	/*              1h (R) = Clock switch is done*/"


	"CSCTL5 |= LFXTOFFG | HFXTOFFG | ENSTFCNT2 | ENSTFCNT1 | SWDONE;
	/* 单下划线是：地址位，双下划线是：地址里面的内容 */
	/*  LFXTOFFG : LFXT oscillator fault flag. If this bit is set,*/
	/*             the OFIFG flag is also set.*/
	/*             LFXTOFFG is set if a LFXT fault condition exists.*/
	/*             LFXTOFFG can be cleared via software. If the */
	/*             LFXT fault condition still remains,LFXTOFFG is set.*/
	/*             0h (R/W) = No fault condition occurred after */
	/*                        the last reset */
	/*             1h (R/W) = LFXT fault; an LFXT fault occurred */
	/*                        after the last reset*/
	/*  ENSTFCNT2 : Enable start counter for HFXT when available.*/
	/*              0h (R/W) = DISABLE : Startup fault counter */
	/*                         disabled. Counter is cleared. */
	/*              1h (R/W) = ENABLE : Startup fault counter enabled*/
	/*  ENSTFCNT1 : Enable start counter for LFXT. */
	/*              0h (R/W) = DISABLE : Startup fault counter */
	/*                         disabled. Counter is cleared.*/
	/*              1h (R/W) = ENABLE : Startup fault counter enabled*/
	/*  SWDONE    : Clock switch done. This bit indicates a clock */
	/*              switch is done. A clock switch happens when */
	/*              changing the clock system configuration,*/
	/*              including any write access of */
	/*              CSCTL1/CSCTL2/CSCTL3 registers,or any*/
	/*              fail-safe condition happens. When clock switch*/
	/*              happens, this bit is reset automatically, */
	/*              and is set again after the switching is done.*/
	/*              Only available in CS_A module.*/
	/*              0h (R) = Clock switch is in progress */
	/*              1h (R) = Clock switch is done*/"

;;CSCTL6
	"CSCTL6 |= MODCLKREQEN | SMCLKREQEN | MCLKREQEN | ACLKREQEN;
	/* 单下划线是：地址位，双下划线是：地址里面的内容 */
	/*  MODCLKREQEN : MODCLK clock request enable. Setting this enables */
	/*                conditional module requests for MODCLK. */
	/*                0h (R/W) = DISABLE : MODCLK conditional */
	/*                           requests are disabled*/
	/*                1h (R/W) = ENABLE : MODCLK conditional*/
	/*                           requests are enabled*/
	/*  SMCLKREQEN  : SMCLK clock request enable. Setting this enables */
	/*                conditional module requests for SMCLK.*/
	/*    0h (R/W) = DISABLE : SMCLK conditional requests are disabled*/
	/*    1h (R/W) = ENABLE : SMCLK conditional requests are enabled */
	/*  MCLKREQEN   : MCLK clock request enable. Setting this enables */
	/*                conditional module requests for MCLK.*/
	/*    0h (R/W) = DISABLE : MCLK conditional requests are disabled*/
	/*    1h (R/W) = ENABLE : MCLK conditional requests are enabled*/
	/*  ACLKREQEN   : ACLK clock request enable. Setting this enables */
	/*                conditional module requests for ACLK.*/
	/*    0h (R/W) = DISABLE : ACLK conditional requests are disabled*/
	/*    1h (R/W) = ENABLE : ACLK conditional requests are enabled*/"
	
        "CSCTL6 &= ~(MODCLKREQEN | SMCLKREQEN | MCLKREQEN | ACLKREQE);
	/* 单下划线是：地址位，双下划线是：地址里面的内容 */
	/*  MODCLKREQEN : MODCLK clock request enable. Setting this enables */
	/*                conditional module requests for MODCLK.           */
	/*                0h (R/W) = DISABLE : MODCLK conditional           */
	/*                           requests are disabled                  */
	/*                1h (R/W) = ENABLE : MODCLK conditional            */
	/*                           requests are enabled                   */
	/*  SMCLKREQEN  : SMCLK clock request enable. Setting this enables  */
	/*                conditional module requests for SMCLK.            */
	/*    0h (R/W) = DISABLE : SMCLK conditional requests are disabled  */
	/*    1h (R/W) = ENABLE : SMCLK conditional requests are enabled    */
	/*  MCLKREQEN   : MCLK clock request enable. Setting this enables   */
	/*                conditional module requests for MCLK.             */
	/*    0h (R/W) = DISABLE : MCLK conditional requests are disabled   */
	/*    1h (R/W) = ENABLE : MCLK conditional requests are enabled     */
	/*  ACLKREQEN   : ACLK clock request enable. Setting this enables   */
	/*                conditional module requests for ACLK.             */
	/*    0h (R/W) = DISABLE : ACLK conditional requests are disabled   */
	/*    1h (R/W) = ENABLE : ACLK conditional requests are enabled     */"

;;y-csctl
	
