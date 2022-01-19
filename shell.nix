{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    # dependencies
    cargo
    rustc

    # tools for development
    rls
    rustfmt
  ];
}
