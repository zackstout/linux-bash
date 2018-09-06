#!/bin/bash

cd ~/prime/nextsteps/node-shakespeare/server/public/csvs/
echo $(ls)
# echo $(cat Othello.csv)

# Main issue is that there are other commas in the file...
# echo $(awk -F"," ' { print $1 } ' ./Othello.csv)

# Thanks https://unix.stackexchange.com/questions/22273/how-to-use-regex-as-field-separator-in-awk?rq=1:
# echo $(awk -F'[0-9]\.[0-9]\.[0-9]*' ' { print $1,$3 } ' ./Othello.csv)

# Saving text to a file:
# echo "$(awk -F'[0-9]\.[0-9]\.[0-9]*' ' { print $3 } ' ./Othello.csv)" > ~/prime/july_on/bash_scripts/Othello.txt

# *** Had to add double quotes to get new lines to render: ***
echo "$(awk -F'[0-9]\.[0-9]\.[0-9]*' ' { print $3 } ' ./Othello.csv)"
# Hmm, not sure why we're missing the first 50 lines..
