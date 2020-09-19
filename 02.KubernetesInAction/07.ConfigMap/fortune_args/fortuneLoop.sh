#!/bin/bash
trap "exit" SIGINT

DEFAULT_INTERVAL=10
INTERVAL=${1:-${DEFAULT_INTERVAL}};

if [[ ! "${INTERVAL}" =~ ^[0-9]+$ ]]
then
  echo "$(date) Command Argument must be positive number!";
  INTERVAL="${DEFAULT_INTERVAL}";
fi

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
  sleep ${INTERVAL};
done
