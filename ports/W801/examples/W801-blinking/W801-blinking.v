// Project name: Blinking
// Author: Fernando M. Santa
// Date: 03/03/2025
// W801 board

import time
import pin

//builtin LED
pin.setup(led0, pin.output)

for {
	pin.high(led0)
	time.sleep_ms(500)
	pin.low(led0)
	time.sleep_ms(500)
}
