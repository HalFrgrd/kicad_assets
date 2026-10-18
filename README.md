# KiCad Assets Library (`kicad_assets`)

Shared KiCad symbols, footprints, and 3D models used across hardware projects.

## Initializing project

Notice that `datasheets/` points to a private repository (`HalFrgrd/kicad_datasheets`) because manufacturer PDF datasheets cannot be redistributed publicly.

In `.gitmodules`, `datasheets` is configured with **`update = none`**, so standard recursive submodule commands **automatically skip `datasheets`** and only fetch the public submodules (`kicad_assets` and `slickbug`):

```bash
# Clone a parent project (e.g. smart_watch) and all public submodules:
git clone --recurse-submodules https://github.com/HalFrgrd/smart_watch.git

# Or inside an existing clone:
git submodule update --init --recursive
```

To pull the private `datasheets` submodule:
```bash
git submodule update --init --checkout datasheets
```

---

## Adding New LCSC / EasyEDA Parts (Nix Shell)

A `shell.nix` environment is included with `easyeda2kicad` preconfigured to output project-relative (`${KIPRJMOD}`) 3D model paths:

```bash
nix-shell
easyeda C2040
```

---

## License & Attribution

* **Original Content (`halfr.*`, scripts):** Licensed under the [MIT License](LICENSE). Using these symbols, footprints, or 3D models in a PCB design does not impose any license restrictions on your PCB layout or manufactured hardware.
* **Submodule [`slickbug/`](https://github.com/HalFrgrd/slickbug):** Licensed under the MIT License (`slickbug/LICENSE`).
* **Third-Party Libraries (`third_party/`):**
  * [`third_party/keyswitches.pretty`](https://github.com/perigoso/keyswitches.pretty) by *perigoso* — licensed under [CC-BY-SA-4.0](third_party/keyswitches.pretty/LICENSE.md).
  * [`third_party/Seeed-Studio`](https://github.com/Seeed-Studio/OPL_Kicad_Library) by *Seeed Studio* — licensed under [CC-BY-SA-4.0](third_party/Seeed-Studio/LICENSE).
* **Imported Component Libraries (`easyeda.*`) & Vendor 3D Models:** Generated from LCSC/EasyEDA component data via `easyeda2kicad` or provided by component manufacturers for PCB layout and CAD integration. Respective manufacturer copyrights and trademarks apply.
