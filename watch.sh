#!/bin/sh
while true; do inotifywait -r -e modify --exclude=".swp" . && make html; done
