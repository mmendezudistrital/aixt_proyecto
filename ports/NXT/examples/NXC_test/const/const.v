import motor
import time

const t_on = 1000
const t_off = 500

// const t_on = 1000
// const t_off = 500
// const a = 34.67

motor.write(motor.ab, 70)
time.sleep_ms(t_on)

motor.off(motor.ab)
time.sleep_ms(t_off)

motor.write(motor.ab, 70)
time.sleep_ms(t_on)

motor.off(motor.ab)
