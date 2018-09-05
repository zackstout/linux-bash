
#!/bin/bash
# Create a p5 project with index, scripts/draw, vendors/p5 etc.

# This is a function that should live in ~/.bashrc (no, in fact, ~/.bash_profile):
# Yes! We have added it, and it works!
# Next steps are to add boilerplate html and js code.

mp5(){
  name=$1
  mkdir $name
  cd ./$name
  touch index.html
	echo "<!DOCTYPE html>
	<html>
	  <head>
	    <meta charset='utf-8'>
	    <title>$name</title>
			<script src='vendors/p5.min.js'></script>
			<script src='vendors/p5.dom.js'></script>
			<script src='scripts/draw.js'></script>
	  </head>
	  <body>
	  </body>
	</html>" > index.html
  mkdir scripts
  mkdir vendors
  cp ~/vendors/p5/p5.min.js ./vendors/p5.min.js
  cp ~/vendors/p5/p5.dom.js ./vendors/p5.dom.js
  cd ./scripts
  touch draw.js
	echo "function setup() {
		createCanvas(400, 400);
		background(200);
	}

	function draw() {

	}" > draw.js
	cd ./.. # Will end up in the main directory you just created
}
