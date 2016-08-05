#!/bin/bash

device=`adb get-state`

while [ $device != "device" ]; 
do
    device=`adb get-state`
done
echo "Starting in device state."
