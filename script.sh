#/bin/bash

function assignSettings () {
	if [[ -z "$frequency" ]]; then
		frequency=60
	fi

	if [[ -z "$logLength" ]]; then
		logLength=0
	fi
}

function createLogMessage () {
	iterations="$(expr $logLength / 5)"
	for (( i=1 ; i < iterations ; i++)); do
		msg="${msg}test "
	done
}

function showMessages () {
	i=0
	while true
	do
		echo "{\"timestamp\":\"$(date)\",\"id\":\"${i}\",\"message\":\"${msg}\" }"
		let i=i+1
		sleep $frequency
	done
}

assignSettings
createLogMessage
showMessages