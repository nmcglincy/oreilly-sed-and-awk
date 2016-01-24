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
# BEGIN {
# 	FS = ", *"
# }	# comma delimted fields
# {
# 	print $1 ", " $6
# }
# END {
# 	print ""
# 	print NR, "records processes."
# }
# 
# Print blank lines
# /^$/ {
# 	++x
# 	# print x
# }
# END { print x }
# 
# Averaging 5 grades
# {
# 	total = $2 + $3 + $4 + $5 + $6
# 	avg = total/5
# 	if ( avg >= 90 ) grade = "A"
# 	else if ( avg >= 80 ) grade = "B"
# 	else if ( avg >= 70 ) grade = "C"
# 	else if ( avg >= 60 ) grade = "D"
# 	else grade = "F"
# 	result = (avg >= 65) ? "Pass" : "Fail"
# 	print NR ".", $1, avg, grade, result
# }
# 
# {	total = $2 + $3 + $4 + $5 + $6
# 	print $1, total/5	}
# 
# Working with multi-line records
# block.awk -- print first and last field
# 
# BEGIN {
# 	FS = "\n"
# 	RS = ""
# 	OFS = "\n"
# 	ORS = "\n\n"
# }
# {
# 	print $1, $NF
# }
# 
# Balance the checkbook
# 
# checkbook.awk -- provides a running total of my account balance
# 1st line: balance
# check no.\twhat\texpense
# 
# BEGIN {
# 	FS = "\t"
# }
# #1 Expect the first record to have the starting balance
# NR == 1 {
# 	print "Beginning balance: \t" $1
# 	balance = $1
# 	next
# }
# #2 Apply to each cheque record, adding amount from balance
# {
# 	print $1, $2, $3
# 	print balance += $3		# cheques have negative amounts
# }
# 
# for loop - a different approach to grades.awk
# Averaging N grades
# set output field separator to tab
BEGIN {
	OFS = "\t"
}
{
# add up the grades
	total = 0
	for (i = 2; i <= NF; ++i)
		total += $i
# calculate average
	avg = total/(NF - 1)
# assign student's average to element of array
	student_avg[NR] = avg
# determine letter grade
	if ( avg >= 90 ) grade = "A"
	else if ( avg >= 80 ) grade = "B"
	else if ( avg >= 70 ) grade = "C"
	else if ( avg >= 60 ) grade = "D"
	else grade = "F"
# increment counter for letter grade array
	++class_grade[grade]
# print student name, average and letter grade
	# result = (avg >= 65) ? "Pass" : "Fail"
	print NR ".", $1, avg, grade
}

# print out class stats
END {
# calculate class average
	for (x = 1; x <= NR; x++)
		class_avg_total += student_avg[x]
	class_average = class_avg_total/NR
# determine no. above/below average
	for (x = 1; x <= NR; x++)
		if (student_avg[x] >= class_average)
			++above_average
		else
			++below_average
# print results
	print ""
	print "Class Average: ", class_average
	print "At or Above Average: ", above_average
	print "Below Average: ", below_average
# print no. student per letter grade
	for (letter_grade in class_grade)
		print letter_grade ":", class_grade[letter_grade] | "sort"
}

