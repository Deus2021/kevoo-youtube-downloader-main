#!/bin/bash

# Prompt the user for the YouTube URL
read -p "Enter the YouTube URL: " url

# Display quality options
options=("L" "Md" "H")
select quality in "${options[@]}"; do
  case $quality in
    "L")
      format="worstvideo[ext=mp4]+worstaudio[ext=m4a]/mp4"
      break
      ;;
    "Md")
      format="mediumvideo[ext=mp4]+mediumaudio[ext=m4a]/mp4"
      break
      ;;
    "H")
      format="bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4"
      break
      ;;
    *) echo "Invalid option";;
  esac
done

# Check if the URL is for a playlist or a single video
if [[ $url == *"playlist"* ]]; then
  # Download the entire playlist
  yt-dlp -f "$format" --playlist $url
else
  # Download the single video
  yt-dlp -f "$format" $url
fi

# Check if the download is completed successfully
if [ $? -eq 0 ]; then
  echo "Download completed successfully on $(date)"
else
  echo "Download failed. Please check error.log"
  yt-dlp -f "$format" $url 2> error.log
fi
