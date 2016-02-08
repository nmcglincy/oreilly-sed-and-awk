awk '# lower -- change upper case to lower case
# initialise strings
BEGIN {
	upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	lower = "abcdefghijklmnopqrstuvwxyz"
}
# for each input line
{
	# see if there is a match for all caps
	while (match($0, /[A-Z]+/))
		# get each capital letter
		for (x = RSTART; x < RSTART + RLENGTH; ++x) {
			CAP = substr($0, x, 1)
			CHAR = index(upper, CAP)
			gsub(CAP, substr(lower, CHAR, 1))
		}
	# print record
	print $0
}' $*
