BEGIN {
	printf "Enter your name: "
	getline < "-"
	print "hello, " $0 "!"
}
