#!/usr/bin/env bash

DATA_DIRECTORY="mongodata";

pullDockerImage(){
  docker pull mongo;
}

createDataDirectory(){
  if [ ! -d "/$DATA_DIRECTORY" ]; then
      mkdir -p "/$DATA_DIRECTORY";
  fi
}

runMongoImage(){
  docker run -it -v "$DATA_DIRECTORY":/data/db --name mongodb -d mongo;
}

stopMongoServer(){
  docker stop mongodb;
}

#pull docker image
install(){
  pullDockerImage;
  createDataDirectory;
}

"$@"