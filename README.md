# speech-augment
Scripts for augmenting speech dataset using multiple techniques 

# Pre-requisites    
Install `ffmpeg` before trying the scripts.     

# Description    
There are total 7 scripts to augment speech data (in order of priority).        
1. mp32wav.sh - It can be used to convert .mp3 files to .wav files as .wav files are used widely.   
    Usage : ./mp32wav.sh InputFolder(mp3) OutputFolder(wav)     
        
2. speedAdjustWav.sh - It can be used to augment the speed of files.        
    Usage : ./speedAdjustWav.sh InputFolder OutputFolder Speed      
    (Note: For best results, use "Speed" values from [0.7,1.4] only)        

3. volumeAdjustWav.sh - It can be used to adjust the amplitude or volume of the speech. This is useful in enhancing robustness to distance of speaker.      
    Usage : ./volumeAdjustWav.sh InputFolder OutputFolder       
    
4. equalTime.sh - It can be used to adjust to make the size of each .wav file equal to (atleast) MinimumSeconds.        
    Usage : ./equalTime.sh InputFolder OutputFolder MinimumSeconds      
  
5. mergeNoise.sh - It can be used to mix noise in the dataset by superimposing the two streams.     
    Usage : ./mergeNoise.sh InputFolder NoiseFolder OutputFolder        
    
6. splitAudioSegment.sh - It can be used to split large .wav files into small fragments of equal size(s).       
    Usage : ./splitAudioSegment.sh InputFolder SegmentDuration(in seconds)      
 
7. renameSeq.sh - It can be used to rename all the files in a folder. All files will be renamed in a particular sequence.       
    Usage : ./renameSeq.sh InputFolder Phrase       
    (Note: Phrase can be any alphanumeric string which can be used to differentiate between data from different users)      
