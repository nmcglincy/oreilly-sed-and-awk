# do.awk
# illustrates the function of the awk 'do' loop
# {
# 	total = i = 0
# 	do {
# 		++i
# 		total += $i
# 	} while ( total <= 100 )
# 	print i, ":", total
# }
# 
# argv.awk -- print command-line parameters
# BEGIN {
# 	for (x = 0; x < ARGC; ++x)
# 		print ARGV[x]
# 	print ARGC
# }
# 
# number.awk -- test command line parameters
# BEGIN {
# 	for (x = 1; x < ARGC; ++x)
# 		if (ARGV[x] !~ /^[0-9]+$/) {
# 			print ARGV[x], "is not an integer."
# 			exit
# 			# the script in the book says exit 1, not sure what the 1 does, but it
# 			# seems to work without it
# 			# the script also understands no parameters as a number
# 		}
# }
# 
# environ.awk -- print environment variables
BEGIN {
	for (env in ENVIRON)
		print env "=" ENVIRON[env]
}

