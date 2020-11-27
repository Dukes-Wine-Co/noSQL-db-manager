# Outline
- [Description](#description)
- [How to set up](#how-to-set-up)
    - [Prerequisites](#prerequisites)
- [How to run](#how-to-run)
- [How to run tests](#how-to-run-tests)

# Description
This repo allows us to configure and manage our no sql database across multiple machines. Running this application will download and scaffold the application sans the data in the database.

# How to set up
Please read through the [Prerequisites](#prerequisites) section to confirm that you have the right tools installed for this application. Prior to the first time the mongo server is started, you'll need to download some dependencies by running `make install`. 

## Prerequisites
You'll need to have the following tools installed on your machine in order to run this application as intended:
- [Docker](https://docs.docker.com/get-docker/)
- [Make](https://www.gnu.org/software/make/)

# How to run
You can run the mongo server by running `make run-mongo-server`.

# How to run tests
We're using the [Bash Automated Testing System (BATS)](https://github.com/sstephenson/bats) to test the bash scripts in this library. Each bats file needs to include the following header. 

```bash
#!/usr/bin/env ./test/libs/bats/bin/bats

load 'libs/bats-support/load'
load 'libs/bats-assert/load'
```