#!/bin/bash

download_apng() {
    apng_url="https://s.w-x.co/staticmaps/wu/wu/wxtype1200_cur/conus/animate.png"  # Replace this with the actual APNG URL
    curl -O "$apng_url"
}

# Function to convert APNG to GIF
convert_to_gif() {
    apng_file="animate.png"  # Replace this with the actual APNG filename
    gif_file="converted.gif"  # Replace this with the desired GIF filename

    ffmpeg -i "$apng_file" "$gif_file"
}

# Function to send the GIF to Discord webhook
send_to_discord() {
    webhook_url="https://discord.com/api/webhooks/1194117562158546994/uuvSf5F4NdhEF21IVMarppF-Qx6UR8aWkUEC9ye7caOHlfdgOhqzU7o3y0naIoCpwlW7"  # Replace this with your Discord webhook URL
    gif_file="converted.gif"  # Replace this with the actual GIF filename

    curl -X POST -H "Content-Type: multipart/form-data" -F "file=@$gif_file" "$webhook_url"
}

# Function to clean up
cleanup() {
    apng_file="animate.png"  # Replace this with the actual APNG filename
    gif_file="converted.gif"  # Replace this with the actual GIF filename

    rm -f "$apng_file" "$gif_file"
}

# Main script
download_apng
convert_to_gif
send_to_discord
cleanup     