#!/bin/bash

project="weir_kernel"
# hammerhead is too long.
device="hh"
dest_path="./lsof_logs"

prefix=$project"_"$device
logfilename=$(date +"%m-%d-%y_%H_%M");

finalfilename=$dest_path"/"$prefix"_"$logfilename"_.txt"

echo $finalfilename

adb shell lsof >> $finalfilename
temp=`adb shell lsof | wc -l`
echo $temp
# on kernel panic
# cat /proc/last_kmsg 
