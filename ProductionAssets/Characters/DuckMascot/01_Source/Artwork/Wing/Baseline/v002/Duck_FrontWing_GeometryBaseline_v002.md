# Duck Front Wing Geometry Baseline v002

**Asset:** Duck Front Wing Geometry Baseline  
**Version:** v002  
**Date:** 2026-07-22  
**Status:** APPROVED — GEOMETRY FREEZE — CURRENT DOWNSTREAM AUTHORITY  
**Source:** `FrontWingProductionShapeRevision_v002.svg`

## Frozen scope

The following are approved and frozen:

- `Wing_L` revised complete curved cashew-like geometry;
- `Wing_R` exact Neutral mirror geometry;
- unchanged visible outer/lower contours and rounded lower ends;
- revised concealed root overlap in Segments 05–08;
- broad, soft, sufficiently overlapping concealed roots;
- two independent closed fill Shapes;
- explicit path data with no transform.

No coordinate, anchor, Bézier control point, segment order or mirroring rule may be modified without new explicit Human revision authorization.

## Path identity

Baseline v002 `Wing_L` and `Wing_R` `d` data is byte-identical to the approved Production Shape Revision v002. No review-only material is included.

## Structural freeze

| Property | Frozen result |
|---|---|
| Paths | 2 |
| Closed contours | 2 |
| Cubic segments | 8 per Wing |
| Neutral mirror axis | x = 187.5 |
| Raster / gradient / shadow / stroke | 0 |
| Mask / clip / transform | 0 |
| Pivot / bone / mesh / Rig metadata | 0 |

## Version authority

Baseline v001 is superseded because its concealed roots produced Neutral assembly gaps. Baseline v002 is the current downstream Wing geometry authority.

This Geometry Baseline does not approve final Draw Order, Pivot, deformation topology, shading, Rive or animation.
