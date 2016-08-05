#!/bin/bash

# Wait till we reach the "device" state
./get_device.sh

# Set selinux to permissive
adb shell su 0 setenforce 0

# get the log
adb logcat -v time rmt_storage:S  qti_sensors_hal:S libsensor1:S QSEECOMD:S ssr-ramdumpd:S | grep -v -e "QSEECOMD" -e "D\/ConnectivityService"

# on kernel panic
# cat /proc/last_kmsg 
