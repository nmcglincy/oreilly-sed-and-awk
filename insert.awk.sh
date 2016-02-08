# 
function insert(STRING, POS, INS,  before_tmp) {
	before_tmp = substr(STRING, 1, POS)
	after_tmp = substr(STRING, POS + 1)
	return before_tmp INS after_tmp
}

# main routine
{
	print "Function returns", insert($1, 4, "XX")
	print "The value of $1 after is:", $1
	print "The value of STRING is:", STRING
	print "The value of before_tmp:", before_tmp
	print "The value of after_tmp:", after_tmp
}
