// Project name: Aixt, https://github.com/fermarsan/aixt.git
// Author: Fernando M. Santa
// Date: 2024
// License: MIT
//
// Description: Pin management functions Arduino devices
module pin

// pin names
// pub const pa0   = 0    
pub const a1   = u8(C.PA1) 
pub const a2   = u8(C.PA2) 
pub const a3   = u8(C.PA3) 
pub const a4   = u8(C.PA4) 
pub const a5   = u8(C.PA5) 
pub const a6   = u8(C.PA6) 
pub const a7   = u8(C.PA7) 
pub const a8   = u8(C.PA8) 
pub const a9   = u8(C.PA9) 
pub const a10  = u8(C.PA10)
pub const a11  = u8(C.PA11)
pub const a12  = u8(C.PA12)
pub const a13  = u8(C.PA13)
pub const a14  = u8(C.PA14)
pub const a15  = u8(C.PA15)

pub const b0   = u8(C.PB0)   
pub const b1   = u8(C.PB1) 
pub const b2   = u8(C.PB2) 
pub const b3   = u8(C.PB3) 
pub const b4   = u8(C.PB4) 
pub const b5   = u8(C.PB5) 
pub const b6   = u8(C.PB6) 
pub const b7   = u8(C.PB7) 
pub const b8   = u8(C.PB8) 
pub const b9   = u8(C.PB9) 
pub const b10  = u8(C.PB10)
pub const b11  = u8(C.PB11)
pub const b12  = u8(C.PB12)
pub const b13  = u8(C.PB13)
pub const b14  = u8(C.PB14)
pub const b15  = u8(C.PB15)
pub const b16  = u8(C.PB16)
pub const b17  = u8(C.PB17)
pub const b18  = u8(C.PB18)
pub const b19  = u8(C.PB19)
pub const b20  = u8(C.PB20)
pub const b21  = u8(C.PB21)
pub const b22  = u8(C.PB22)
pub const b23  = u8(C.PB23)
pub const b24  = u8(C.PB24)
pub const b25  = u8(C.PB25)
pub const b26  = u8(C.PB26)
pub const b27  = u8(C.PB27)

// pin modes
pub const input		= u8(C.INPUT)
pub const output	= u8(C.OUTPUT)
pub const in_pullup = u8(C.INPUT_PULLUP)
pub const in_pulldown = u8(C.INPUT_PULLDOWN)
