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
/UNIX$/{
	N
	s/\nSystem/ Operating &/
	P
	D
}