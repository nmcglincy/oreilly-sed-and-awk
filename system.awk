BEGIN {
	if (system("mkdir dale") != 0)
		print "Command failed!"
}
