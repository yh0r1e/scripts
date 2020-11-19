#!/bin/bash

devinit () {

  git init

  echo "node_modules" > .gitignore
  echo "npm-debug.log" >> .gitignore
  echo "dist" >> .gitignore
  echo "test" >> .gitignore

  echo "# ${PWD##*/}" > README.md

  if [ "$1" = "app" ]
  then
    npm init --yes
    mkdir test src
    wget https://raw.githubusercontent.com/yhor1e/dotfiles/master/.editorconfig -nv
    wget https://raw.githubusercontent.com/yhor1e/dotfiles/master/.eslintrc.json -nv
    wget https://raw.githubusercontent.com/yhor1e/dotfiles/master/.stylelintrc -nv
    wget https://raw.githubusercontent.com/yhor1e/dotfiles/master/.prettierrc -nv
    git add .
    echo "app devenv created"
    return
  elif [ "$1" = "react" ]
  then
    mkdir src
    wget https://raw.githubusercontent.com/yhor1e/minimal-react-webpack/master/package.json -nv
    wget https://raw.githubusercontent.com/yhor1e/minimal-react-webpack/master/package-lock.json -nv
    wget https://raw.githubusercontent.com/yhor1e/minimal-react-webpack/master/.babelrc -nv
    wget https://raw.githubusercontent.com/yhor1e/minimal-react-webpack/master/.editorconfig -nv
    wget https://raw.githubusercontent.com/yhor1e/minimal-react-webpack/master/.eslintrc.json -nv
    wget https://raw.githubusercontent.com/yhor1e/minimal-react-webpack/master/.prettierrc -nv
    wget https://raw.githubusercontent.com/yhor1e/minimal-react-webpack/master/.stylelintrc -nv
    wget https://raw.githubusercontent.com/yhor1e/minimal-react-webpack/master/webpack.config.js -nv
    wget https://raw.githubusercontent.com/yhor1e/minimal-react-webpack/master/index.html -nv
    wget -P src https://raw.githubusercontent.com/yhor1e/minimal-react-webpack/master/src/index.js -nv
    wget -P src https://raw.githubusercontent.com/yhor1e/minimal-react-webpack/master/src/App.js -nv
    wget -P src https://raw.githubusercontent.com/yhor1e/minimal-react-webpack/master/src/style.css -nv
    git add .
    echo "app devenv created"
    return
  fi

  git add .
  echo "simple devenv created"
}
