#!/usr/bin/env bash
source barable.sh
# Run via  /usr/bin/env bash usage-examples.sh

# Mock processing 500 files
echo -e "\nStarting progress bar mock..."
tput civis # hide cursor
for ((i=0; i<500; i++)); do
        makeBar "$i" 500
        sleep .001
done
tput cnorm # show cursor

# Example single call mock
echo -e "\n\nSingle call\n$(makeBar 40 100)";