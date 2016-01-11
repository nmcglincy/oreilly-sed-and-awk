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
/1/{
	h
	d
}
/2/{
	G
}
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
${
	/^$/!{
		H
		s/.*//
	}
}
/^$/!{
	H
	d
}
/^$/{
	x
	s/^\n/<p>/
	s/$/<\/p>/
	G
}