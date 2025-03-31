#!/bin/bash

Reslt='2'
var='1'

until [ $Reslt = $var ]; do
 echo -n "Youtube Link: "
 read Reslt
 if [ $Reslt != $var ]
 then
  /Users/snowycofy/yt-dlp_macos/yt-dlp_macos -x --audio-format mp3 -o "/Users/snowycofy/Desktop/Download/%(title)s.%(ext)s" $Reslt
 fi
done
exit 0