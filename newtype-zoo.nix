let
  pkgs = import ./nix/pkgs.nix;
    # cabal generates some directories and files that confuse nix
    # ignore them
  project-sources = pkgs.lib.cleanSourceWith {
      filter = (path: type:
        let base = baseNameOf (toString path);
        in !(pkgs.lib.hasPrefix ".ghc.environment." base) &&
          !(pkgs.lib.hasSuffix ".nix" base)
      );
      src = pkgs.lib.cleanSource ./.;
   };

in pkgs.haskellPackages.callCabal2nix "newtype-zoo"  project-sources {  }
