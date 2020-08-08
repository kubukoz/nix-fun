let
  pkgs = (import <nixpkgs> { });
  args = {
    name = "hello";
    src = ./hello-2.10.tar.gz;
  };
in import ./autotools.nix pkgs args
