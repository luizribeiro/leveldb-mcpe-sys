{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    # dependencies
    cargo
    rust-bindgen
    rustc

    # tools for development
    rls
    rustfmt
  ];
}
