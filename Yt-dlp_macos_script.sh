#!/bin/bash

Reslt='0'
PathToYtDlp="/Users/snowycofy/yt-dlp_macos/yt-dlp_macos"
Output="/Users/snowycofy/Desktop/Download/%(title)s.%(ext)s"

until [ $Reslt = '1' ]; do
 echo -n "Put the youtube link or 1 to exit: "
 read Reslt
 if [ $Reslt != '1' ]
 then
  $PathToYtDlp -f "bestvideo+bestaudio/best/best" --merge-output-format mp4 -o $Output $Reslt
 fi
done
exit 0