rem This small ffmpeg script to combine the mp4 and mp3 files I rip apart with XMedia, I then normalize every mp3 to 82dB with MP3Gain, using for my plex server <-- writing for my own memory
rem XMedia - https://www.xmedia-recode.de/en/
rem Mp3Gain - https://mp3gain.sourceforge.net/
rem ffmpeg - https://www.ffmpeg.org/download.html
for %%a in ("*.mp4") do ffmpeg -i "%%~na.mp3" -i "%%~na.mp4" -acodec copy -vcodec copy "encoded\%%~na.mp4"
pause
