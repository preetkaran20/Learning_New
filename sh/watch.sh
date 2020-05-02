#!/bin/bash
# It is used to execute the command at a particular interval
# watch.sh "<commmand>" <time in seconds>

set -e
if [ $# -lt 1 ]
  then 
    echo "Please mention command and time as parameters like \"watch.sh ls 2\""
elif [ $# -lt 2 ]
  then
    echo "Please mention time in seconds as the second parameter like \"watch.sh $1 2\""
else
    clear
    echo "Every $2 seconds"
    while true
      do   
	 $1
         # #? is used for mentioning the result of the previous command and if command is not successful terminate the program.
         if [ $? -ne 0 ]
           then
           exit 1
         fi
         sleep $2
      done
fi
