#!/usr/bin/env zsh
#
# Check for unused code, unused exported functions/types and unused dependencies.
#

set -xe

HERE="$(realpath "$(dirname "$0")")"

pushd "${HERE}"
nix-shell --run "stack build && stack test && weeder . -q"
popd
