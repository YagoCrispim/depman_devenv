#!/bin/bash

# first argument
FILE=./src/main.lua
COMMAND=lua5.4

function clear_screen() {
    clear
}

function print_header() {
    echo "----------------------------"
    echo "Hot reload - $(date)"
    echo "----------------------------"
}

clear_screen
print_header

lua $FILE $COMMAND &

# Get last process PID
PID=$!

# Kill the app when the any file is modified
trap "kill $PID" SIGINT

# Watch for changes
while inotifywait -r -q -e modify .; do
    # Kill the app
    kill $PID

    clear_screen
    print_header

    # Start the application
    lua $FILE $COMMAND &

    # Get the PID of the last process
    PID=$!
done
