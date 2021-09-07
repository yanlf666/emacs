
   
   "PxIN Input Registers
    /* Bit = 0 : Input is low */
    /* Bit = 1 : Input is high */"
    
    "PxOUT Output Registers
    /* Bit = 0 : Output is low */
    /* Bit = 1 : Output is high */
    /* Bit = 0 : Pin is pulled down */
    /* Bit = 1 : Pin is pulled up */"

    "PxDIR Direction Registers
    /* Bit = 0 : Port pin is switched to input direction */
    /* Bit = 1 : Port pin is switched to output direction */"

    "PxREN Pullup or Pulldown Resistor Enable Registers
    /*  Bit = 0 : Pullup or pulldown resistor disabled */
    /*  Bit = 1 : Pullup or pulldown resistor enabled */
    /*  ****** */
    /* | PxDIR | PxREN | PxOUT | I/O Configuration            | */
    /* |     0 |     0 | x     | Input                        | */
    /* |     0 |     1 | 0     | Input with pulldown resistor | */
    /* |     0 |     1 | 1     | Input with pullup resistor   | */
    /* |     1 |     x | x     | Output                       | */"

    "PxSEL0, PxSEL1 Function Select Registers
    /* | PxSEL1 | PxSEL0 | I/O Function                          | */
    /* |      0 |      0 | General purpose I/O is selected       | */
    /* |      0 |      1 | Primary module function is selected   | */
    /* |      1 |      0 | Secondary module function is selected | */
    /* |      1 |      1 | Tertiary module function is selected  | */"
    
    
    
    
    
	
	
;;y-digital
