# Body / Legs / Feet Cross-Gate Reconciliation v001

## Status

**APPROVED — ASSIGN TO BODY ON BOTH SIDES**

Current gate:

**Closed — duplicate visible RGB assigned to Body; effective Leg GREEN revised**

## Scope

This package reviews two duplicate GREEN visible-ownership regions discovered
by the approved Front Ownership Coverage Closure Audit:

- Body ↔ Leg_L: **463 pixels**
- Body ↔ Leg_R: **477 pixels**

Historical review state: when this evidence package was first prepared, no
ownership assignment had yet been selected. Human Review subsequently selected
**ASSIGN TO BODY** for both sides, and the authorized effective Leg GREEN
diagnostic assignments were revised as recorded below.

No Master RGB, map, diagnostic classification, structural geometry, mask,
Artwork, restoration assignment, SVG, or Rive file was modified.

## Source authorities

- Front Master:
  `ProductionAssets/Characters/DuckMascot/00_Reference/ProportionSheets/Front_MasterCrop.png`
- SHA-256:
  `89e2498d98a72c147ffcc6f4fcd501fa028f17a83820c7165a5e43049510e3fd`
- Body map:
  `AppearanceInternalPixelOwnershipReview/v005/OwnershipMaps_v005/Body_OwnershipMap_v005.png`
- Leg and Foot effective diagnostic maps:
  `AppearanceInternalPixelOwnershipReview/v005/HumanReview/LegsFeet/v003/DiagnosticClassifications_v003/`

## Duplicate identity evidence

### Left

- Count: **463 pixels**
- Bounding box: `x=111..147, y=369..389`
- Coordinate SHA-256:
  `f65994e622f34ed5204a162890af5719d667bf9be19b6404e95f64c89f6668c6`
- [Exact coordinate list](BodyLeg_L_DuplicateCoordinates_v001.csv)

### Right

- Count: **477 pixels**
- Bounding box: `x=227..264, y=369..389`
- Coordinate SHA-256:
  `692c7341c38cacad3ae025e2ecefae6399ff25e3d25da8541cebe5825aba6ecc`
- [Exact coordinate list](BodyLeg_R_DuplicateCoordinates_v001.csv)

The hashes use row-major unsigned 16-bit `(x,y)` pairs. They identify the
coordinate sets independently of PNG encoding or overlay color.

## 1200% evidence

Each side provides:

1. unchanged Master RGB;
2. Body GREEN ownership overlay;
3. Leg GREEN ownership overlay;
4. exact duplicate-pixel overlay;
5. Body-owned RGB isolated;
6. Leg-owned RGB isolated.

Files:

- [Left evidence review](BodyLeg_L_EvidenceReview_1200pct_v001.png)
- [Right evidence review](BodyLeg_R_EvidenceReview_1200pct_v001.png)

Nearest-neighbor enlargement is used. No smoothing or interpolation is applied
to the inspected source pixels.

## Interpretation options

Each side includes all three ownership interpretations:

### A. ASSIGN TO BODY

- disputed pixels remain present in Neutral;
- their future motion ownership would belong to Body;
- no decision about hidden Leg construction is implied.

### B. ASSIGN TO LEG

- the same disputed Master pixels remain present in Neutral;
- their future motion ownership would belong to Leg;
- no decision about hidden Body restoration is implied.

### C. MOVE TO INTERFACE_UNRESOLVED

- disputed pixels are removed from both module reconstructions in the
  diagnostic view;
- the resulting transparent region demonstrates the visual consequence of
  deferring ownership;
- no production transparency or mask change is authorized.

For each option the package supplies:

- reconstruction;
- 50% overlay against Master;
- amplified pixel difference.

Files:

- [Left interpretation options](BodyLeg_L_InterpretationOptions_1200pct_v001.png)
- [Right interpretation options](BodyLeg_R_InterpretationOptions_1200pct_v001.png)

Important:

Options A and B are pixel-identical in Neutral because both use the same
Master RGB at the same coordinates. Their difference is semantic and becomes
observable only when Body and Leg move independently.

## RGB and alpha statistics

### Left duplicate region

| Statistic | Value |
|---|---|
| RGB min | `[246, 190, 0]` |
| RGB max | `[255, 221, 134]` |
| RGB mean | `[253.537797, 206.473002, 18.889849]` |
| RGB median | `[254, 203, 4]` |
| RGB standard deviation | `[1.235795, 7.566182, 26.112209]` |
| Master alpha | RGB source; review load is uniformly 255 |
| Body GREEN diagnostic alpha | 175 |
| Leg GREEN diagnostic alpha | 175 |

### Right duplicate region

| Statistic | Value |
|---|---|
| RGB min | `[246, 191, 0]` |
| RGB max | `[255, 221, 154]` |
| RGB mean | `[253.637317, 206.060797, 16.566038]` |
| RGB median | `[254, 203, 4]` |
| RGB standard deviation | `[1.192443, 7.517866, 24.320242]` |
| Master alpha | RGB source; review load is uniformly 255 |
| Body GREEN diagnostic alpha | 175 |
| Leg GREEN diagnostic alpha | 175 |

Diagnostic overlay alpha is review metadata, not source opacity.

## Visual classification evidence

For a reproducible descriptive comparison only:

- Body-like yellow proxy:
  `R > 220, G > 150, B < 100`
- Leg-like orange proxy:
  `R > 220, G < 170, B < 80`
- near-neutral/gray proxy:
  RGB channel spread `≤ 30`

| Side | Body-like yellow | Leg-like orange | Near-neutral/gray | Light or possible antialias exception |
|---|---:|---:|---:|---:|
| Left | 462 | 0 | 0 | 1 |
| Right | 476 | 0 | 0 | 1 |

Exceptional pixels:

- Left: `(111,380)`, RGB `[246,194,134]`
- Right: `(264,380)`, RGB `[249,202,154]`

Evidence interpretation:

- the disputed visible RGB appears overwhelmingly Body-like yellow;
- no disputed sample appears Leg-like orange under the documented proxy;
- one light/mixed boundary sample exists on each side;
- the pixels are visible Master RGB, not concealed empty regions;
- the final motion owner remains indeterminate from the flattened Master,
  because original Body and Leg layers are unavailable.

This is evidence, not an automatic ownership decision.

## Required cross-checks

| Check | Result |
|---|---:|
| Body ↔ Foot_L GREEN visible overlap | 0 px |
| Body ↔ Foot_R GREEN visible overlap | 0 px |
| Left Body/Leg duplicate ↔ `LegFoot_Interface_Unresolved_L` | 0 px |
| Right Body/Leg duplicate ↔ `LegFoot_Interface_Unresolved_R` | 0 px |
| Left Body/Leg duplicate ↔ confirmed gray Ground Shadow evidence | 0 px |
| Right Body/Leg duplicate ↔ confirmed gray Ground Shadow evidence | 0 px |

The existing 275-pixel Leg/Foot unresolved-interface sets remain untouched and
separate from this 940-pixel Body/Leg conflict.

## Independent-side requirement

Left and right require independent Human decisions because:

- raster appearance is not mirrored;
- duplicate counts differ;
- coordinate sets differ;
- RGB statistics differ;
- future motion exposure can differ by side.

Exact Neutral structural symmetry does not authorize raster ownership
mirroring.

## Review evidence

- [Human decision summary](BodyLegFootCrossGateReconciliation_v001.png)
- [Left 1200% evidence](BodyLeg_L_EvidenceReview_1200pct_v001.png)
- [Right 1200% evidence](BodyLeg_R_EvidenceReview_1200pct_v001.png)
- [Left A/B/C options](BodyLeg_L_InterpretationOptions_1200pct_v001.png)
- [Right A/B/C options](BodyLeg_R_InterpretationOptions_1200pct_v001.png)
- [Machine-readable audit](BodyLegFootCrossGateReconciliation_v001.json)

## Human decision

### Left

**ASSIGN TO BODY**

The 463 disputed pixels remain in Body GREEN and have been removed from the
effective Leg_L GREEN diagnostic map.

### Right

**ASSIGN TO BODY**

The 477 disputed pixels remain in Body GREEN and have been removed from the
effective Leg_R GREEN diagnostic map.

Rationale accepted:

1. Left contains 462 Body-like yellow samples, no Leg-like orange sample and
   one light/antialiased exception.
2. Right contains 476 Body-like yellow samples, no Leg-like orange sample and
   one light/antialiased exception.
3. Both regions are visually continuous with the Body lower edge.
4. Leg assignment would carry a large yellow Body fragment during Leg motion.
5. Unresolved assignment would remove visible Body RGB and create an
   unjustified gap.
6. Neither region overlaps Feet, the existing 275-pixel unresolved-interface
   registers, or confirmed gray Ground Shadow evidence.

Post-revision GREEN counts:

- Body: **25,384** — unchanged;
- Leg_L: **8**;
- Leg_R: **7**.

Global result:

- GREEN sum: **71,591**;
- unique GREEN union: **71,591**;
- Body ↔ Leg_L overlap: **0 px**;
- Body ↔ Leg_R overlap: **0 px**.

Human note:

> The disputed Left and Right regions are visible Body-yellow appearance, not Leg-orange appearance. Both are assigned to Body. Hidden Body/Leg motion-exposure regions remain outside this decision.

## Stop gate

Stop at:

**Closed — visible ownership reconciliation approved**

This decision does not approve hidden reconstruction, attachment, Draw Order,
hierarchy, pivots, Rig, deformation, final Appearance, SVG, or Rive input.
