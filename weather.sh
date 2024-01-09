#!/bin/bash

    apng_file="animate.png"  # Replace this with the actual APNG filename
    gif_file="converted.gif"  # Replace this with the desired GIF filename
    apng_url="https://s.w-x.co/staticmaps/wu/wu/wxtype1200_cur/conus/animate.png"  # Replace this with the actual APNG URL
    webhook_url="webhook here idiot"  # Replace this with your Discord webhook URL

download_apng() {
    curl -O "$apng_url"
}

# Function to convert APNG to GIF
convert_to_gif() {


    ffmpeg -i "$apng_file" "$gif_file"
}

# Function to send the GIF to Discord webhook
send_to_discord() {

    curl -X POST -H "Content-Type: multipart/form-data" -F "file=@$gif_file" "$webhook_url"
}

# Function to clean up
cleanup() {

    rm -f "$apng_file" "$gif_file"
}

# Main script
download_apng
convert_to_gif
send_to_discord
cleanup     