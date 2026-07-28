# Copy-paste instruction — Rive Agent Prototype Phase 01A v001.1

Execute this instruction only with the Rive built-in Agent. Codex is not authorized to operate the Rive UI.

---

Create or open a clean prototype Artboard named `DuckFront_EyePrototype_01A` at exactly 360 × 450 pixels using top-left native coordinates. Do not scale, center, mirror, optimize, simplify, or redraw imported content.

Import from this v001.1 package:

- `EyeWhite_L_ProductionShapeAuthority_v001.svg`
- `EyeWhite_R_ProductionShapeAuthority_v001.svg`
- `EyeDark_L_Neutral_MethodC_Candidate_v002.png`
- `EyeDark_R_Neutral_MethodC_Candidate_v002.png`

Create this exact hierarchy and preserve every exact name:

```text
EyeWhite_L
EyeWhite_R
EyeDark_L_ClipContainer
  EyeDark_L_ClipMask
  EyeDark_L_MotionGroup
    EyeDark_L_Raster
EyeDark_R_ClipContainer
  EyeDark_R_ClipMask
  EyeDark_R_MotionGroup
    EyeDark_R_Raster
```

Root draw order from back to front is:

1. `EyeWhite_L`
2. `EyeWhite_R`
3. `EyeDark_L_ClipContainer`
4. `EyeDark_R_ClipContainer`

Place both EyeWhite Shapes at their native SVG coordinates with identity transforms. Place each 360 × 450 EyeDark raster at x=0, y=0 inside its matching MotionGroup.

Create each `EyeDark_*_ClipMask` as an exact diagnostic instance of the matching approved EyeWhite Production Shape. Do not edit, simplify, scale, center, mirror, or transform its geometry. Keep each ClipMask stationary inside its ClipContainer.

The ClipContainer and ClipMask must remain stationary. The fixed ClipMask must clip the moving EyeDark Raster content. Only `EyeDark_L_MotionGroup` and `EyeDark_R_MotionGroup` may receive diagnostic translation.

Each ClipMask is a stationary clipping boundary only. It must not appear as an independently visible rendered foreground object beyond its clipping role. If Rive requires explicit clipping configuration, bind the ClipMask as the clip shape for the matching ClipContainer or clipped MotionGroup content. Do not place or re-parent the ClipMask inside the MotionGroup.

Do not move:

- `EyeWhite_L`;
- `EyeWhite_R`;
- either ClipContainer;
- either ClipMask.

Keep Left and Right independent. Do not mirror either eye.

Test these positions independently for each MotionGroup:

- Neutral `(0,0)`
- `(-2,0)`
- `(+2,0)`
- `(0,-2)`
- `(0,+2)`
- `(-2,-2)`
- `(-2,+2)`
- `(+2,-2)`
- `(+2,+2)`

For each test, temporarily change only the matching MotionGroup translation, capture the requested evidence, and return it to Neutral before testing the next position. Do not create a Timeline, Animation, or State Machine.

Required invariants:

- EyeDark Raster stays registered at `(0,0)` inside its MotionGroup;
- the stationary EyeWhite-derived ClipMask remains fixed;
- the ClipMask has no independent visible rendering beyond its clipping function;
- only the EyeDark MotionGroup translates;
- no unintended scale, rotation, origin shift, raster displacement, or mask movement occurs;
- no background leak occurs;
- no unexpected clipping occurs.

Authority note: R-01 is included. Deferred ownership R-02 `(242,183)` remains excluded from source-visible ownership; if it lies inside the solid backing, it is Production Construction only.

Do not create Blink, eyelids, bones, mesh, final pivots, expression system, Head underpaint, Beak, Brows, Cheeks, Rig, State Machine, production animation, or production-authority Rive structure.

Stop immediately if Rive:

- renames layers unexpectedly;
- applies scaling or automatic centering;
- changes native coordinates;
- changes SVG geometry;
- moves a ClipMask with a MotionGroup;
- fails to apply stationary clipping;
- creates unexpected hierarchy objects.

After completing the diagnostic prototype, return:

1. expanded hierarchy screenshot;
2. clipping hierarchy verification;
3. Neutral screenshot;
4. eight offset screenshots;
5. confirmation that only MotionGroups changed translation;
6. confirmation that ClipMasks remained fixed;
7. confirmation of no background leak;
8. confirmation of no unexpected clipping;
9. confirmation of no raster-registration drift;
10. prohibited-object audit;
11. anomaly report.

Do not continue beyond this diagnostic prototype.

---
