// Project name: Aixt, https://github.com/fermarsan/aixt.git
// Author: Fernando M. Santa
// Date: 2023-2024
// License: MIT
module pin

// high function puts a high value (logic 1) to a specific pin
@[as_macro]
pub fn high(name int) {   
    pin__pins[name] = 1
    pin.update()
}