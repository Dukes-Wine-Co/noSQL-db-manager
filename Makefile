SHELL := /bin/bash
.DEFAULT_GOAL := help

install:
	@sh src/docker-commands.sh install;

run-mongo-server:
	@sh src/docker-commands.sh createDataDirectory;
	@sh src/docker-commands.sh runMongoImage;

stop-mongo-server:
	@sh src/docker-commands.sh stopMongoServer;

test-make-file:
	@sh src/docker-commands.sh testMakeCommand;

test-sign:
	@echo "in here"