#!/bin/bash

screenshot_dir="/home/kali/Pictures"
last_screenshot=`ls -t "$screenshot_dir"/*.png | head -n 1 `
if [ -z last_screenshot= ]
then 
echo "No Screenshot Found "
exit 1
fi

extract_test=`tesseract "$last_screenshot" stdout`
echo $extract_test | xclip -selection clipboard





