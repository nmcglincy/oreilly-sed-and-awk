# Make a new file named 1.sed which has only lines 1,2,3,4 and 5 from the original input file.
# 
# 1,5w temp.out
# Make a new file named 2.sed which has only lines 10, 12, and 14 from the original input file.
# 
# 10p;12p;14p;
# Make a new file named 3.sed which has only the lines that contain the word "line" from the original input file.
# /line/p
# Make a new file named 4.sed which has only the lines that contain a numeric character (0-9) from the original input file.

# Make a new file named 5.sed which contains all of the lines from the original input file, but anytime the word "line" appears it should be exchanged with the word "entry". Also make sure that if "Line" appears it is replaced by "Entry".
# Make a new file named 6.sed which contains all of the lines that do not contain a numeric character.
# Make a new file named 7.sed which replaces any line with a numeric character with a line of three X's "XXX"
# Make a new file named 8.sed which adds a new line (three X's) before each line that contains a numeric character.
# Make a new file named 9.cap.sed which contains all lines that have a capital alphabetical character in the same script that puts all lines that do not have a capital alphabetical character into the file named 9.nocap.sed.
# Make a new file named 10.sed which takes any numeric character and writes it out twice in a row (twice for each one time it appears in the input file).