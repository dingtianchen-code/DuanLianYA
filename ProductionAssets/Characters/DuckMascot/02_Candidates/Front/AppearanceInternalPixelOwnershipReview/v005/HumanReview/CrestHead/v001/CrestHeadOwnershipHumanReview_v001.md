# Crest / Head Ownership — Focused Human Review v001

**Parent stage:** Front Appearance Internal Pixel Ownership Review v005  
**Scope:** Decision A only — Crest / Head ownership  
**Status:** APPROVE — OWNERSHIP ASSIGNMENT ONLY  
**Date:** 2026-07-27  
**Current Gate:** Closed — visible-pixel ownership assignment approved; restoration remains unresolved

This package does not change, recalculate or approve any v005 ownership
assignment.

## Evidence board

- File: `CrestHeadOwnershipHumanReview_v001.png`
- Dimensions: `3600 × 4680`
- SHA-256:
  `1795640a6e8841c6efdbfa7cf41036a05f87007916ada1b078c30fa78165190a`

## Source authority

- Master:
  `/Users/dave/Projects/锻炼YA/ProductionAssets/Characters/DuckMascot/00_Reference/ProportionSheets/Front_MasterCrop.png`
- Master SHA-256:
  `89e2498d98a72c147ffcc6f4fcd501fa028f17a83820c7165a5e43049510e3fd`
- Crest ownership map:
  `../../OwnershipMaps_v005/Crest_OwnershipMap_v005.png`
- Head ownership map:
  `../../OwnershipMaps_v005/Head_OwnershipMap_v005.png`
- Interface crop: `x=120…279`, `y=0…129`
- Enlargement: `800%`, nearest-neighbor

Exact source paths, source hashes and class counts are recorded in
`CrestHeadOwnershipHumanReview_v001_manifest.json`.

## Color meaning

- **Green:** module-owned visible Master RGB.
- **Red:** visible RGB belonging to a neighboring module but included by the
  earlier v004 structural coverage.
- **Blue:** concealed unknown region with no direct Front RGB authority.
- **Magenta:** future restoration-required region.
- **Transparent:** no proposed Appearance ownership.

The classes are mutually exclusive and remain exactly as recorded by the
existing v005 maps.

## Existing full-map assignments

| Module | Owned visible | Neighbor contamination | Concealed unknown | Restoration required |
|---|---:|---:|---:|---:|
| Crest | 1,521 | 0 | 2,136 | 317 |
| Head | 34,147 | 9,891 | 0 | 2,500 |

## Known contamination and uncertainty

### Crest

- Only the visible three-feather regions are proposed as directly extractable
  Crest RGB.
- The broad lower semicircle formerly carried inside Crest coverage is not
  treated as visible Crest Artwork.
- 2,136 Crest-coverage pixels remain concealed unknown.
- 317 exposure-sensitive Crest edge/root pixels remain pending a separate
  Restoration Gate.
- No visible Head texture is copied into the concealed Crest root.

### Head

- The v005 Head proposal excludes 9,891 visible Face/neighbor pixels from
  Head-base ownership.
- 2,500 pixels remain restoration-required around Face-covered or
  exposure-sensitive regions.
- This review does not approve `HeadPlusFace_NeutralCarrier` as final Head
  Artwork.

## Generated review evidence

- `CrestHead_MasterCrop_800pct_v005.png`
- `CrestHead_ProposedOwnershipMaps_v005.png`
- `Crest_OwnedVisible_Isolated_v005.png`
- `Head_OwnedVisible_Isolated_v005.png`
- `CrestHead_NeutralOwnershipReconstruction_v005.png`
- `CrestHead_MasterOverlay50_v005.png`
- `CrestHead_PixelDifference_v005.png`

The reconstruction leaves unresolved interface pixels as checkerboard. It does
not fill unknown or restoration-required regions.

## Human decision

**APPROVE — OWNERSHIP ASSIGNMENT ONLY**

Approved:

- the current visible-pixel ownership division between Crest and Head;
- direct Crest ownership of only the three visible feather regions;
- exclusion of visible Head RGB from concealed Crest-root ownership;
- exclusion of Face and neighboring-module pixels from Head Base ownership.

Not approved:

- concealed Crest root reconstruction;
- Crest motion-exposure restoration;
- Head restoration behind Face elements;
- final Crest or Head Appearance assets;
- complete Front assembly;
- Production SVG or Rive input.

Unresolved conditions remain:

- 2,136 concealed-unknown Crest pixels;
- 317 Crest restoration-required pixels;
- 2,500 Head restoration-required pixels;
- no automatic RGB continuation or generative fill;
- future Crest roots must remain three independently controllable complete
  forms;
- future Head restoration must contain no baked-in Face appearance.

Human note:

> The current Crest / Head ownership interpretation is accepted. Concealed and
> exposure-sensitive regions must proceed through separate restoration review
> and are not approved by this decision.

## Stop Gate

Stopped at:

**Crest / Head Ownership — Gate closed for ownership assignment only**

No mask, Artwork, ownership assignment, SVG, Rive file, Rig or approval record
was modified.
