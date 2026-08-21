{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  packages = [
    pkgs.easyeda2kicad
    pkgs.kicad
  ];
}
