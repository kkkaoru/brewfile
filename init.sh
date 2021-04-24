#!/bin/bash

SCRIPT_DIRECTORY=$(cd $(dirname $0); pwd)

if [ ! -L ~/Brewfile ]; then
  echo "${HOME}/Brewfile is not symbolic link."
  echo "Remove ${HOME}/Brewfile."
  rm ${HOME}/Brewfile
else
  echo "${HOME}/Brewfile is symbolic link."
fi

echo "Init symbolic link."

ln -snfv ${SCRIPT_DIRECTORY}/Brewfile ${HOME}/Brewfile
