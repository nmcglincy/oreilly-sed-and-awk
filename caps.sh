awk '# caps -- capitalize 1st letter of 1st word
# initialize strings
BEGIN {
	upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	lower = "abcdefghijklmnopqrstuvwxyz"
}

# for each input line
{
# get the first character of the first word
	FIRSTCHAR = substr($1, 1, 1)
# get position of FIRSTCHAR in lower case array; if 0, ignore
	if (CHAR = index(lower, FIRSTCHAR))
		# change $1, using position to retrieve uppercase character
		# subsequent commands are contatenated and assigned to the record
		$1 = substr(upper, CHAR, 1) substr($1, 2)
# print record
	print $0
}' $*

