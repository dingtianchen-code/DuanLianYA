# Duck Front Leg + Foot Geometry Baseline v001

**Module:** Front Leg + Foot  
**Stage:** Leg / Foot Geometry  
**Status:** APPROVED — GEOMETRY FREEZE VERIFIED — VERIFIED FREEZE AUTHORITY  
**Creation Date:** 2026-07-23  
**Promoted From:** `FrontLegFootProductionShapeCandidate_v001.svg`  
**Current Gate:** Closed — Human Verification complete

## Proposed frozen scope

- `Leg_L` complete geometry;
- `Foot_L` complete geometry;
- `Leg_R` complete geometry;
- `Foot_R` complete geometry;
- four independent closed Shapes;
- short, soft and visually subordinate Leg language;
- broad, flattened and dominant Foot language;
- exact Neutral mirror relationship;
- Leg-behind-Foot conceptual relationship.

This scope is Human-verified and frozen.

## Structural contract

The Baseline verification SVG contains exactly four production paths:

- `Leg_L`;
- `Foot_L`;
- `Leg_R`;
- `Foot_R`.

It contains four independent closed fill Shapes using candidate coordinates and control points without change. It contains no group or review container, transform, raster, gradient, shadow, stroke, mask, clip path, Pivot, bone, mesh or Rig metadata.

## Path identity

| Shape | Candidate `d` SHA-256 | Baseline `d` SHA-256 | Deviation |
|---|---|---|---:|
| `Leg_L` | `a26eb9c7ff9063a2e463f83748f8c6d1d0ae00a9a65b30d096c5009857588a62` | `a26eb9c7ff9063a2e463f83748f8c6d1d0ae00a9a65b30d096c5009857588a62` | `0 px` |
| `Foot_L` | `68b2461685eb91f00a36b964e7252f6542069f303f71836ea4505b9387669bd8` | `68b2461685eb91f00a36b964e7252f6542069f303f71836ea4505b9387669bd8` | `0 px` |
| `Leg_R` | `da2c13028dcd01d010d244d1c74b1c003cc04c37849018a22ebcacc61ec19f4a` | `da2c13028dcd01d010d244d1c74b1c003cc04c37849018a22ebcacc61ec19f4a` | `0 px` |
| `Foot_R` | `272bd3d6e6fc0666d8485c05233fabf4583e06903e38e0090fac492a662d895a` | `272bd3d6e6fc0666d8485c05233fabf4583e06903e38e0090fac492a662d895a` | `0 px` |

All coordinates and Bézier control points are unchanged.

## Neutral mirror evidence

- Approved Neutral axis: `x = 187.5`.
- Right-side geometry remains the exact coordinate mirror of left-side geometry.
- Maximum Leg mirror deviation: `0 px`.
- Maximum Foot mirror deviation: `0 px`.
- No negative-scale transform remains.

## Appearance and relationship contract

- Leg remains short, soft, organic and visually subordinate to Foot.
- Foot remains broad, flattened, stable and the dominant lower silhouette.
- Visible toe-lobe direction remains preserved.
- Leg and Foot remain separate complete Shapes.
- Leg-behind-Foot remains a conceptual relationship only.

These statements do not freeze final Draw Order, ankle construction or Rig implementation.

## Structural audit

| Check | Result |
|---|---:|
| Semantic paths | 4 |
| Closed contours | 4 |
| Cubic segments | 24 |
| Raster `<image>` | 0 |
| Gradient | 0 |
| Stroke | 0 |
| Mask / clip | 0 |
| Transform | 0 |
| Pivot / bone / mesh / Rig metadata | 0 |

## Explicit exclusions

This verification package does not create or approve final Draw Order, Pivot, ankle joint, bone, mesh, Rig, Rive, State Machine or animation.

## Evidence

- Candidate evidence: `../../../../../02_Candidates/Front/LegFootProductionShape/v001/`
- Geometry freeze evidence: `GeometryFreezeEvidence.png`

## Current Gate

**Closed — Duck Front Leg + Foot Geometry Baseline v001 is the Verified Freeze Authority.**

## Human Verification record

- Candidate-to-Baseline promotion unchanged: approved.
- `d`-data identity: confirmed.
- Coordinate deviation: `0 px`.
- Control-point deviation: `0 px`.
- Exact Neutral mirror: confirmed.
- Structural audit: passed.
- Frozen scope: `Leg_L`, `Foot_L`, `Leg_R`, `Foot_R`.

This verification does not approve final Draw Order, Pivot, ankle joint, bone, mesh, Rig, Rive, State Machine or animation.
