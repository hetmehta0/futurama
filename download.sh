#!/bin/bash

# Read each line in the text file
while IFS= read -r url; do
	file_name=$(basename "$url")
	download_path="./data"
	# Set the full path for the downloaded file
	download_file="$download_path/$file_name.json"
	# Perform a GET request using curl and save the response to a file
	curl -o "$download_file" "$url"
done < "futuramaUrls.txt"

