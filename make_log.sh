#!/bin/bash

project="weir"
# hammerhead is too long.
device="hh"
dest_path="./logcat_out"

prefix=$project"_"$device
logfilename=$(date +"%m-%d-%y_%H_%M");

finalfilename=$dest_path"/"$prefix"_"$logfilename"_.txt"

echo $finalfilename

./display_log.sh >> $finalfilename

# on kernel panic
# cat /proc/last_kmsg 
