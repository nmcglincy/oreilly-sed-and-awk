#! /bin/sh
# assign shell's $1 to awk search variable
awk '$1 ~ search' search=$1 acronyms.txt
