arr := [2, 4, 9, 7]
mut arr2 := [9, 7, 2, 4, 7, 12, 0, 10]

for mut b in arr2 {
	for a in arr {
		b = a
	}
}