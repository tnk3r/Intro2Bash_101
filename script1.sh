#!/bin/bash

todaysDate="$(date +%Y%m%d)"
log="log_$todaysDate"

echo "Todays Date is: $todaysDate" > "$todaysDate"/"$log".txt

dailyFolders=( "audio" "ARRIRAW" "md5s" "cdls" )

echo "${dailyFolders[@]}"
echo "Number of Elements: ${#dailyFolders[@]}"

for folder in "${dailyFolders[@]}"
        do
            if [ -d "$todaysDate"/"$folder" ]; then
                    echo "Todays Folders have already been created." >> "$todaysDate"/"$log".txt
            else
                    mkdir -p "$todaysDate"/"$folder"
                    echo "Folder was created: $folder" >> "$todaysDate"/"$log".txt
            fi
done

exit


