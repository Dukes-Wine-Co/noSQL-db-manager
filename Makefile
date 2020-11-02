SHELL := /bin/bash
.DEFAULT_GOAL := help

help:
	@echo "Help command needs to be written";

test:
	@echo "Test command needs to be written";

install:
	@sh src/docker-commands.sh install;

run-mongo-server:
	@sh src/docker-commands.sh createDataDirectory;
	@sh src/docker-commands.sh runMongoImage;

stop-mongo-server:
	@sh src/docker-commands.sh stopMongoServer;

test-make-file:
	@sh src/docker-commands.sh testMakeCommand;