awk '# match -- print string that matches line
# for lines matching pattern
match($0, pattern) {
	# extract string matching pattern using
	# starting postion and length of string in $0
	# print string
	print substr($0, RSTART, RLENGTH)
}' pattern="$1" $2

