#!/bin/bash

# debounce <sec:float> emits a line of input at most every 'sec' seconds, discarding extra messages
debounce () {
    LAST=0
    DELTA=${1:-2}
    while read; do
	TIME=$(date +%s.%N)
	if [ "1" == $(echo "$TIME - $LAST < $DELTA" | bc) ]; then continue; fi
	echo "$REPLY";
	LAST=$TIME
	continue
    done;
}

# ratelimit <sec:float> emits a line of input at most every 'sec' seconds, buffering messages
ratelimit () {
    LAST=0
    DELTA=${1:-2}
    while read; do
	TIME=$(date +%s.%N)
	REMAINING=$(echo "r = ($LAST + $DELTA - $TIME);if (r < 0) { r = 0 }; r" | bc)
	sleep "$REMAINING"
	LAST=$(date +%s.%N)
	echo "$REPLY";
	continue
    done;
}
