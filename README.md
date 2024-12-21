# Update Alist

One-click update alist binary to latest version, change `BASE_DIR` to be the directory where you want to store the binary file.

## Usage

1. change the download zip to your system arch in `URL` and `OUTPUT`(optional) such as `alist-darwin-arm64.tar.gz` for Apple Silicon mac.
2. Setup crontab to run the script every Sunday at 12:00 AM and same execution log to file.

    ```bash
    0 12 * * 0 /bin/bash /path/to/update_alist.sh >> /path/to/update_alist.log 2>&1
    ```
