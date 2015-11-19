# scripts from chapter 6
# 
# N append next line command
# 
# indentation of the final backslash actually makees a difference to the output
# /Operator$/{
# 	N
# 	s/Owner and Operator\nGuide /Installation Guide\
# /
# }
#
# my turn...
# /drives$/{
# 	N
# 	s/drives\navailable/drives not available/
# }
# 
s/Owner and Operator Guide/Installation Guide/
/Owner/{
$!N
s/ *\n/ /
s/Owner and Operator Guide */Installation Guide\
/
}
# $!N protects you from trying to read lines beyond the last one, which will cause sed to quit.
# Not necessary if you have the first substitute command.
# 

