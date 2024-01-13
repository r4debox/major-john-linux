#!/bin/bash

# Discord Webhook URL
webhook_url="Webhook Here"

# Function to send an embed to Discord
send_embed() {
    title="$1"
    description="$2"
    
    # Create JSON payload for Discord
    json_payload='{
        "embeds": [
            {
                "title": "'"$title"'",
                "description": "'"$description"'"
            }
        ]
    }'
    
    # Save JSON payload to a file
    echo "$json_payload" > temp_payload.json
    
    # Send to Discord
    curl -H "Content-Type: application/json" -X POST -d @"temp_payload.json" "$webhook_url"
    
    # Cleanup temp file
    rm temp_payload.json
}

# Function to send an image to Discord
send_image() {
    title="$1"
    url="$2"
    
    # Download image
    curl -o temp.gif "$url"
    
    # Send image to Discord
    send_to_discord "temp.gif" "$title"
    
    # Cleanup temp file
    rm temp.gif
}

# Function to send a message to Discord with file attachment
send_to_discord() {
    gif_file="$1"
    title="$2"
    
    curl -X POST -H "Content-Type: multipart/form-data" -F "file=@$gif_file" -F "content=$title" "$webhook_url"
}

# Send current date and time to Discord in its own embed
current_date_time=$(date +"%Y-%m-%d %H:%M:%S")
send_embed "Date and Time" "Current Date and Time: $current_date_time"
wait
# Send images and titles as separate embeds
send_embed "Current Weather Active at 0700 EST" ""
send_image " " "https://www.wpc.ncep.noaa.gov/noaa/noaad1.gif"
wait
send_embed "Tomorrow's Weather" ""
send_image " " "https://www.wpc.ncep.noaa.gov/noaa/noaad2.gif"
wait
send_embed "Weather Forecast for 3 Days" ""
send_image " " "https://www.wpc.ncep.noaa.gov/noaa/noaad3.gif"

