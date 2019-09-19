#!/usr/bin/env zsh

HERE="$(realpath "$(dirname "$0")")"

pushd "${HERE}"

cmds="graphmod src-lib  -p --no-module-in-cluster  --colors=1 | dot -Tsvg  > ModuleGraph-lib.svg \
 && graphmod src-main -i src-lib -p --no-module-in-cluster --colors=0 | dot -Tsvg  > ModuleGraph-main.svg \
 && graphmod src-lib src-simulator -p --no-module-in-cluster --colors=3 | dot -Tsvg  > ModuleGraph-simulator.svg \
 && graphmod src-test -i src-main -i src-lib -p --no-module-in-cluster --colors=4 | dot -Tsvg  > ModuleGraph-tests.svg"

nix-shell --run "${cmds}"
popd
