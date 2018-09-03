
#!/bin/bash
# Say hello world!
# To run this, type "./hello.sh"
# Also need to chmod 755 to let us execute.

# Type env in the terminal to see list of available variables.

echo hey here are your files!
ls
echo Love, bash

# Use $() to store the result of a script's execution inside a variable:
files=$(ls)
echo Your files are $files.

# Double quotes allows for variable substitution:
name=Zack
greeting="Hello $name"
echo $greeting
echo # For an empty line

# Arithmetic:
a=$(( 4 + 5 ))
echo a is $a.

num=$( ls /etc | wc -l )
echo There are $num items in our /etc directory.

# Command line args:
echo This script is called $0, and it has been given $# command line args. They are: $*.
# In addition to CLAs, we can read input from the user, or accept data from STDIN.


# Not sure why this wouldn't work in other order...Maybe we can't use "<" ? Ahhh yes, you use -gt!!!
if [ $# = 0 ]
then
  echo No file specified.
else
  # Variable assignments can't have spaces:
  lines=`cat $1 | wc -l`
  echo There are $lines lines in the file $1.
fi

echo All done!



# To create a function:
getSum(){
  local num1=$1
  local num2=$2
  local sum=$((num1 + num2))
  echo $sum
}

num1=5
num2=10
sum=$(getSum num1 num2)
