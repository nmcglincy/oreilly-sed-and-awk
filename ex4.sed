# exercise 4
# Replace all <emphasis> and </emphasis> tags with asterisks. Thus:
# This is a <emphasis>great</emphasis> bargain.
# will become
# This is a *great* bargain.
s/<emphasis>/*/g
s/<\/emphasis>/*/g
