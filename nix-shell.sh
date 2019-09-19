#!/usr/bin/env bash

set -xe

HERE="$(realpath "$(dirname "$0")")"

pushd "${HERE}"
nix-shell --show-trace
popd
