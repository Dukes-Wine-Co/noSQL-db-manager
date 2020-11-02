# How to run tests
We're using the Bash Automated Testing System (BATS) to test the bash scripts in this library. Each bats file needs to include the following header. 

```bash
#!/usr/bin/env ./test/libs/bats/bin/bats

load 'libs/bats-support/load'
load 'libs/bats-assert/load'
```