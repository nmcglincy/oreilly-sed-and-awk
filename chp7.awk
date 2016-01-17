# Chpt 7 Writing scripts for awk
# 
# 3 ways to print "Hello, world"
# 
# echo 'this line of data is ignored' > test
# echo 'Hello, world' > test2
# 
# awk '{ print "Hello, world" }' test
# awk '{ print }' test2
# awk 'BEGIN { print "Hello, world" }'
# 
# Pattern matching
# 
# test for integer, string or empty line.
# /[0-9]+/	{ print "That is an integer" }
# /[A-Za-z]+/	{ print "That is a string" }
# /^$/		{ print "That is a blank line" }
#
# blocklist.awk -- print name and address in block form
# input file -- name, company, street, city, state and zip, phone
# BEGIN { FS = "," }	# comma delimted fields
#
# {	print ""		# output blank line
# 	print $1		# name
# 	print $2		# company
# 	print $3		# street
# 	print $4, $5	# city, state zip
# }
#
# END { print "" }	# print a blank line at the end of the file for aesthetics
# 
# phonelist.awk -- print name and phone number
# input file -- name, company, street, city, state and zip, phone
# BEGIN { FS = "," }	# comma delimted fields
#
# { print $1 ", " $6}
# 
# Print blank lines
# /^$/ {
# 	++x
# 	# print x
# }
# END { print x }
# 
# Averaging 5 grades
# {	total = $2 + $3 + $4 + $5 + $6
# 	avg = total/5
# 	print $1, avg	}
# 
# {	total = $2 + $3 + $4 + $5 + $6
# 	print $1, total/5	}
# 

