BEGIN {
	for (i = 97; i <=122; ++i) {
		nextletter = sprintf("%c", i)
		print nextletter
	}
}