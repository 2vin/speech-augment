#!/bin/bash -e 

echo "Usage : ./renameSeq.sh InputFolder Phrase"
cd $1

a=1
for i in *.wav; do
  new=$(printf "0_$2_%04d.wav" "$a") #04 pad to length of 4
  mv -i -- "$i" "$new"
  let a=a+1
done
