#!/bin/bash -e

echo "Usage : ./splitAudioSegment.sh InputFolder SegmentDuration"

cd $1

for i in *.wav; do ffmpeg -i $i -f segment -segment_time $2 -c copy `echo $i | cut -d'.' -f1`%d.wav; done

