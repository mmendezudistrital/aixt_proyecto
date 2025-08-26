// Project name: Aixt, https://github.com/fermarsan/aixt.git
// Author: Fernando M. Santa
// Date: 2025
// License: MIT
//
// Description: Pin management STM32G431Core
module timer17

@[as_macro]
pub fn setmode(channel int, mode int, pin int) {
	C.TIMER17_SETMODE(channel, mode, pin)
}