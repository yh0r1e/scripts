#!/bin/bash

mkdev () {

  local workDir="${HOME}/work"

  if [ ! -n "$1" ]
  then
    echo "Usage: mkdev dir-name"
    return
  fi

  dirName=$1
  devPath="${workDir}/${dirName}"

  mkdir -p ${devPath}
  cd ${devPath}

  echo "md & cd ${devPath}"
}
