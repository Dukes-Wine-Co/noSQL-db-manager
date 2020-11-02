#!/usr/bin/env ./test/libs/bats/bin/bats

load 'libs/bats-support/load'
load 'libs/bats-assert/load'

@test "creates '/mongodata' directory if it doesn't exist" {
    local expected_created_dir="/mongodata"
    source src/docker-commands.sh;
    function mkdir() { echo "running mkdir ${*}"; }
    export -f mkdir
    run createDataDirectory
    unset mkdir
    assert_output -p "running mkdir -p ${expected_created_dir}"
}