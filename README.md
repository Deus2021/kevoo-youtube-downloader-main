
## kevoo-yt-dlp.sh

A Bash script for downloading YouTube videos using the [yt-dlp](https://github.com/yt-dlp/yt-dlp) command-line tool. This script is designed to download either a single video or an entire playlist from YouTube.

### Usage

1. Clone the repository or download the script directly.
2. Make the script executable: `chmod +x kevoo-yt-dlp.sh`
3. Run the script: `./kevoo-yt-dlp.sh`

When you run the script, it will prompt you to enter the URL of the YouTube video or playlist you want to download. The script will then use yt-dlp to download the video or playlist in the best quality available.

If the download is successful, the script will output "Download completed successfully on [DATE]" to the console. If the download fails, the script will output "Download failed. please check error.log" and save the error message to a file named error.log.

By default, the script downloads videos in the mp4 format with the best quality video and audio available. You can customize the format and quality of the download by modifying the `-f` flag in the script.

### Examples

Download a single video:

` $ ./kevoo-yt-dlp.sh`

 Enter the YouTube URL: [https://www.youtube.com/watch?v=abcdefg](https://www.youtube.com/watch?v=abcdefg) 

Download an entire playlist:

`$ ./kevoo-yt-dlp.sh`

 Enter the YouTube URL: [https://www.youtube.com/playlist?list=abcdefg](https://www.youtube.com/playlist?list=abcdefg)

Download a video with specific format and quality:


`$ ./kevoo-yt-dlp.sh `

Enter the YouTube URL: [https://www.youtube.com/watch?v=abcdefg](https://www.youtube.com/watch?v=abcdefg)


### Requirements

- Bash (version 4.0 or later)
- [yt-dlp](https://github.com/yt-dlp/yt-dlp)

### Installation

1. Install yt-dlp by following the instructions on the [yt-dlp GitHub page](https://github.com/yt-dlp/yt-dlp).
2. Clone the repository or download the script directly.
3. Make the script executable: `chmod +x kevoo-yt-dlp.sh`

### License

This script is released under the MIT License. See the LICENSE file for more details.

### Contributing

If you find a bug or have a feature request, please open an issue on the [GitHub repository](https://github.com/Deus2021/kevoo-tube-downloader).

Pull requests are welcome! If you want to contribute to this project, please fork the repository and create a new branch for your changes. When you're done making your changes, submit a pull request to merge your branch into the main repository.

### Credits

- This script is based on [yt-dlp](https://github.com/yt-dlp/yt-dlp).
- Created by [kelvin developer ](https://github.com/Deus2021)
- Created by [Anderson developer ](https://github.com/blackmitnick) 🧑🏻‍💻.
