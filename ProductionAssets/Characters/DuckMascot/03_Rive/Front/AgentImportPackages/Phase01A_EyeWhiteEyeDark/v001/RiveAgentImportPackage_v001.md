# Rive Agent Import Package v001

Prototype: **Phase 01A — Front EyeWhite / EyeDark Motion Validation**

Status: **SUPERSEDED BEFORE EXECUTION — CLIP MASK INHERITANCE ERROR — NO RIVE OPERATION OCCURRED**

This package must not be executed. Its hierarchy incorrectly places each diagnostic ClipMask inside the moving EyeDark Group. It is retained as historical evidence only and is superseded by v001.1.

This package is a controlled handoff to the Rive built-in Agent. Codex must not operate the Rive UI.

## Native registration

- Artboard: 360 × 450
- coordinates: top-left
- SVG viewBox: `0 0 360 450`
- SVG placement: native coordinates, identity transform
- EyeDark PNG placement: `(0,0)` at full 360 × 450
- no scaling, centering, mirroring, cleanup, or path optimization

## Local hierarchy and draw order

Back to front:

```text
EyeWhite_L
EyeWhite_R
EyeDark_L_Group
  EyeDark_L_Raster
  EyeDark_L_ClipMask
EyeDark_R_Group
  EyeDark_R_Raster
  EyeDark_R_ClipMask
```

`EyeDark_*_ClipMask` is a diagnostic mask instance derived exactly from the matching approved EyeWhite Shape. It receives no independent geometry authority. EyeDark raster and diagnostic mask must move together inside their matching Group.

Left and Right remain independent. Neither may be mirrored.

## Clipping and motion contract

The visible clipping boundaries are the approved EyeWhite Production Shapes. Test only Neutral and the eight offsets in the manifest. Zero background leak and zero raster/mask drift are required.

## Authority note

- R-01 is included in EyeWhite_R Shape support.
- Ownership R-02 `(242,183)` remains excluded from source-visible ownership.
- R-02 may lie inside the solid backing only as Production Construction.
- No concealed RGB is supplied or authorized.

This package does not authorize a Production Rive hierarchy, final Pivot, Rig, State Machine, animation, EyeDark production mask authority, eyelids, or expression construction.
