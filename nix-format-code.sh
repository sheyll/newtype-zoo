#!/usr/bin/env zsh

set -xe

HERE="$(realpath "$(dirname "$0")")"

pushd "${HERE}"
nix-shell --run "brittany --write-mode=inplace \$( find ./ -name '*.hs' )"
popd
