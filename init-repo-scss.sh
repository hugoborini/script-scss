#bin/bash

npm init -y

touch .gitignore

echo "/node_modules
/dist
/.cache
/.DS_Store
/init-repo-scss.sh " > .gitignore

npm install parcel-bundler --save-dev


mkdir src
touch src/index.html
echo "<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset='UTF-8' />
    <meta name='viewport' content='width=device-width, initial-scale=1.0' />
    <meta http-equiv='X-UA-Compatible' content='ie=edge' />
    <title>Document</title>
    <link rel='stylesheet' href='style/style.scss'>
  </head>
  <body> <h1>initialiser a l'aide du script</h1>
  <script src='js/app.js'></script>
  </body>
</html>
" > src/index.html
mkdir src/style
touch src/style/style.scss
mkdir src/js
touch src/js/app.js
sed -i '7i\ "dev": "parcel src/index.html",\n' package.json
sed -i '8i\ "build": "parcel build src/index.html",\n' package.json
