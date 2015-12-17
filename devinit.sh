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
    wget https://github.com/yh0r1e/dotfiles/blob/master/.editorconfig -nv
    wget https://github.com/yh0r1e/dotfiles/blob/master/.eslintrc -nv
    wget https://github.com/yh0r1e/dotfiles/blob/master/.htmlhintrc -nv
    wget https://github.com/yh0r1e/dotfiles/blob/master/.textlintrc -nv
    echo "app devenv created"
    return
  fi

  echo "simple devenv created"
}
