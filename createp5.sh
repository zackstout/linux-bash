
#!/bin/bash
# Create a p5 project with index, scripts/draw, vendors/p5 etc.

# This is a function that should live in ~/.bashrc:
# Yes! We have added it, and it works!
# Next steps are to add boilerplate html and js code.

mp5(){
  name=$1
  mkdir $name
  cd $name
  touch index.html
  mkdir scripts
  mkdir vendors
  cp ~/vendors/p5/p5.min.js /vendors/p5.min.js
  cp ~/vendors/p5/p5.dom.js /vendors/p5.dom.js
  cd scripts
  touch draw.js
}
