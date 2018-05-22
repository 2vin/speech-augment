#!/bin/bash -e

echo "Usage : ./mp32wav.sh InputFolder(mp3) OutputFolder(wav)"

IN=$1
OUT=$2

cd $IN

for i in *.mp3;
do 
	ffmpeg -i $i -acodec pcm_s16le -ac 1 -ar 16000 $OUT/`echo $i | cut -d'.' -f1`.wav;

done
