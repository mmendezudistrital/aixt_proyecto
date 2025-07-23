// move forward until the light sensor overpass a limit
import motor
import sensor
import time


const limit = 40

sensor.as_light(sensor.s1, true)
motor.write(motor.ab, 60)

for {
	if sensor.read(sensor.s1) > limit {
		motor.off(motor.ab)
	}
}
