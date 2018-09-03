
#!/bin/bash
# Thanks youtube
cdp(){
  TEMP_PWD='pwd'
  while ![-d .git]; do
    cd ..
  done
  OLDPWD=$TEMP_PWD # Allows cd - to take you back to the directory you started in.
}
