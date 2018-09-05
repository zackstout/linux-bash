#!/bin/bash

# Not working yet:
mss(){
  for file in ~/Desktop/Screen*.png; do
		# echo $file
    mv $file ~/Desktop/Screenshots/$file
  done
}

# Try find... -exec ..
