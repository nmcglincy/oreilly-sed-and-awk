awk -v NUM=$1 -v TOPNUM=$2 '
# lotto -- prick x random numbers out of y
# main routine
BEGIN {
# test command line arguments
# NUM = $1, how many numbers to pick
# TOPNUM = $2, last number in series
	if (NUM <= 0)
		NUM = 6
	if (TOPNUM <= 0)
		TOPNUM = 30
# Print "print x out of y"
	printf("Pick %d of %d\n", NUM, TOPNUM)
	# seed random number using time and date; do this once
	rand()
}
{
	# loop until we have NUM selections
	for (j = 1; j <= NUM; ++j) {
		# loop to find a not-yet-seen-selection
		do {
			select = 1 + int(rand() * TOPNUM)
		} while (select in pick)
		pick[select] = select
	}
	# loop through array and print picks
	printf("%s:\t", $0)
	for (j in pick)
		printf("%s\t", pick[j])
	printf("\n")
	# The first time I ran this without the following loop and it printed out 6,
	# 12, 18 picks for record 1, 2, 3; so somehow pick was getting recycled 
	# between records. This loop clears the array pick.
	for (j in pick)
		delete pick[j]
}' peeps.txt
# $3 would also work here to specify another file, but then you have to put in
# the NUM & TOPNUM, otherwise it gets confused.

