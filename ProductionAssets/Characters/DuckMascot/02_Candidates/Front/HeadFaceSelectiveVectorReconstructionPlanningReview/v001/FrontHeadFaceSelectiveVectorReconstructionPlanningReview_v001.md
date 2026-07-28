# Front Head / Face Selective Vector Reconstruction Planning Review v001

Status: **APPROVED WITH REQUIRED TOPOLOGY AMENDMENT**

Current gate: **Closed — classifications approved; topology amendment transferred to Motion-Safe Layer Topology Review**

## Purpose

Evaluate a hybrid production system:

**STRUCTURAL VECTOR + APPEARANCE RASTER**

The approved Neutral Raster Appearance Authority remains the visible identity reference. This review does not assume that every module should become vector and does not create vector paths.

## Proposed module classifications

| Module | Proposed classification | Estimated controlled nodes | Visual risk | Animation benefit | Proposed Rive implementation |
|---|---|---:|---|---|---|
| Head_Base | HYBRID RASTER + VECTOR MASK | 16–24 | High | Medium | Approved raster texture clipped by a low-node structural Head mask |
| EyeWhite_L | VECTOR RECONSTRUCTION RECOMMENDED | 10–16 | Medium | High | Independent vector Shape with controlled fill or subtle native gradient |
| EyeWhite_R | VECTOR RECONSTRUCTION RECOMMENDED | 10–16 | Medium | High | Independent vector Shape based on repaired v002.2 ownership |
| EyeDark_L | HYBRID RASTER + VECTOR MASK | 10–14 | Medium–High | High | Neutral raster carrier clipped by an independent vector mask |
| EyeDark_R | HYBRID RASTER + VECTOR MASK | 10–14 | Medium–High | High | Neutral raster carrier clipped by an independent vector mask |
| Brow_L | VECTOR RECONSTRUCTION RECOMMENDED | 6–10 | Low–Medium | High | Independent strokeless filled Bézier Shape |
| Brow_R | VECTOR RECONSTRUCTION RECOMMENDED | 6–10 | Low–Medium | High | Independent strokeless filled Bézier Shape |
| CheekMark_L | VECTOR RECONSTRUCTION RECOMMENDED | 4–8 | Medium | Medium | Independent opacity-controlled vector mark |
| CheekMark_R | VECTOR RECONSTRUCTION RECOMMENDED | 4–8 | Medium | Medium | Independent opacity-controlled vector mark |
| Beak | KEEP RASTER | — | High | Medium | Approved Neutral raster carrier; animated mouth system deferred |
| Nostril_L | VECTOR RECONSTRUCTION RECOMMENDED | 4–6 | Low | Medium | Independent small filled vector Shape |
| Nostril_R | VECTOR RECONSTRUCTION RECOMMENDED | 4–6 | Low | Medium | Independent small filled vector Shape |

Node counts are planning estimates, not path specifications or limits.

## Module assessments

### Head_Base — HYBRID RASTER + VECTOR MASK

The Head carries broad yellow gradients, rim lighting, soft volume, and subtle edge treatment. A flat vector redraw would have high identity-loss risk. The structural Head authority can supply a low-node support/deformation mask while the approved raster supplies visible appearance. Bone or mesh suitability must be reviewed later; this review authorizes neither.

### EyeWhite_L / EyeWhite_R — VECTOR RECONSTRUCTION RECOMMENDED

Both are continuous, comparatively simple forms with high future motion value. Controlled vectors would support eye translation, future eyelid masking, and clean scaling. Reconstruction must preserve the connected visible white-highlight indentation. EyeWhite_R must use v002.2, including R-01 and excluding deferred R-02.

Automatic tracing is unsuitable because it would reproduce raster stair-stepping and matte artifacts as unnecessary vertices. A small Human-reviewed Bézier set is required.

### EyeDark_L / EyeDark_R — HYBRID RASTER + VECTOR MASK

The dark carriers have subtle tonal variation and contain the currently inseparable Neutral iris/pupil function. A vector mask enables independent eye motion without inventing Pupil or Iris semantics. The raster remains Appearance Authority until a separate Human reconstruction decision.

### Brow_L / Brow_R — VECTOR RECONSTRUCTION RECOMMENDED

Brows require rotation and expression changes, while their silhouettes can be represented with few purposeful Bézier points. Left and right should be reconstructed independently; no raster mirroring is authorized.

### CheekMark_L / CheekMark_R — VECTOR RECONSTRUCTION RECOMMENDED

The marks are extremely small and benefit from vector scaling and opacity control. Their softness and source asymmetry must be reproduced deliberately. Automatic trace would create unstable micro-geometry disproportionate to their visible role.

### Beak — KEEP RASTER

The Neutral Beak contains meaningful gradient, edge softness, and volume cues. Replacing it now would risk immediate identity loss. The approved raster should remain the Neutral carrier. UpperBeak, LowerBeak, MouthCavity, Tongue, and expression states remain deferred to a separate Human Shape Interpretation and restoration process.

### Nostril_L / Nostril_R — VECTOR RECONSTRUCTION RECOMMENDED

Each nostril is a small, simple semantic mark suitable for a minimal filled Shape. Reconstruction should preserve its exact Neutral placement and be reviewed independently; it must not be merged permanently into Beak appearance.

## Hybrid architecture

1. Approved Method C raster assets remain Neutral visible-appearance authority.
2. Existing structural geometry remains mask, support, and future deformation authority.
3. Selected small semantic modules may receive Human-reviewed low-node vector reconstructions.
4. Raster/hybrid modules use vector masks without repainting their visible texture.
5. Rive implementation must preserve semantic independence and pass Neutral fidelity review after each module.

See `HeadFaceHybridArchitecture_v001.png`.

## Automatic trace restriction

Automatic raster tracing is **not Production Authority**. It may be used only as non-authoritative diagnostic evidence if separately authorized. It is expected to:

- convert anti-aliased pixels into excessive nodes;
- encode matte contamination and raster stair-stepping;
- damage curve editability;
- complicate Rive deformation;
- obscure semantic intent.

No automatic trace, SVG, or vector path was created in this review.

## Evidence

- `FrontHeadFaceSelectiveVectorPlanningReview_v001.png`: classification overview
- `HeadFaceHybridArchitecture_v001.png`: proposed architecture
- `ModuleEvidence/`: twelve independent source/candidate/400%/1600% review boards
- `FrontHeadFaceSelectiveVectorPlanningReviewAudit_v001.json`: machine-readable classification register

Each module board includes the source Master crop, approved Raster Candidate, 400% and 1600% nearest-neighbor edge inspections, estimated node count, proposed Rive implementation, visual-risk assessment, and animation-benefit assessment.

## Human approval questions

1. Is `Head_Base` approved as HYBRID RASTER + VECTOR MASK?
2. Are `EyeWhite_L/R` approved for controlled vector reconstruction?
3. Are `EyeDark_L/R` approved as HYBRID RASTER + VECTOR MASK while Pupil/Iris separation remains deferred?
4. Are `Brow_L/R` approved for controlled vector reconstruction?
5. Are `CheekMark_L/R` approved for controlled vector reconstruction?
6. Is `Beak` approved to remain raster for Neutral while the animated mouth system stays deferred?
7. Are `Nostril_L/R` approved for controlled vector reconstruction?
8. Are the estimated node ranges acceptable as planning targets rather than geometry specifications?
9. Is the hybrid architecture suitable for the next module-specific review?
10. Is automatic trace explicitly rejected as Production Authority?
11. Which single module should enter the next Design/Construction Review first?

No Production SVG, traced vector path, replacement Artwork, new gradient, hidden restoration, Rive file, Pivot, Bone, Mesh, Rig, State Machine, or Animation has been created.

## Approved topology amendment

The classifications are approved subject to the permanent clarification:

**VISIBLE PIXEL OWNERSHIP ≠ MOTION-SAFE PRODUCTION SHAPE**

Ownership-map exclusions created by foreground modules must not automatically become permanent transparent holes. EyeWhite requires evaluation as a complete backing field beneath EyeDark. Head requires evaluation as a complete support surface behind Face modules. Concealed completion is Production Construction—not recovered Master appearance—and requires a separate Restoration Gate.

Next gate: **Front Head / Face Motion-Safe Layer Topology Review v001 — Human Approval Gate**
