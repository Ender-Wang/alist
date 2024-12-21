#!/bin/bash

# URL of the latest release tar.gz file
URL="https://github.com/xhofe/alist/releases/latest/download/alist-darwin-arm64.tar.gz"

BASE_DIR="/Users/enderwang/alist"

# Output file name
OUTPUT="$BASE_DIR/alist-darwin-arm64.tar.gz"

# Download the latest release
echo "Downloading the latest release from $URL..."
curl -L -o $OUTPUT $URL

# Check if the download was successful
if [ $? -ne 0 ]; then
    echo "Failed to download the file."
    exit 1
fi

rm $BASE_DIR/alist

# Unzip the downloaded file
echo "Unzipping $OUTPUT..."
tar -xvzf $OUTPUT -C $BASE_DIR

# Check if the extraction was successful
if [ $? -ne 0 ]; then
    echo "Failed to unzip the file."
    exit 1
fi

# Clean up by removing the downloaded tar.gz file
rm $OUTPUT

echo "Download and extraction complete."

$BASE_DIR/alist restart