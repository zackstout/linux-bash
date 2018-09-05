#!/bin/bash

# Thanks to https://www.youtube.com/watch?v=OecFFZpIkDc:

cd ~/prime/nextsteps/node-shakespeare/server/public/csvs/
echo $(ls)
# echo $(cat Othello.csv)

# Copy old Input File Separator:
OLDIFS=$IFS
# IFS='[0-9]\.[0-9]\.[0-9]*'
IFS=','

while read id lineno text speaker
  do
    # -e allows for backslash escapes
    # NOTE: On mac, must use \x1B instead of \e. \033 should be universal.
    echo -e "\x1B[1;33m$speaker \
    ===============================\x1B[0m\n\
    LineNo: \t $lineno\n\
    Line: \t $text\n"
  done < Othello.csv # We don't pass in the file until the end


IFS=$OLDIFS
