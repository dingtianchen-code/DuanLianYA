# Front EyeWhite Motion-Safe Production Shape Authority v001

Status: **APPROVED — PRODUCTION SHAPE AUTHORITY**

## Authorized Shapes

- `EyeWhite_L`
- `EyeWhite_R`

Each is one independent, closed, solid backing Shape with:

- 10 purposeful nodes;
- 10 cubic Bézier segments;
- no internal EyeDark-shaped hole;
- no stroke;
- no transform;
- no mask or clip;
- no raster image;
- no self-intersection;
- independent Left/Right construction without mirroring.

## Identity

The SVG path `d` data is unchanged from the approved review-only construction. The promotion changes file role and location only.

| Shape | Control-point extent | Raster audit bounds `[x0,y0,x1,y1)` | SHA-256 |
|---|---|---|---|
| EyeWhite_L | `[107,126]–[161,187.5]` | `[107,126,161,188)` | `853371584fba5cf56df83fbd596e01122e108343ff44b9ef048f823954a68be8` |
| EyeWhite_R | `[220,126]–[274,187.5]` | `[220,126,274,188)` | `99d9f1288448b3946fd2f9a922dd46c004209e7ca28c10343746d95578653862` |
| Combined L/R | — | — | `1ce2dc52c3fb7800b2c001ac69a1056ed5a685cd4a68dac2ebc1a1db6d388c31` |

## Exception decision

Human Review accepted:

- 17 EyeWhite_L ownership pixels outside the smooth Shape;
- 7 EyeWhite_R ownership pixels outside the smooth Shape;
- maximum inward deviation of 1 px;
- all as exterior antialias fringe or isolated raster stair-step evidence.

No path revision is authorized or required.

## R-01 / R-02 contract

- R-01 is included.
- Deferred ownership R-02 `(242,183)` remains excluded from source-visible ownership.
- R-02 may exist inside the solid backing only as Production Construction.
- Concealed backing is not recovered Master RGB.

## Motion-safety scope

The Shapes passed Neutral and ±2 px cardinal/diagonal EyeDark clipping tests with zero clipped EyeDark pixels. No larger motion envelope is authorized by this authority.

## Authority limitation

This package grants Production Shape Authority only. It does not grant final Appearance, EyeDark vector-mask, hidden RGB, eyelid, Rive hierarchy, Pivot, Rig, State Machine, or Animation authority.

Frozen source reviews remain preserved and must not be overwritten.
