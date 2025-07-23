// Project name: Aixt project, https://github.com/fermarsan/aixt.git
// Author: Fernando M. Santa
// Date: 2025
// License: MIT
//
// Description: Timer0 functions for 12F family
module timer0

// read reads the current value of Timer0
@[as_macro]
pub fn read() u8 {
	return u8(C.TMR0)
}