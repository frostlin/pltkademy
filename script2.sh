#$/bin/bash

num=10

for num in $(seq $num); do
  filename=test_$(date +%s)_$num.txt
  cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 1000 | head -n 1 > $filename
done



