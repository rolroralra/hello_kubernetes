#!/bin/bash

trap "exit" SIGINT

OUTPUT_DIR="/var/htdocs";
#OUTPUT_DIR=".";
OUTPUT="${OUTPUT_DIR}/index.html";

if [ ! -d ${OUTPUT_DIR} ]
then
  mkdir -p ${OUTPUT_DIR}
fi

while true;
do
  echo "$(date) Writing fortune to ${OUTPUT}";
  /usr/games/fortune > ${OUTPUT};
  sleep 10;
done
