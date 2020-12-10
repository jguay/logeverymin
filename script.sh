#/bin/bash

function assignSettings () {
	if [[ -z "$frequency" ]]; then
		frequency=60
	fi

	if [[ -z "$logWord" ]]; then
		logWord="test"
	fi

	if [[ -z "$logLength" ]]; then
		logLength=0
	fi
}

function createLogMessage () {
	iterations="$(expr $logLength / ${#logWord} )"
	for (( i=1 ; i <= iterations ; i++)); do
		msg="${msg}$logWord "
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

function terminate_script () {
	exit 200
}

trap terminate_script SIGINT SIGTERM SIGHUP

assignSettings
createLogMessage
showMessages