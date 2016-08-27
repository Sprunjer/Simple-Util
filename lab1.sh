#!/bin/bash
# This is an experimental dummy program. 

LOG_DIR=~/log
ROOT_UID=0
E_XCD=86
LINES=15
E_NONROOT=88

MONG=100
CRISP=500
FLAGGER=1
CREED=10000
NIT=0

#This will check if the user is using root or not. 
#If not, it will return an error exception. 

if [ "$NIT" -eq "$ROOT_UID" ];
then
	echo "Get your lilly but out of here"
	exit $E_NONROOT
 fi

#This is even dummier one...

if [ "$MONG" -lt "$CRISP" ];
then 
	$MONG = $((MONG+1))
        echo "See the above number to check your sanity"
	cd $LOG_DIR
        if [ "$PWD" != "$LOG_DIR" ];
        then 
	echo "Well, there is some concern over this"
        exit $E_XCD
        fi
       
	touch dummier_dump.txt
        echo "$MONG">>dummier_dump.txt
# TO BE FILLED WITH RANDOM STUFF

fi
touch dummier_dump.txt 
touch last.txt
echo "last 10 messages will appear below" > last.txt

tail -n $LINES dummier_dump.txt >>  last.txt
mv last.txt LASTONE
wait 3

echo "Enough time to wait for this little maggots"

exit 0

# Well, isn't time to get the heck out of here now? No, not really. 
 
