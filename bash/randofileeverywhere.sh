#!/bin/sh
INDEX=0
END=10
PAIN="LOCKDIEVERDOMDELAPTOP.txt"
RANDOM=$$$(date +%s)

while [ $INDEX -le $END ]
do
  cd /
  INDEX=$(($INDEX + 1))
  DIR=$(ls -d */)
  for i in $DIR
  do
    ARRAY=()
    ARRAY+=($i)
    RANDSELECT=${ARRAY[$RANDOM % ${#ARRAY[@]}]}
    DIR=$(ls -d /$i*/)
    touch /$RANDSELECT$PAIN
  done
done

cd