{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  packages = [
    pkgs.easyeda2kicad
    pkgs.kicad
  ];

  shellHook = ''
    REPO_DIR="$(git rev-parse --show-toplevel 2>/dev/null || echo "$PWD")"
    easyeda2kicad() {
      command easyeda2kicad --project-relative "$@"
    }
    alias easyeda="easyeda2kicad --full --project-relative --output \"\$REPO_DIR/easyeda\" --lcsc_id"
    
    echo "================================================="
    echo " KiCad Assets Nix Environment"
    echo " Quick command: easyeda <LCSC_ID> [LCSC_ID ...]"
    echo " Example:       easyeda C2040"
    echo "================================================="
  '';
}
