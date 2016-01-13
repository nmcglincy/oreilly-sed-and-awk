# /<para>/{
# 	N
# 	c\
# .LP
# }
# #
# /<Figure Begin>/,/<Figure Ends>/{
# 	w fig.interleaf
# 	/<Figure Ends>/i\
# .FG\
# <insert figure here>\
# .FE
# 	d
# }
# #
# /^$/d
# 
# Multiline Print example (test.Print)
# /UNIX$/{
# 	N
# 	/\nSystem/{
# 		s// Operating &/
# 		P
# 		D
# 	}
# }
# 
# /UNIX$/{
# 	N
# 	s/\nSystem/ Operating &/
# 	P
# 	D
# }
# I understand this one better than the preceeding one I think.
# 
#  Hold that line
# Reverse flip
# /1/{
# 	h
# 	d
# }
# /2/{
# 	G
# }
# 
# A Capital Transformation
# capitalize statement names
# /the .* statement/{
# 	h
# 	s/.*the \(.*\) statement.*/\1/
# 	y/abcdefghijklmnopqrstuvwxyz/ABCDEFGHIJKLMNOPQRSTUVWXYZ/
# 	G
# 	s/\(.*\)\n\(.*the \).*\( statement.*\)/\2\1\3/
# }
# 
# Building blocks of text
# ${
# 	/^$/!{
# 		H
# 		s/.*//
# 	}
# }
# if the line is not empty, append it to the hold buffer and delete it from the 
# pattern buffer
# /^$/!{
# 	H
# 	d
# }
# if the line is empty, exchange the hold and pattern buffer and then do subs on
# it. Lastly, append the empty line in the hold buffer to the pattern buffer
# /^$/{
# 	x
# 	s/^\n/<p>/
# 	s/$/<\/p>/
# 	G
# }
# 
# Branching and testing
# Extending Lenny's script
# collapsing multiple blank lines into one:
# /^$/{
# 	N
# 	/^\n$/D
# }
# a new script to test for font macro matches accross arbitrary numbers of lines
# :begin
# /@f1(\([^)]*\))/{
# 	s//\\fB\1\\fR/g
# 	b begin
# }
# /@f1(.*/{
# 	N
# 	s/@f1(\([^)]*\n[^)]*\))/\\fB\1\\fR/g
# 	t again
# 	b again
# }
# :again
# P
# D
#
# To join a phrase bash script
#! /bin/sh
# phrase -- searhc for workd across lines
# $1 = search string; remaining args = filenames
search=$1
shift
for file
do
	sed '
	/'"$search"'/b
	N
	h
	s/.*\n//
	/'"$search"'/b
	g
	s/ .*\n/ /
	/'"$search"'/{
		g
		b
	}
	g
	D' $file
done

