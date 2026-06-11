let
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/bd0ff2d3eac24699c3664d5966b9ef36f388e2ca.tar.gz") {};
in pkgs.callPackage (
  {
    mkShell,
    ghc,
    cabal-install,
    haskell-language-server,
    ghcid,
  }:
  mkShell {
    strictDeps = true;
    packages = [
      haskell-language-server
      ghcid
    ];
    nativeBuildInputs = [
      ghc
      cabal-install
    ];
  }
) {}
