#!/usr/bin/env ./test/libs/bats/bin/bats

load 'libs/bats-support/load'
load 'libs/bats-assert/load'

@test "pullDockerImage: pulls the right mongo image" {
    local expected_cmd="pull mongo"
    source src/docker-commands.sh;
    function docker() { echo "running docker ${*}"; }
    export -f docker
    run pullDockerImage
    unset docker
    assert_output -p "running docker ${expected_cmd}"

}

@test "createDataDirectory" {
  skip
}

@test "runMongoImage" {
  skip
}

@test "stopMongoServer" {
  skip
}

@test "install" {
  skip
}
