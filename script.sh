#/bin/bash

if [[ -z "$frequency" ]]; then
	frequency=60
fi

i=0
while true
do
	echo "[$(date)] ${i}"
	let i=i+1
	sleep $frequency
done