#!/bin/bash -e

echo "Usage : ./mergeNoise.sh InputFolder NoiseFolder OutputFolder"
IN1=$1
IN2=$2
OUT=$3

INDEX=0
cd $IN1

for j in $IN2/*.wav;
do
	INDEX=$((INDEX+1))
	for i in *.wav;
	do
		ffmpeg -i $i -i $j -filter_complex amix=inputs=2:duration=first $OUT/`echo $i | cut -d'.' -f1`_$INDEX.wav;
	done
done
