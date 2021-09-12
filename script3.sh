#!/bin/bash
# create directory and cd there
mkdir -p /tmp/investigation
cd /tmp/investigation

# for every java pid get list of accessed files and get path of these files via awk, then pipe it to file
for pid in $(pgrep -f brave)
do
  lsof -p $pid | awk '{print $9}' | grep '^/' > access_$pid.txt
done

#file with all files that java accessed, without duplicates
cat * | sort -u > all_accessed_files_list.txt
