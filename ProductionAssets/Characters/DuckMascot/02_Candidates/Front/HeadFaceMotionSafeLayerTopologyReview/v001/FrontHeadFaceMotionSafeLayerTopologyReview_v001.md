# Front Head / Face Motion-Safe Layer Topology Review v001

Status: **APPROVED — MOTION-SAFE LAYER TOPOLOGY CONTRACT**

Current gate: **Closed — topology principles and local Draw Order approved**

## Governing principle

**VISIBLE PIXEL OWNERSHIP ≠ MOTION-SAFE PRODUCTION SHAPE**

Approved Ownership Maps answer which module moves each source-visible Master pixel. They do not determine the concealed support required when independently movable foreground modules leave their Neutral positions.

This review proposes topology only. It creates no production Shape, mask, restored RGB, vector path, or Rive content.

## Neutral-visible ownership topology

The approved Neutral raster system contains:

- `Head_Base` visible RGB with transparent holes wherever Face modules own visible pixels;
- `EyeWhite_L/R` visible RGB excluding EyeDark-owned pixels;
- independent visible EyeDark, Brow, Cheek, Beak, and Nostril carriers;
- transparent background outside all owned-visible supports.

This topology is correct for source-visible ownership and exact Neutral recomposition. It is not motion-safe: moving a foreground module exposes its old transparent hole.

See `NeutralVisibleOwnershipTopology_v001.png`.

## Proposed motion-safe production topology

Back to front:

1. `Head_Underpaint_CONCEPTUAL`
2. `Head_Base_VisibleRaster`
3. `EyeWhite_L_CompleteBacking_CONCEPTUAL`
4. `EyeWhite_R_CompleteBacking_CONCEPTUAL`
5. `EyeDark_L_Group`
6. `EyeDark_R_Group`
7. `Brow_L`
8. `Brow_R`
9. `CheekMark_L`
10. `CheekMark_R`
11. `Beak_Neutral_Group`
12. `Nostril_L`
13. `Nostril_R`
14. future eyelid layers — deferred

The two conceptual backing categories are not assets. They are unresolved requirements for later Restoration Gates.

See `MotionSafeProductionTopology_v001.png` and `TopologyComparison_v001.png`.

## EyeWhite / EyeDark contract

### EyeWhite

Proposed production topology treats each EyeWhite as a complete continuous backing field:

- visible EyeWhite pixels retain approved Neutral Appearance Authority;
- the EyeDark-shaped exclusion is not made a permanent transparent hole;
- concealed white beneath EyeDark is explicitly Production Construction;
- concealed pixels are not claimed as recovered Master appearance;
- construction requires a separate Human-approved Restoration Gate;
- future eyelid masking remains possible.

### EyeDark

Each EyeDark remains:

- a combined Neutral dark-eye semantic carrier;
- an approved Neutral raster texture;
- clipped by its future independent vector mask;
- independent from EyeWhite;
- deferred for Pupil, Iris, and Glint separation.

The raster texture and vector mask are proposed to move as one independent group. This avoids texture/mask drift during restrained translation.

See `EyeWhiteEyeDarkExplodedLayers_v001.png`.

## Head / Face contract

The visible `Head_Base` raster holes must not become permanent cutouts in the Head production surface.

Proposed topology:

- complete conceptual Head underpaint beneath all Face modules;
- approved source-visible `Head_Base` raster above that support;
- Face modules remain independent;
- restrained Face motion reveals Head support rather than transparent background;
- underpaint remains distinct from source-visible Appearance Authority;
- no concealed RGB is generated in this review.

Compatibility with the approved complete Head production-shape principle is preserved conceptually. Exact underpaint construction requires a later Restoration Gate.

See `HeadFaceExplodedLayers_v001.png`.

## Beak / Nostril contract

- Neutral Beak remains raster.
- `Nostril_L/R` remain independent future vector modules.
- Nostrils render above the Beak raster.
- Nostrils inherit the Beak group transform for whole-Beak translation or rotation.
- Nostril geometry is not permanently merged into Beak raster.
- no UpperBeak, LowerBeak, MouthCavity, Tongue, or animated mouth topology is defined.

## Proposed draw order

The sequence above is a proposed Head/Face-local topology contract. It does not replace the approved character-level Draw Order and is not a final Rive hierarchy.

Important relationships:

- Head underpaint below source-visible Head raster;
- complete EyeWhite backing below EyeDark;
- EyeDark raster and its vector mask move together;
- Brows and Cheeks above Head;
- Beak raster above Head;
- Nostrils above Beak and inheriting Beak group transform;
- future eyelids above eye layers after separate approval.

## Motion-exposure diagnostics

The diagnostic boards translate only review composites by ±2 px. No Candidate coordinates or production assets are modified.

### EyeDark ±2 px

With the current Neutral-hole topology, translation can expose background through the EyeDark-shaped EyeWhite hole. A complete EyeWhite backing is therefore required.

Evidence: `EyeDark_MotionExposure_v001.png`.

### EyeWhite ±2 px

Moving the current visible-only EyeWhite carrier reveals Head_Base facial holes. Complete Head underpaint is required beneath the eye system.

Evidence: `EyeWhite_MotionExposure_v001.png`.

### Brows ±2 px

Moving Brows reveals the transparent Brow-shaped exclusions in visible Head_Base. Head underpaint is required; no hidden Brow restoration is required for the Brow module itself.

Evidence: `Brows_MotionExposure_v001.png`.

### Beak ±2 px

Moving the Beak group reveals its Neutral-shaped Head_Base hole. Head underpaint is required beneath Beak. Nostrils move with Beak in this diagnostic group while remaining semantically independent.

Evidence: `Beak_MotionExposure_v001.png`.

Combined evidence: `NeutralHoleTopologyFailureExamples_v001.png`.

## Concealed regions requiring a Restoration Gate

- complete Head underpaint behind `EyeWhite_L/R`;
- Head underpaint behind `EyeDark_L/R`;
- Head underpaint behind `Brow_L/R`;
- Head underpaint behind `CheekMark_L/R`;
- Head underpaint behind Beak and Nostrils;
- complete `EyeWhite_L` backing beneath `EyeDark_L`;
- complete `EyeWhite_R` backing beneath `EyeDark_R`.

These are production-construction needs, not recovered Master RGB.

## Modules requiring no concealed restoration of their own for restrained translation

- `Brow_L/R`;
- `CheekMark_L/R`;
- `Nostril_L/R`;
- `EyeDark_L/R` Neutral raster carriers, provided raster and mask move together;
- Neutral Beak raster carrier.

This does not remove the requirement for Head or EyeWhite support beneath those modules.

## Authority distinction

### Recovered / source-visible Master appearance

Only the approved Method C Candidate v002 raster pixels.

### Production construction

- complete Head underpaint;
- EyeWhite_L concealed backing beneath EyeDark_L;
- EyeWhite_R concealed backing beneath EyeDark_R.

Production construction has no RGB, geometry, or implementation authority until its specific Restoration/Construction Gate is approved.

## Deliverables

- `NeutralVisibleOwnershipTopology_v001.png`
- `MotionSafeProductionTopology_v001.png`
- `TopologyComparison_v001.png`
- `EyeWhiteEyeDarkExplodedLayers_v001.png`
- `HeadFaceExplodedLayers_v001.png`
- `EyeDark_MotionExposure_v001.png`
- `EyeWhite_MotionExposure_v001.png`
- `Brows_MotionExposure_v001.png`
- `Beak_MotionExposure_v001.png`
- `NeutralHoleTopologyFailureExamples_v001.png`
- `FrontHeadFaceMotionSafeLayerTopologyReviewAudit_v001.json`

## Human approval questions

1. Is the distinction between visible ownership and motion-safe topology approved?
2. Should EyeWhite_L/R become complete backing fields beneath EyeDark?
3. Is concealed EyeWhite completion correctly classified as Production Construction requiring a Restoration Gate?
4. Should Head use a complete underpaint/support surface behind all Face modules?
5. Is Head underpaint correctly separated from approved source-visible Head raster appearance?
6. Is the EyeDark raster-texture-plus-vector-mask group contract approved?
7. Is the Beak/Nostril draw-order and shared-transform contract approved?
8. Is the proposed local Draw Order acceptable for later construction review?
9. Are the listed Restoration Gate requirements complete?
10. Are the modules listed as requiring no restoration of their own correctly classified?
11. May the next stage begin with `EyeWhite_L / EyeWhite_R Motion-Safe Vector Shape Construction Review v001`?

No vector paths, SVG, production mask, restored hidden RGB, replacement Artwork, gradient, Rive file, Pivot, Bone, Mesh, Rig, State Machine, or Animation has been created.

## Human approval

The governing principle, complete EyeWhite backing requirement, EyeDark raster-plus-mask group, complete Head underpaint requirement, Appearance/Construction authority separation, Beak/Nostril contract, local Draw Order, and listed Restoration Gates are approved.

The topology contract does not authorize Production Construction.

Next gate: **Front EyeWhite Motion-Safe Concealed Backing Shape Interpretation Review v001 — Human Approval Gate**
