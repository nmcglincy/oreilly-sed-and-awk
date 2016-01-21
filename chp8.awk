# do.awk
# illustrates the function of the awk 'do' loop
{
	total = i = 0
	do {
		++i
		total += $i
	} while ( total <= 100 )
	print i, ":", total
}

