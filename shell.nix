let thisProject = import ./default.nix;
    pkgs        = import ./nix/pkgs.nix;
in
pkgs.haskellPackages.shellFor {
      packages = p: [thisProject];
      withHoogle = true;
      buildInputs = with pkgs.haskellPackages;
                    [ pkgs.cabal-install
                      pkgs.cabal2nix
                      pkgs.erlang
                      ghcid
                      hoogle
                      pointfree
                      graphmod
                      cabal-plan
                      # brittany
                      weeder
                      pkgs.stack
                      pkgs.nix
                      pkgs.graphviz-nox
                    ];
      }
