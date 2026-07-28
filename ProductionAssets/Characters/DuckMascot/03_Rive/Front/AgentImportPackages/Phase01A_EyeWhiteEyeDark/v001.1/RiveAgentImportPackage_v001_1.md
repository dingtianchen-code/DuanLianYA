# Rive Agent Import Package v001.1

Status: **APPROVED — RIVE AGENT HANDOFF AUTHORITY — PROTOTYPE PHASE 01A ONLY**

Prototype: **Phase 01A — Front EyeWhite / EyeDark Motion Validation**

This package supersedes v001 before execution. No Rive operation occurred from v001, and Codex must not operate the Rive UI.

Execution owner: **Rive built-in Agent**

Current gate: **Rive Agent Prototype Phase 01A — Execution Pending in Rive**

## Native registration

- clean Artboard: 360 × 450;
- top-left coordinates;
- SVG viewBox: `0 0 360 450`;
- EyeWhite placement: native SVG coordinates with identity transform;
- EyeDark PNG placement: full-canvas 360 × 450 at `(0,0)`;
- no automatic scaling, centering, mirroring, cleanup, or optimization.

## Corrected hierarchy

Back to front:

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

Stationary:

- `EyeWhite_L`;
- `EyeWhite_R`;
- both ClipContainers;
- both ClipMasks.

Only `EyeDark_L_MotionGroup` and `EyeDark_R_MotionGroup` may receive diagnostic translations. Each raster remains registered at `(0,0)` inside its MotionGroup.

Each ClipMask is an exact diagnostic instance of its corresponding approved EyeWhite Shape. It has no independent Production Shape or EyeDark mask authority. The fixed mask clips moving raster content.

Each ClipMask functions only as the stationary clipping boundary. It must not render as an independently visible foreground object beyond its clipping role. If Rive requires an explicit clipping setup, bind the ClipMask as the clip shape for its ClipContainer or clipped MotionGroup content without parenting it beneath the MotionGroup.

## Correct invariant

The raster and ClipMask do not move together.

Required:

- EyeDark Raster remains correctly registered inside its MotionGroup;
- the EyeWhite-derived ClipMask remains fixed;
- the ClipMask is non-rendering except for its clipping function;
- only EyeDark content translates;
- no unintended scale, rotation, origin shift, or raster displacement occurs.

## Diagnostic offsets

Test Neutral plus the eight approved ±2 px cardinal and diagonal positions. Apply one temporary MotionGroup translation at a time, capture evidence, and return it to Neutral before the next test.

Do not create a Timeline, Animation, or State Machine.

## R-01 / R-02

- R-01 is included in approved EyeWhite_R support.
- R-02 `(242,183)` remains excluded from source-visible ownership.
- Its presence inside the solid backing is Production Construction only.
- No hidden RGB is supplied or authorized.

## Required Rive Agent evidence

- expanded hierarchy screenshot;
- clipping-hierarchy verification;
- Neutral screenshot;
- eight offset screenshots;
- confirmation that only MotionGroups changed translation;
- confirmation that ClipMasks remained fixed;
- confirmation of no background leak;
- confirmation of no unexpected clipping;
- confirmation of no raster-registration drift;
- prohibited-object audit.

Any unexpected rename, scale, centering, coordinate change, geometry change, ClipMask inheritance, clipping failure, or unexpected hierarchy object is an immediate stop condition.

This package grants no Rive production authority, final hierarchy authority, Pivot, Rig, State Machine, Animation, eyelid, or expression authority.
