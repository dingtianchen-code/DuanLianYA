# Front EyeWhite Motion-Safe Vector Shape Construction Review v001

Status: **APPROVED — PROMOTED UNCHANGED TO FRONT EYEWHITE MOTION-SAFE PRODUCTION SHAPE AUTHORITY v001**

Current gate: **Closed — visible-pixel exceptions accepted as controlled curve smoothing**

## Human decision

Human Review accepted:

- one independent, closed, solid backing Shape per eye;
- no permanent EyeDark-shaped holes;
- independent Left and Right construction;
- ten purposeful nodes and ten cubic segments per eye in principle;
- all Neutral and authorized ±2 px EyeDark tests with zero clipped pixels;
- R-01 handling;
- R-02 exclusion from visible ownership and its presence inside the solid backing only as Production Construction;
- the distinction between concealed Production Construction and recovered Master RGB.

Production promotion remains deferred pending focused adjudication of the 17 Left and 7 Right visible raster-evidence pixels outside the review Shapes. The paths remain unchanged.

## Scope and authority

This package translates the approved EyeWhite backing interpretation into review-only vector Shapes. It does not establish Production Geometry, Production SVG, a final mask, restored hidden RGB, or Rive authority.

Authorities used:

- unchanged `Front_MasterCrop.png` for visible appearance evidence;
- approved Head/Face Ownership Authority v002.2 for source-visible EyeWhite ownership;
- approved EyeWhite Motion-Safe Concealed Backing Shape Interpretation v001 for complete-backing intent;
- approved ±2 px cardinal and diagonal EyeDark motion envelope.

Automatic raster tracing was not used as production authority. Raster stair steps were treated as evidence and manually summarized by low-node cubic curves.

## Constructed review Shapes

| Shape | Closed paths | Nodes | Cubic segments | Holes | Stroke | Self-intersections | Duplicate consecutive nodes |
|---|---:|---:|---:|---:|---|---:|---:|
| EyeWhite_L | 1 | 10 | 10 | 0 | none | 0 | 0 |
| EyeWhite_R | 1 | 10 | 10 | 0 | none | 0 | 0 |

Each eye is an independent, solid, closed fill Shape. Neither contains a permanent EyeDark-shaped hole. Left and Right were constructed independently and were not mirrored.

The paths use purposeful nodes at the upper crown, outer and inner side transitions, lower support, and lower curvature transitions. The additional lower-support nodes avoid reducing the bottom to one generic straight closure. Curve joins were designed for visually smooth tangent flow; Human Review remains the authority for accepting the rendered continuity.

## Visible evidence versus Production Construction

| Measure | EyeWhite_L | EyeWhite_R |
|---|---:|---:|
| Approved visible ownership pixels | 1,675 | 1,649 |
| Visible pixels covered by review Shape | 1,658 | 1,642 |
| Visible raster evidence outside review Shape | 17 | 7 |
| Review Shape pixels outside visible ownership | 1,189 | 1,226 |
| Rasterized Shape bounds `[x0,y0,x1,y1)` | `[107,126,161,188)` | `[220,126,274,188)` |

Green areas in the difference views are common to visible ownership and the vector Shape. Red pixels are source-visible raster evidence outside the smooth vector construction. Blue pixels are vector backing outside source-visible ownership.

The 17 Left and 7 Right red pixels are retained as explicit Human-review evidence. They are not automatically converted into raster-stepped vector excursions. The blue regions are Production Construction required by the approved solid-backing topology; they are not recovered or synthesized RGB.

## EyeWhite_R exception contract

- R-01: all 124 approved repair coordinates are enclosed by the review Shape.
- R-02 `(242,183)`: remains excluded from source-visible ownership and was not used as exterior evidence.
- Because the approved topology is one complete solid backing without internal holes, R-02 lies inside the smooth closed backing. Its presence there is classified only as **Production Construction**, not as transferred visible ownership or recovered Master appearance.

Human Review must confirm that this distinction satisfies the approved R-02 deferral while preserving the solid-backing topology.

## EyeDark ±2 px motion exposure

EyeDark was tested at Neutral and at:

- `(-2,0)`, `(+2,0)`, `(0,-2)`, `(0,+2)`;
- `(-2,-2)`, `(-2,+2)`, `(+2,-2)`, `(+2,+2)`.

Clipped nontransparent EyeDark pixels:

| Offset | EyeWhite_L | EyeWhite_R |
|---|---:|---:|
| Neutral | 0 | 0 |
| −2, 0 | 0 | 0 |
| +2, 0 | 0 | 0 |
| 0, −2 | 0 | 0 |
| 0, +2 | 0 | 0 |
| −2, −2 | 0 | 0 |
| −2, +2 | 0 | 0 |
| +2, −2 | 0 | 0 |
| +2, +2 | 0 | 0 |

The review Shapes therefore provide continuous backing throughout the authorized envelope without exposing transparent background. This does not authorize larger EyeDark motion.

## Structural audit

- review-only SVGs: 3;
- production SVGs: 0;
- independent Shapes in per-eye SVG: exactly 1;
- paths in combined review SVG: exactly 2;
- fill: simple white;
- strokes: none;
- transforms: none;
- masks/clips/gradients/raster images: none;
- internal holes: none;
- hidden RGB texture: none;
- EyeDark vector masks: none;
- Rive/Rig/Animation content: none.

Review SVG SHA-256:

- EyeWhite_L: `853371584fba5cf56df83fbd596e01122e108343ff44b9ef048f823954a68be8`
- EyeWhite_R: `99d9f1288448b3946fd2f9a922dd46c004209e7ca28c10343746d95578653862`
- combined L/R: `1ce2dc52c3fb7800b2c001ac69a1056ed5a685cd4a68dac2ebc1a1db6d388c31`

## Evidence package

- `EyeWhite_L_MotionSafeVectorShape_REVIEW_ONLY_v001.svg`
- `EyeWhite_R_MotionSafeVectorShape_REVIEW_ONLY_v001.svg`
- `EyeWhite_LR_MotionSafeVectorShapes_REVIEW_ONLY_v001.svg`
- `EyeWhite_L_VectorShape_Transparent_REVIEW_ONLY_v001.png`
- `EyeWhite_R_VectorShape_Transparent_REVIEW_ONLY_v001.png`
- `EyeWhite_LR_VectorShapes_Native360x450_REVIEW_ONLY_v001.png`
- `EyeWhite_L_VectorEvidence_v001.png`
- `EyeWhite_R_VectorEvidence_v001.png`
- `EyeWhite_L_NodeHandleDiagram_v001.png`
- `EyeWhite_R_NodeHandleDiagram_v001.png`
- `EyeWhite_L_EyeDarkClippingTests_v001.png`
- `EyeWhite_R_EyeDarkClippingTests_v001.png`
- `EyeWhite_L_SixBackgrounds_v001.png`
- `EyeWhite_R_SixBackgrounds_v001.png`
- `EyeWhite_LR_IndependentComparison_v001.png`
- `EyeWhite_LR_MasterOverlay50_v001.png`
- `FrontEyeWhiteMotionSafeVectorShapeConstructionReviewAudit_v001.json`

The evidence includes transparent Shape renders, native recomposition, 50% Master overlay, difference classification, 400% and 1600% inspections, independent bilateral comparison, node/handle diagrams, six-background tests, and all authorized EyeDark motion offsets.

## Human approval questions

1. Is EyeWhite_L acceptable as one independent, closed, solid backing Shape?
2. Is EyeWhite_R acceptable as one independent, closed, solid backing Shape?
3. Are the Left and Right visible exterior boundaries sufficiently faithful without reproducing raster stair steps?
4. Are the reported 17 Left and 7 Right visible raster-only pixels acceptable consequences of controlled curve smoothing?
5. Are the concealed blue regions correctly limited to Production Construction rather than claimed recovered appearance?
6. Is R-01 preserved correctly?
7. Is the R-02 contract acceptable: excluded from visible ownership but enclosed only as unavoidable solid-backing Production Construction?
8. Are 10 purposeful nodes and 10 cubic segments per eye suitably controlled?
9. Are the node placement, handle directions, and rendered curve joins acceptable?
10. Is the absence of internal EyeDark-shaped holes approved?
11. Do the Neutral and all ±2 px EyeDark tests demonstrate adequate motion-safe backing?
12. Do the six-background diagnostics show a coherent, continuous Shape without unintended holes?
13. Is independent Left/Right construction sufficiently demonstrated without mirroring?
14. Is the structural audit accepted?
15. Is this review ready for a separately authorized production-vector promotion stage, or does it require revision?

No Production SVG, final mask, hidden RGB, gradient, replacement Artwork, EyeDark vector mask, eyelid, Rive file, Pivot, Bone, Mesh, Rig, State Machine, or Animation has been created.

Next gate: **Front EyeWhite Vector Visible-Pixel Exception Review v001 — Human Approval Gate**
