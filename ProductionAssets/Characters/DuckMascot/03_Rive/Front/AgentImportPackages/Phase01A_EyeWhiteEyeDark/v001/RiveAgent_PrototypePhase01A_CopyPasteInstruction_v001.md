# Copy-paste instruction — Rive Agent Prototype Phase 01A

**DO NOT EXECUTE — SUPERSEDED BEFORE EXECUTION — CLIP MASK INHERITANCE ERROR**

This historical instruction incorrectly makes the ClipMask inherit EyeDark diagnostic translation. Use v001.1 instead. No Rive operation occurred from this instruction.

Use the Rive built-in Agent to execute this instruction. Do not interpret this as authorization for manual Codex GUI operation.

---

Create or open a clean prototype Artboard named `DuckFront_EyePrototype_01A` at exactly 360 × 450 pixels using top-left native coordinates. Do not scale, center, mirror, optimize, simplify, or redraw imported content.

Import these files from this package:

- `EyeWhite_L_ProductionShapeAuthority_v001.svg`
- `EyeWhite_R_ProductionShapeAuthority_v001.svg`
- `EyeDark_L_Neutral_MethodC_Candidate_v002.png`
- `EyeDark_R_Neutral_MethodC_Candidate_v002.png`

Create and preserve these exact names:

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

Place both EyeWhite vector Shapes at their native SVG coordinates with identity transforms. Place both 360 × 450 EyeDark raster carriers at x=0, y=0. Keep Left and Right independent; do not mirror either eye.

Render `EyeWhite_L` and `EyeWhite_R` as the backing Shapes. Put each EyeDark raster above its matching EyeWhite. Create `EyeDark_L_ClipMask` and `EyeDark_R_ClipMask` only as temporary diagnostic clipping instances copied exactly from the corresponding approved EyeWhite Shape. Do not edit their geometry. Place each raster and its temporary clip mask inside the matching EyeDark Group so they move together without texture-mask drift.

Use the EyeWhite Shapes as the visible clipping boundaries for their EyeDark groups.

Test only these diagnostic positions for each EyeDark Group:

- Neutral `(0,0)`
- `(-2,0)`
- `(+2,0)`
- `(0,-2)`
- `(0,+2)`
- `(-2,-2)`
- `(-2,+2)`
- `(+2,-2)`
- `(+2,+2)`

Apply each translation temporarily, capture its requested screenshot and verification, then return the Group to Neutral before testing the next position. Do not create a Timeline, Animation, or State Machine to store these positions. These are diagnostic translations only. Do not authorize or construct larger motion.

Do not create Blink, eyelids, State Machine, bones, mesh, final pivots, expression system, production animation, Head underpaint, Beak, Brows, Cheeks, or any production-authority Rive structure.

Do not modify the imported EyeWhite geometry. Preserve ten nodes and ten cubic segments per eye, complete solid backing topology, no EyeDark-shaped hole, Left/Right independence, and native registration.

Authority note: R-01 is included. Deferred ownership R-02 `(242,183)` remains excluded from source-visible ownership; if it lies inside the solid backing it is Production Construction only, not recovered appearance.

Stop after the diagnostic prototype is complete. Return:

1. expanded Artboard hierarchy screenshot;
2. Neutral screenshot;
3. eight motion-position screenshots;
4. clipping verification for both eyes at all nine states;
5. exact layer-name verification;
6. confirmation that no background leak occurs;
7. confirmation that no EyeDark texture-mask drift occurs;
8. confirmation that no prohibited object or system was created;
9. anomaly report, including any import renaming, transform, scaling, or clipping behavior.

If any imported geometry, name, coordinate, scale, texture alignment, or mask behavior differs unexpectedly, stop immediately and report the anomaly without repairing or redesigning it.

---
