 #!/bin/bash
if [ $# -ne 2 ] ; then
	echo "Two numbers are required" 
	exit 
fi 

intregex='^[0-9]+$'
if ! [[ $1 =~ $intregex ]] ; then
	echo "$1 is not an integer"
	exit 1
fi 
if ! [[ $2 =~ $intregex ]] ; then
	echo "$2 is not an integer"
	exit 1
fi 

let a=$1+$2
echo "The sum of $1 and $2 is:" $a

let b=a*7
echo "The multiplication of the two added numbers by 7 is:" $b
