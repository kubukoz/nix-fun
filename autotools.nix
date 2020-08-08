pkgs: attrs:
with pkgs;
let
  defaultAttrs = {
    builder = "${bash}/bin/bash";
    args = [ ./builder.sh ];
    buildInputs = [
      gnutar
      gzip
      gnumake
      coreutils
      gawk
      gnused
      gnugrep
      clang
      clang.bintools.bintools_bin
    ];
    system = builtins.currentSystem;
  };
in derivation (defaultAttrs // attrs)
