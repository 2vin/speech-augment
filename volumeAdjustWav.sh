#!/bin/bash -e

echo "Usage : ./volumeAdjustWav.sh InputFolder OutputFolder (dB=-15,-10,-5,0,2)"

IN=$1
OUT=$2

cd $IN

for j in {-15,-10,-5,0,2};
do
	for i in *.wav;
	do 
		ffmpeg -i $i -filter:a volume=$j'dB' $OUT/`echo $i | cut -d'.' -f1`_$j.wav;
	done
done
