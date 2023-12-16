#!/bin/bash

COMMAND=$@
TOTAL=0
MOD=100000
DELAY=4
NEWTOTAL=0
COUNT=0

IGNORE_FILE=".hotterignore"

if [ ! -e "$IGNORE_FILE" ]; then
	touch $IGNORE_FILE
fi

PID=$($COMMAND > /dev/null & echo $! & )
echo "Running $PID : $COMMAND "

if [ -e "$IGNORE_FILE" ]; then
    mapfile -t ignore_patterns < "$IGNORE_FILE"

    find_cmd="find ."
    find_cmd+=" -not -path '.hotterignore'"
    for pattern in "${ignore_patterns[@]}"; do
	    [[ "$pattern" == "#"* ]] && continue
	    find_cmd+=" -not -path '$pattern'"
    done

    filtered_files=($(eval "$find_cmd"))

    for file in "${filtered_files[@]}"; do
	    {
	    [[ "$file" == "." ]] && continue
	    TOTAL=$(($TOTAL+$(($(date -r ${file} +"%s")))));
	    TOTAL=$(($TOTAL%$MOD));
    }
    done
else
    echo "Error: $IGNORE_FILE not found."
fi


while true; do
	sleep $DELAY
	NEWTOTAL=0
	if [ -e "$IGNORE_FILE" ]; then
	    mapfile -t ignore_patterns < "$IGNORE_FILE"

	    find_cmd="find ."
	    find_cmd+=" -not -path '.hotterignore'"
	    for pattern in "${ignore_patterns[@]}"; do
		    [[ "$pattern" == "#"* ]] && continue
		    find_cmd+=" -not -path '$pattern'"
	    done

	    filtered_files=($(eval "$find_cmd"))

	    for file in "${filtered_files[@]}"; do
		    {
		    [[ "$file" == "." ]] && continue
		    NEWTOTAL=$(($NEWTOTAL+$(($(date -r ${file} +"%s")))));
		    NEWTOTAL=$(($NEWTOTAL%$MOD));
	    }
	    done
	    if [ "$NEWTOTAL" != "$TOTAL" ]; then
		    {
			    TOTAL=$(($NEWTOTAL))
			    COUNT=$(($COUNT+1))
			    kill -9 $PID
			    echo "Killed $PID"
			    PID=$($COMMAND > /dev/null & echo $! & )
			    echo "${COUNT}.  File change. Reloading $PID : $COMMAND "
		    }
	    fi
	else
	    echo "Error: $IGNORE_FILE not found."
	fi
done;

