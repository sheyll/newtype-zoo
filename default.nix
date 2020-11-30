{ pkgs ? import ./nix/pkgs.nix { }
, withProfiling ? false
}:
pkgs.haskell-nix.project {
  src = pkgs.haskell-nix.haskellLib.cleanGit {
    name = "newtype-zoo";
    src = ./.;
  };
  projectFileName = "cabal.project";
  compiler-nix-name = "ghc8102";
  pkg-def-extras = [ ];
  modules =
    [{
      packages.newtype-zoo.doCheck = false;
      packages.newtype-zoo.components.library.doCoverage = true;
    }] ++
    (if withProfiling then
      [{
        packages.newtype-zoo.package.ghcOptions = "-fprof-auto";
        packages.newtype-zoo.components.library.enableLibraryProfiling = true;
      }]
    else [ ])
  ;
}

