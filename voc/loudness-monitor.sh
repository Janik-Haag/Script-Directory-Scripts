#!/bin/bash

# Displays a loudnessmonitor renderd by ffmpeg
# This script expects a parameter with the stream name usually one of s1 to s6
# Example ussage would be `sd voc loudness-monitor.sh s1`

# This uses pipe to dev/null twice, the first for mpv and the second for the job control
mpv "rtmp://ingest2.c3voc.de/relay/$1_loudness" 2&>/dev/null & 2&>/dev/null
