#!/bin/bash

devinit () {

  git init

  echo "node_modules" > .gitignore
  echo "npm-debug.log" >> .gitignore
  echo "dist" >> .gitignore
  echo "test" >> .gitignore

  echo "# ${PWD##*/}" > README.md

  mkdir test src

  npm init --yes

  git add .

  if [ "$1" = "app" ]
  then
    wget https://raw.githubusercontent.com/yhor1e/dotfiles/master/.editorconfig -nv
    wget https://raw.githubusercontent.com/yhor1e/dotfiles/master/.eslintrc.json -nv
    wget https://raw.githubusercontent.com/yhor1e/dotfiles/master/.stylelintrc -nv
    wget https://raw.githubusercontent.com/yhor1e/dotfiles/master/.prettierrc -nv
    echo "app devenv created"
    return
  fi

  echo "simple devenv created"
}
