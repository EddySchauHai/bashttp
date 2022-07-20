#!/bin/sh
printf 'HTTP/1.1 200 OK\n\n%s' "$(cat index.html)" | nc -c -l ${1:-1337}
