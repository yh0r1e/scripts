#!/bin/bash

devinit () {

  git init

  echo "node_modules" > .gitignore
  echo "npm-debug.log" >> .gitignore
  echo "dist" >> .gitignore
  echo "test" >> .gitignore

  echo "#${PWD##*/}" > README.md

  mkdir test src

  npm init --yes

  git add .

  if [ "$1" = "app" ]
  then
    wget https://raw.githubusercontent.com/yh0r1e/dotfiles/master/.editorconfig -nv
    wget https://raw.githubusercontent.com/yh0r1e/dotfiles/master/.eslintrc -nv
    wget https://raw.githubusercontent.com/yh0r1e/dotfiles/master/.htmlhintrc -nv
    wget https://raw.githubusercontent.com/yh0r1e/dotfiles/master/.stylelintrc -nv
    echo "app devenv created"
    return
  fi

  echo "simple devenv created"
}
