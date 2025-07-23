import motor
import rand
import time


mut move_time := 1000
mut turn_time := 500
mut total_time := 0

for total_time < 20000 {

	move_time = rand.random(1000)
	turn_time = rand.random(1000)

	motor.write(motor.ac, 75)
	time.sleep_ms(move_time)

	motor.write(motor.c, -75)
	time.sleep_ms(turn_time)

	total_time += move_time
	total_time += turn_time
 }

motor.off(motor.ac)


