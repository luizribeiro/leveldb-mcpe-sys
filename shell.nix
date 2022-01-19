{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    # dependencies
    cargo
    cmake
    rust-bindgen
    rustc
    zlib

    # tools for development
    rls
    rustfmt
  ];
}
