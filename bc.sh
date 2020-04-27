#!/bin/bash
current_time=$(date +%H)
if [ "$current_time" -gt 13 ]
then
	$(google-chrome https://meet.google.com/cus-zpyk-pha?authuser=2)
else
	$(google-chrome https://meet.google.com/gnr-uqov-oba?authuser=2)
fi
