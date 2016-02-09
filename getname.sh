awk ' # getname -- print userf fullname from /etc/passwd
BEGIN {
	"who am i" | getline
	name = $1
	FS = ":"
}
name ~ $1 {
	print $5
}' /etc/passwd
# this doesn't seem to work - 
# maybe the directory specified doesn't exist on my system.

