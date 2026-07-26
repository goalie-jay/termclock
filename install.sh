#!/bin/bash

lace termclock.ms termclock
STATUS=$?

if [ $STATUS -eq 0 ] then
	sudo cp ./termclock /usr/local/bin/termclock
fi