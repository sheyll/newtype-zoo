#! /usr/bin/env zsh

set -xe

HERE="$(realpath "$(dirname "$0")")"

pushd "${HERE}"
nix-build --show-trace
popd
