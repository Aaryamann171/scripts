#!/bin/bash
export DISPLAY=:0
current_time=$(date +%H)
if [ "$current_time" -gt 13 ]
then
	$(google-chrome https://meet.google.com/cus-zpyk-pha?authuser=2)
else
	$(google-chrome https://meet.google.com/zje-fuwd-ztb?authuser=2)
fi
