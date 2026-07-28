# Front EyeWhite Vector Visible-Pixel Exception Review v001

Status: **APPROVED — ACCEPT AS CONTROLLED CURVE SMOOTHING**

Current gate: **Closed — 17 Left and 7 Right exceptions accepted**

## Human decision

Human Review accepted all reported exception pixels as controlled curve smoothing:

- EyeWhite_L: 17 pixels;
- EyeWhite_R: 7 pixels;
- exterior antialias fringe or isolated raster stair-step evidence only;
- maximum inward deviation: 1 px;
- no missing internal evidence;
- no continuous contour loss;
- no native-size visibility or perceived silhouette change.

The current vector paths must not be revised as a result of these exceptions.

## Purpose

This review localizes and classifies the 17 EyeWhite_L and 7 EyeWhite_R approved visible-ownership pixels that fall outside the unchanged review-only vector Shapes.

No SVG path, node, handle, Master pixel, ownership map, R-01 record, R-02 record, or upstream evidence was changed.

## Method

- Compare each approved visible-ownership support against the existing rasterization of its unchanged review vector Shape.
- Define an exception as `approved visible ownership AND NOT vector Shape`.
- Group exceptions with 8-connectivity.
- Inspect unchanged Master RGB at native resolution and at 800% nearest-neighbor.
- Measure the longest horizontal, vertical, or diagonal connected run.
- Measure maximum inward vector displacement relative to the outer raster evidence at pixel-center resolution.

Classification colors:

- translucent green: current unchanged vector support;
- red: visible ownership evidence outside the vector Shape;
- Master RGB remains visible beneath the overlays.

## Bilateral result

| Measure | EyeWhite_L | EyeWhite_R |
|---|---:|---:|
| Omitted pixels | 17 | 7 |
| 8-connected clusters | 8 | 2 |
| Longest omitted run | 4 px | 4 px |
| Maximum inward contour deviation | 1 px | 1 px |
| Visible at native size | no | no |
| Changes perceived silhouette | no | no |

All 24 pixels are one-pixel-thick exterior samples. Their Master RGB values are white or near-white and their distribution follows raster stepping along the current smooth exterior. No exception lies within the EyeWhite interior field, creates a transparent internal gap, or forms a continuous lost contour at native size.

## EyeWhite_L clusters

| Cluster | Class | Pixels | Inclusive bounds | Longest run |
|---|---|---:|---|---:|
| EX-L-01 | exterior antialias fringe | 1 | `[107,154]–[107,154]` | 1 |
| EX-L-02 | exterior antialias fringe | 1 | `[107,161]–[107,161]` | 1 |
| EX-L-03 | exterior antialias fringe | 1 | `[107,163]–[107,163]` | 1 |
| EX-L-04 | isolated raster stair-step | 4 | `[107,165]–[107,168]` | 4 |
| EX-L-05 | isolated raster stair-step | 2 | `[108,171]–[108,172]` | 2 |
| EX-L-06 | isolated raster stair-step | 2 | `[109,174]–[109,175]` | 2 |
| EX-L-07 | exterior antialias fringe | 1 | `[110,177]–[110,177]` | 1 |
| EX-L-08 | isolated raster stair-step | 5 | `[111,179]–[113,182]` | 3 |

The complete coordinate and RGB list is preserved in `FrontEyeWhiteVectorVisiblePixelExceptionReviewAudit_v001.json`.

Assessment: the clusters follow the lower-left exterior raster staircase. They do not interrupt the continuous EyeWhite field and are not visible as a missing region at native size.

## EyeWhite_R clusters

| Cluster | Class | Pixels | Inclusive bounds | Longest run |
|---|---|---:|---|---:|
| EX-R-01 | exterior antialias fringe | 1 | `[220,153]–[220,153]` | 1 |
| EX-R-02 | isolated raster stair-step | 6 | `[225,183]–[229,186]` | 4 |

`EX-R-02` is only the identifier of an exception cluster in this review. It is unrelated to the separately deferred ownership pixel R-02 at `(242,183)`, which remains unchanged and excluded from source-visible ownership.

Assessment: one sample lies at the left exterior; the six-pixel cluster follows the lower-left raster staircase. Neither produces a native-size gap or changes the perceived silhouette.

## Focused overlay and background findings

The 50% Master overlays show the exceptions on the exterior side of the smooth vector boundary rather than within the continuous white-eye field.

Native-size previews were checked on:

- checkerboard;
- white;
- dark gray;
- black;
- saturated blue;
- saturated magenta.

No exception creates a visible background leak, broken backing field, or perceptible silhouette discontinuity on these backgrounds.

## Recommendation

**SAFE TO ACCEPT AS CONTROLLED CURVE SMOOTHING**

Reasoning:

- exceptions total only 17 Left and 7 Right pixels;
- they form one-pixel-thick exterior fringe/stair-step evidence;
- maximum displacement is 1 px;
- none is interior visible evidence;
- none creates continuous contour loss;
- none is visible at native size;
- including every sample would require path excursions that reproduce raster stair stepping and weaken the approved controlled low-node construction.

This is a recommendation for Human Review, not automatic production promotion. If Human Review requires exact inclusion of any cluster, a localized vector revision must be separately authorized.

## Evidence

- `FrontEyeWhiteVectorVisiblePixelExceptionReview_BilateralNative360x450_v001.png`
- `EyeWhite_L_OmittedPixels_800pct_v001.png`
- `EyeWhite_R_OmittedPixels_800pct_v001.png`
- `EyeWhite_L_AffectedLocations_MasterOverlay50_v001.png`
- `EyeWhite_R_AffectedLocations_MasterOverlay50_v001.png`
- `EyeWhite_L_SixBackgrounds_Native_v001.png`
- `EyeWhite_R_SixBackgrounds_Native_v001.png`
- `FrontEyeWhiteVectorVisiblePixelExceptionReview_SixBackgroundsNative_v001.png`
- `FrontEyeWhiteVectorVisiblePixelExceptionReviewAudit_v001.json`

## Human decision

Choose one:

- **ACCEPT AS CONTROLLED CURVE SMOOTHING**
- **LOCALIZED VECTOR REVISION REQUIRED**
- **REVISE EVIDENCE**
- **REJECT INTERPRETATION**

No Production SVG, final mask, hidden RGB, gradient, EyeDark vector mask, Rive content, Rig, or Animation was created.

Gate closed. Promotion to **Front EyeWhite Motion-Safe Production Shape Authority v001** is authorized.
