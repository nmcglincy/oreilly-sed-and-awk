# Replace the word web with Web everywhere.
# s/web/Web/g
# 
# Replace lines starting with <listing> by ---begin listing
# s/^<listing>/---begin listing/
# 
# Replace lines starting with </listing> by ---end listing
# s/^<\/listing>/---end listing/
# 
# Between the <listing> and </listing>, do these things (you must use curly braces to do this!):
# Replace all occurrences of &lt; with <.
# Replace all occurrences of &gt; with >.
# Replace all occurrences of &amp; with &.
# Note: you must do these operations in the order shown above; otherwise, you will get the wrong results!
# 
/<listing>/,/<\/listing>/{
	s/&lt;/</g
	s/&gt;/>/g
	s/&amp;/\&/g
}