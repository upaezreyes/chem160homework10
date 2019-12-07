 #!/bin/bash

if [ $# -ne 2 ] ; then
	echo "Script takes 2 arguments, a file and a number (n)"
	exit 1
fi

if [ ! -f $1 ] ; then 
	echo "No file found, cuh"
	exit 1
fi 

intregex='^[0-9]+$'
if ! [[ $2 =~ $intregex ]] ; then
	echo "Second argument must be an integer" 
	exit 1
fi

echo "Head:"
head -n $2 $1
echo "Tail:"
tail -n $2 $1
 


