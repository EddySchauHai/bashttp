#!/bin/bash

trap "echo Exited!; exit;" SIGINT SIGTERM

PORT="${1:-1337}"

main () {
    echo "Starting..."

    while true 
    do
        printf 'HTTP/1.1 200 OK\n\n%s' "$(cat index.html)" | nc -c -l ${PORT}
    done
}

main
