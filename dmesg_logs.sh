#!/bin/bash

project="weir_kernel"
# hammerhead is too long.
device="hh"
dest_path="./kernel_dmesg_logs"

prefix=$project"_"$device
logfilename=$(date +"%m-%d-%y_%H_%M");

finalfilename=$dest_path"/"$prefix"_"$logfilename"_.txt"

echo $finalfilename

adb shell dmesg >> $finalfilename

# on kernel panic
# cat /proc/last_kmsg 
