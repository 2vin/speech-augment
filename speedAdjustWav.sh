#!/bin/bash -e

echo "Usage : ./speedAdjustWav.sh InputFolder OutputFolder Speed"

IN=$1
OUT=$2
TEMPO=$3
TEMPOE=`echo $TEMPO 100 | awk '{printf "%4.0f\n",$1*$2}'`
TEMPOE=${TEMPOE%.*}
cd $IN

for i in *.wav;
do 
	#echo `echo $i | cut -d'.' -f1`-$TEMPO100.wav
	#ffmpeg -i $i -filter:a "atempo=$TEMPO" $OUT/`echo $i | cut -d'.' -f1 | cut -d'_' -f1,2`_`echo $TEMPOE`.wav;
	ffmpeg -i $i -filter:a "atempo=$TEMPO" $OUT/`echo $i | cut -d'.' -f1`_`echo $TEMPOE`.wav;

done
