# rand.awk -- test random number generation
BEGIN {
	print rand()
	print rand()
	srand()
	print rand()
	print rand()
}

