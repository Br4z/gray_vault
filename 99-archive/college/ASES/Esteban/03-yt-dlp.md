---
reviewed_on: "2025-05-14"
---

# yt-dlp

1. Install ffmpeg: `sudo apt install ffmpeg`.

2. Install yt-dlp.

	```bash
	sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/
	sudo chmod a+x /usr/local/bin/yt-dlp
	```

3. Download songs from YouTube: `yt-dlp -x --audio-format mp3 --audio-quality 0 <YOUTUBE_URL>`.

	- `-x`: convert the downloaded video file to audio-only.

	- `--audio-format mp3`: converts the extracted audio to MP3.

	- `--audio-quality 0`: uses ffmpeg's `-q:a 0` VBR setting for best quality.
