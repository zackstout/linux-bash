
#!/bin/bash

# To delete all double quotes and leading commas:
echo "$(cat Othello.txt | tr -d '"' | tr -d '\^,\')" > Othello2.txt

# What are the diffs between tr and sed?
