#!/bin/bash

# The problem is they are inside multiple levels of <>s:
echo "$(curl http://www.personal.utulsa.edu/~marc-carlson/history/clam.html | awk -F"<" ' { print $1 } ')"
