#! /bin/sh
# Reports records with the inputted word
awk 'BEGIN { FS = "\n"; RS = "" }
	$0 ~ search { print $0 }' search=$1 $2

