{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  packages = [
    pkgs.easyeda2kicad
    pkgs.kicad
  ];

  shellHook = ''
    # Convenience alias: simply run `easyeda C2040` (or multiple IDs)
    alias easyeda='easyeda2kicad --full --output "$PWD/symbols/easyeda_symbols.kicad_sym" --lcsc_id'
    
    echo "================================================="
    echo " KiCad Assets Nix Environment"
    echo " Quick command: easyeda <LCSC_ID> [LCSC_ID ...]"
    echo " Example:       easyeda C2040"
    echo "================================================="
  '';
}
