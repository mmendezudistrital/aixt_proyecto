// Project name: Aixt, https://github.com/fermarsan/aixt.git
// Author: Fernando M. Santa
// Date: 2025
// License: MIT
//
// Description: Pin management STM32F411Core
module timer1

#include "timer1.c"

@[as_macro] pub const tick  = C.TICK_FORMAT
@[as_macro] pub const ms    = C.MICROSEC_FORMAT   
@[as_macro] pub const hz    = C.HERTZ_FORMAT
@[as_macro] pub const pwm1  = C.TIMER_OUTPUT_COMPARE_PWM1


@[as_macro] pub const compare_ch1  = 1
@[as_macro] pub const compare_ch2  = 2
@[as_macro] pub const compare_ch3  = 3

fn C.TIMER1_SETOVERFLOW(value f32, format int)
fn C.TIMER1_ATTACHINTERRUPT(handler fn())
fn C.TIMER1_COMPARE_ATTACHINTERRUPT(channel int, handler fn()) 
fn C.TIMER1_RESUME() 
fn C.ptr_timer1_isr()
fn C.TIMER1_WRITE_PERCENT_CHANNEL(channel int, val int)
fn C.TIMER1_WRITE_PERCENT(val int)
fn C.TIMER1_SETMODE(channel int, mode int, pin int)

fn C.TIMER1_COMPARE_CHANNEL_ISR(channel int, handler fn()) fn()
