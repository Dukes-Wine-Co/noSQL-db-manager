#!/usr/bin/env bash

DATA_DIRECTORY_PATH="$HOME/mongodata";

pullDockerImage(){
  docker pull mongo;
}

createDataDirectory(){
  if [ ! -d "$DATA_DIRECTORY_PATH" ]; then
      mkdir -p "$DATA_DIRECTORY_PATH";
  fi
}

runMongoImage(){
  # shellcheck disable=SC2143
  if [ "$(docker ps -a | grep mongodb)" ];
   then
     docker restart mongodb
   else
     docker run -it -v "$DATA_DIRECTORY_PATH":/data/db -p 27017:27017 --name mongodb -d mongo;
  fi
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