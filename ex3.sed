# exercise 3
# Replace all <para> and </para> tags with the null string. If the resulting line is empty, delete the line. (You may need to use curly braces to make this happen.)
# /<para>/{
# 	s/<para>//
# 	s/<\/para>//
# 	/^$/d
# }
# /<\/para>/{
# 	s/<para>//
# 	s/<\/para>//
# 	/^$/d
# }
# This last command matches both, using a ? would be cooler, but it doesn't seem to work
/<[/]*para>/{
	s/<para>//
	s/<\/para>//
	/^$/d
}
