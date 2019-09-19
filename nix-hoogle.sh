#!/usr/bin/env bash

set -xe

HERE="$(realpath "$(dirname "$0")")"

pushd "${HERE}"
nix-shell --pure --run "hoogle server --host='*' --https --cert=nix/hoogle-tls/cert.pem --key=nix/hoogle-tls/privkey.pem --port=8443 --local"
popd
