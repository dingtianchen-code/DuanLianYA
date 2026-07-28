# Leg / Foot Visible Semantic Boundary Review v001

**Status:** APPROVED — BOUNDARY B SELECTED INDEPENDENTLY FOR LEFT AND RIGHT  
**Current gate:** Closed — approved semantic ownership revision applied

## Purpose

The evidence package was originally prepared read-only and presented three
possible visible semantic boundaries between Leg and Foot in Front Neutral.
It did not choose a boundary or modify any source at preparation time.

Human Review subsequently selected **Boundary B independently for Left and
Right**. The authorized application updated only these four effective diagnostic
maps:

- `Leg_L_EffectiveOwnershipMap_v003.png`;
- `Foot_L_EffectiveOwnershipMap_v003.png`;
- `Leg_R_EffectiveOwnershipMap_v003.png`;
- `Foot_R_EffectiveOwnershipMap_v003.png`.

The original `OwnershipMaps_v005` source maps remain unchanged as historical
evidence. Structural Geometry, Master RGB, artwork, SVG and Rive files were not
modified.

## Authority and evidence

- `Front_MasterCrop.png` controls visible RGB appearance.
- `Duck_FrontLegFoot_GeometryBaseline_v001.svg` supplies Structural Geometry
  evidence only. It is not visible-pixel ownership authority.
- `FrontLegFootCompleteFormHumanShapeInterpretation_v002.png` supplies the
  approved complete-form language: a short, thick, soft Leg behind a broad,
  flattened and dominant Foot. It is not a pixel boundary.
- The evidence panels display the effective ownership state that existed during
  review preparation. The later authorized Boundary B application is recorded
  separately and does not retroactively regenerate those historical panels.
- `LegFoot_Interface_Unresolved_L` and
  `LegFoot_Interface_Unresolved_R` remain unassigned.

The review uses shape semantics, complete-form interpretation, frozen structural
evidence, silhouette continuity and future motion separation. Orange color alone
does not determine the proposed boundary.

## Display legend

- Green: effective Body GREEN ownership
- Cyan: effective Leg GREEN ownership
- Orange: effective Foot GREEN ownership
- Magenta: `LegFoot_Interface_Unresolved`
- Red: broad-orange Master evidence currently unassigned in the tight review ROI
- Purple/blue structural overlay: frozen Leg/Foot Structural Geometry

## Current evidence requiring adjudication

| Evidence | Left | Right | Current treatment |
|---|---:|---:|---|
| Effective Leg GREEN | 8 | 7 | Unchanged |
| Effective Foot GREEN | 1,610 | 1,612 | Unchanged |
| Foot-owned upper-connection pixels (`y <= 390`) | 69 | 71 | Remain Foot-owned in every candidate |
| Unassigned broad-orange evidence | 663 | 651 | Candidate review source only |
| Leg/Foot unresolved interface | 275 | 275 | Preserved, unassigned |

The 69/71 Foot-owned upper-connection pixels are not silently moved to Leg.
The three candidates differ only in how much currently unassigned broad-orange
evidence would be semantically associated with Leg or Foot if Human-approved.
The two 275-pixel unresolved registers remain excluded from all candidates.

## Candidate definitions

Image coordinates increase downward. “High Leg share” therefore uses the lowest
candidate division in screen coordinates and gives Leg the greatest visible
share. The displayed lines are review proposals only; they are not production
geometry, masks, hidden ankles or attachment definitions.

### Candidate A — high Leg share

Produces the most coherent visible Leg and the broadest Leg-to-Foot connection.
It offers the clearest future separation for a moving Leg, but assigns the
largest amount of currently unassigned orange evidence to Leg and therefore has
the highest risk of over-stating visible Leg height.

### Candidate B — middle

Produces a short, coherent visible Leg while retaining a dominant and coherent
Foot. It is closest to the approved complete-form language at review scale.
The concealed ankle/connection remains undefined; this candidate does not
authorize it.

### Candidate C — low Leg share / more Foot

Preserves the strongest Foot dominance and the smallest visible Leg allocation.
The Leg remains more coherent than the current 8/7-pixel fragments, but its
motion separation may remain under-specified.

## Exact candidate counts

### Left

| Candidate | Leg visible | Foot visible | Foot → Leg | Unassigned → Leg | Unassigned → Foot | Unresolved preserved |
|---|---:|---:|---:|---:|---:|---:|
| A | 314 | 1,902 | 0 | 306 | 292 | 275 |
| B | 230 | 2,004 | 0 | 222 | 394 | 275 |
| C | 146 | 2,085 | 0 | 138 | 475 | 275 |

### Right

| Candidate | Leg visible | Foot visible | Foot → Leg | Unassigned → Leg | Unassigned → Foot | Unresolved preserved |
|---|---:|---:|---:|---:|---:|---:|
| A | 301 | 1,903 | 0 | 294 | 291 | 275 |
| B | 217 | 2,004 | 0 | 210 | 392 | 275 |
| C | 134 | 2,085 | 0 | 127 | 473 | 275 |

No candidate moves current GREEN Foot ownership to Leg. No candidate resolves
the concealed ankle, chooses parent/child hierarchy, establishes Draw Order, or
authorizes restoration or rigging.

## Review assets

- `LegFootVisibleSemanticBoundaryReview_v001.png` — summary and independent
  Human decision fields.
- `LegFootBoundary_L_Evidence_1600pct_v001.png` — Left Master, effective
  ownership, Structural Geometry and complete-form evidence.
- `LegFootBoundary_R_Evidence_1600pct_v001.png` — Right equivalent.
- `LegFootBoundary_L_Candidates_ABC_v001.png` — Left A/B/C isolated Leg, isolated
  Foot, combined Neutral, 50% overlay and amplified difference.
- `LegFootBoundary_R_Candidates_ABC_v001.png` — Right equivalent.
- `LegFootVisibleSemanticBoundaryReview_v001.json` — deterministic counts,
  source hashes and candidate parameters.

## Human decision — Left

**APPROVE BOUNDARY B**

- Leg visible total: **230**
- Foot visible total: **2,004**
- Previously unassigned → Leg: **222**
- Previously unassigned → Foot: **394**

## Human decision — Right

**APPROVE BOUNDARY B**

- Leg visible total: **217**
- Foot visible total: **2,004**
- Previously unassigned → Leg: **210**
- Previously unassigned → Foot: **392**

The Left and Right decisions were made independently. Boundary B was selected
because it creates a coherent short Leg while preserving the broad, dominant
Foot and gives the best balance of Neutral fidelity and future independent Leg
motion.

The approved revision preserves:

- all Body ownership;
- all previously effective Foot GREEN ownership;
- both 275-pixel unresolved-interface registers;
- `restoration_owner = null`;
- Ground Shadow exclusion;
- Structural Geometry;
- Master RGB.

It does not authorize hidden ankle construction, reassignment of unresolved
interfaces, hierarchy, Draw Order, Pivot, Rig, weights, deformation,
restoration, final Appearance, SVG or Rive input.

## Stop statement

The evidence-generation step changed no ownership. After Human Approval, the
authorized application changed only the four effective diagnostic Leg/Foot
maps listed above and updated the relevant records. Original v005 source maps,
Structural Geometry, Master RGB, artwork, SVG and Rive remain unchanged.

No hidden ankle, connection, restoration, Draw Order, Pivot, Rig or animation
decision is implied.

## Current effective-map authority and identity

| Effective diagnostic map | GREEN pixels | SHA-256 |
|---|---:|---|
| Leg_L | 230 | `cfed7ead5fe08b2e9dc5629d88bd366b6cf2cb77cbe202368417e1f75ed512cc` |
| Foot_L | 2,004 | `2a169ad8c594337d3bb58fb2e21a6e807d5e5e6b0ac3b429c64933e98269fa4d` |
| Leg_R | 217 | `e20e820d3bf67ea81380a34520b234673f37d85b43eacb00188a0a6eb32210a2` |
| Foot_R | 2,004 | `747e06c4dd37752fe9d6f897228207ff2164d3422c01345bbbc5e5d2207770a5` |

These are current effective diagnostic ownership authorities only. They are not
final Appearance assets or Rive production inputs.

Original v005 source-map hashes remain equal to their v001 recorded hashes:

- Leg_L: `40e1a6e7819040fcc54978df28100945a76065118676daf4611a9547a9662f1a`
- Foot_L: `8378bd0561a46d57f9531b4728c0d08c96c68f1ef8b98e90203c3ca99fc59b84`
- Leg_R: `a205b1356fcb1e2fca80c6328270db1b6a38572caf3f86f2dab18da24a4e3dcb`
- Foot_R: `45377bede148ce32a5032e9bd183997d258750782ea2e312068b15c249aab811`

Both unresolved-interface maps remain unchanged:

- Left: 275 px; SHA-256
  `ed736168b519cd8d289e3f257e4b0991af64b546b3fd817af915aa2ea6960ce6`
- Right: 275 px; SHA-256
  `1f32d6e4cf406a34accb09ca13c3642cdff19e411de0cd976ec7887cc6e0756f`

**STOP — approved ownership revision recorded; do not begin the next gate**
