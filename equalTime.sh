#!/bin/bash -e

echo "Usage : ./equalTime.sh InputFolder OutputFolder MinimumSeconds"

IN=$1
OUT=$2
SEC=$3
SAMPLES=`echo $SEC 16000 | awk '{printf "%4.3f\n",$1*$2}'`
SAMPLES=${SAMPLES%.*}

cd $IN

for i in *.wav;
do 
	ffmpeg -i $i -filter:a apad=whole_len=$SAMPLES $OUT/`echo $i | cut -d'.' -f1`_$SAMPLES.wav;

done
