#!/bin/bash

# Prompt the user for the YouTube URL
read -p "Enter the YouTube URL: " url

# Check if the URL is for a playlist or a single video
if [[ $url == *"playlist"* ]]; then
  # Download the entire playlist
  yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4" --playlist $url
else
  # Download the single video
  yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4" $url
fi

# Check if the download is completed successfully
if [ $? -eq 0 ]; then
  echo "Download completed successfully on $(date)"
else
  echo "Download failed. please check error.log"
  yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4" $url 2> error.log
fi
