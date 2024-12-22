# Update Alist

One-click update alist binary to latest version, change `BASE_DIR` to be the directory where you want to store the binary file.

## Usage

1. change the download zip to your system arch in `URL` and `OUTPUT`(optional) such as `alist-darwin-arm64.tar.gz` for Apple Silicon mac.
2. Setup crontab to run the script every Sunday at 12:00 AM and same execution log to file.

    ```bash
    0 12 * * 0 /bin/bash /path/to/update_alist.sh >> /path/to/update_alist.log 2>&1
    ```

## Example

The log should look like this:

```bash
Downloading the latest release from https://github.com/xhofe/alist/releases/latest/download/alist-darwin-arm64.tar.gz...
% Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                Dload  Upload   Total   Spent    Left  Speed

0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0

0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0

0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0

  0 27.0M    0  8259    0     0   6836      0  1:09:10  0:00:01  1:09:09  6836
 85 27.0M   85 23.0M    0     0  10.5M      0  0:00:02  0:00:02 --:--:-- 23.5M
100 27.0M  100 27.0M    0     0  11.6M      0  0:00:02  0:00:02 --:--:-- 24.4M
Unzipping /Users/enderwang/alist/alist-darwin-arm64.tar.gz...
x alist
Download and extraction complete.
[36mINFO[0m[2024-12-22 15:00:03] killed process: 29288                        
[36mINFO[0m[2024-12-22 15:00:03] success start pid: 80756
```
