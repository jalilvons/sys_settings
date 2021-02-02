#!/bin/bash
DIR="/run/media/jm/5ea0b3d3-7928-4304-991a-f9b2658dc5dc/29.01.2021"
cd "$DIR"
for i in *.*; do
    ffmpeg -hwaccel cuvid -i "$i" -c:v h264_nvenc -rc constqp -qp 30 "/run/media/jm/5ea0b3d3-7928-4304-991a-f9b2658dc5dc/29.01.2021/converted/${i%.*}.mp4"
done
