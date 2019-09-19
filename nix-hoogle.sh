#!/usr/bin/env bash

set -xe

HERE="$(realpath "$(dirname "$0")")"

pushd "${HERE}"
nix-shell --pure --run "hoogle server --host='*' --https --cert=nix/cert.pem --key=nix/privkey.pem --port=8443 --local"
popd
