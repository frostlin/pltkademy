#$/bin/bash

num=10

for num in $(seq $num); do
  filename=test_$(date "+%Y-%m-%d_%H-%M-%S")_$num.txt
  cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 1000 | head -n 1 > $filename
done

# To schedule this script we need to use cron
# 1. Open crontab with $crontab -e
# 2. Write following line: 
#        0 */6 * * * /home/frostlin/script2.sh
# this line sets script to run every 6 hours



