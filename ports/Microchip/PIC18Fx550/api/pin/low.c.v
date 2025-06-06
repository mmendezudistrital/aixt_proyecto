// Project name: Aixt, https://github.com/fermarsan/aixt.git
// Author: Andrés Felipe Fajardo Duarte and Fernando M. Santa
// Date: 2024
// License: MIT
//
// Description: PIN management functions  (PIC18F2550 port)

module pin

@[inline]
pub fn low(PIN_NAME) {
	C.PIN_NAME = 0          // LATBbits.LB0 = 0
}