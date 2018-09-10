
app(){
  mkdir $1
  cd ./$1
  mkdir public

  cd public
  touch index.html
	echo "<!DOCTYPE html>
	<html>
	  <head>
	    <meta charset='utf-8'>
	    <title>$name</title>
			<script src='scripts/client.js'></script>
	  </head>
	  <body>
	  </body>
	</html>" > index.html
  mkdir scripts
  cd ./scripts
  touch client.js

  cd ../..
  touch server.js
  npm init --yes
  npm i express --s

  echo '{"esversion": 6}' > .jshintrc

  echo "
  const express = require('express');
  const app = express();
  const PORT = 8080;

  app.use(express.static('public'));
  app.listen(PORT, () => console.log('listening on channel ', PORT));
  " > server.js

  echo "node_modules" > .gitignore
}
