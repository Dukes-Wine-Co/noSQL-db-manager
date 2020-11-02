# Outline
- [Description](#description)
- [How to set up](#how-to-set-up)
- [How to run](#how-to-run)
- [How to run tests](#how-to-run-tests)

# Description

# How to set up
Prior to the first time that the server is mongo server is started, you'll need to download dependencies by running `make install`.

# How to run
You can run the mongo server by running `make run-mongo-server`.

# How to run tests
We're using the Bash Automated Testing System (BATS) to test the bash scripts in this library. Each bats file needs to include the following header. 

```bash
#!/usr/bin/env ./test/libs/bats/bin/bats

load 'libs/bats-support/load'
load 'libs/bats-assert/load'
```