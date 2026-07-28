# Front EyeWhite Visible Ownership Omission Audit v001

Status: **APPROVED — EYEWHITE_R VISIBLE OWNERSHIP OMISSION CONFIRMED**

Current gate: **Closed — R-01 transfer authorized; R-02 deferred**

No ownership authority map or Candidate asset was modified. No Candidate v002 was created.

## Scope and authority

- Master: unchanged `Front_MasterCrop.png`
- Master SHA-256: `89e2498d98a72c147ffcc6f4fcd501fa028f17a83820c7165a5e43049510e3fd`
- Current ownership authority: v002.1 maps, read-only
- Audited: `EyeWhite_R`, `EyeWhite_L`, `EyeDark_R`, `EyeDark_L`, and `Head_Base`
- All other Head/Face maps participate only in overlap verification

## EyeWhite_R finding

The audit found 125 near-white Master pixels inside the right-eye control ROI that are transparent in the full current Head/Face recomposition.

### R-01 — connected vertical-gap cluster

- coordinates: recorded exactly in `EyeWhite_R_OmissionCoordinates_v001.csv`
- bounding box: `x=269…273`, `y=142…177` (`[269,142,274,178)`)
- pixel count: `124`
- coordinate-list SHA-256: `1026afbb18595a2a6e1faaae284fbd8d1af03bbb71d6b427e939c3ac5044d873`
- Master RGB range: R `248–255`, G `249–255`, B `236–255`
- current `Head_Base` assignment: `0`
- current `EyeDark_R` assignment: `0`
- current any-module assignment: `0`
- current classification: **transparent / unassigned**
- minimum distance from approved `EyeWhite_R` support: `1 px`
- maximum distance: `5 px`
- 4-connected to approved `EyeWhite_R`: **yes**
- 8-connected to approved `EyeWhite_R`: **yes**

R-01 visibly belongs to the continuous white eye field in the unchanged Master. It is proposed for transfer to `EyeWhite_R` at the ownership level, subject to Human approval.

### R-02 — isolated one-pixel finding

- coordinate: `(242,183)`
- bounding box: `[242,183,243,184)`
- pixel count: `1`
- coordinate SHA-256: `34a5249596e3f83e5664a7279715edaebd8f94af8d5915594e56d5dc58d25def`
- current classification: **transparent / unassigned**
- distance from approved `EyeWhite_R`: `2.236 px`
- 4-connected: **no**
- 8-connected: **no**

Because R-02 is not connected to current `EyeWhite_R`, it is not included in the proposed transfer. It remains an explicit single-pixel Human-decision item.

The CSV provides the exact coordinate, Master RGB, current classification, distance, and proposed disposition for every one of the 125 findings.

## EyeWhite_L bilateral control

The identical near-white/unassigned test in the left-eye control ROI found:

- analogous vertical gaps: `0`
- isolated near-white transparent pixels: `0`
- incorrect `Head_Base` assignment detected by this test: `0`
- incorrect `EyeDark_L` assignment detected by this test: `0`

No left-eye ownership change is proposed.

## Proposed diagnostic correction

The review-only diagnostic adds only the 124 connected R-01 coordinates to a temporary in-memory `EyeWhite_R` support:

- unchanged Master RGB is used at those coordinates
- no Candidate PNG is written
- no v002.1 map is written or overwritten
- R-02 remains transparent and unresolved
- no pixel is removed from any module
- all off-diagonal overlaps remain `0`

The seven-background diagnostic confirms that the reported vertical background leak is absent after the proposed R-01 transfer. This is visual evidence only, not a revised authority map.

## Overlap audit

Before and after the proposed R-01 transfer, the full overlap matrix covers:

- `EyeWhite_R`
- `EyeDark_R`
- `Head_Base`
- every other approved Head/Face submodule

All off-diagonal overlap counts are `0`. The complete before/after matrices are in `FrontEyeWhiteVisibleOwnershipOmissionAudit_v001.json`.

## Evidence

- `FrontEyeWhiteVisibleOwnershipOmissionAudit_v001_1600pct.png`
- `EyeWhite_BilateralControl_v001.png`
- `EyeWhite_R_ProposedCorrection_SevenBackgrounds_v001.png`
- `EyeWhite_R_OmissionCoordinates_v001.csv`
- `FrontEyeWhiteVisibleOwnershipOmissionAudit_v001.json`

## Human decision questions

1. Is R-01 confirmed as omitted visible `EyeWhite_R` ownership?
2. Is the proposed transfer of its 124 pixels to `EyeWhite_R` approved?
3. Should R-02 remain unresolved, be assigned to `EyeWhite_R`, or be rejected as an omission?
4. Is the left-eye bilateral control sufficient to confirm that no analogous omission is present?
5. May a revised `EyeWhite_R` ownership authority map be created in a later explicitly authorized step?

No revised authority map, Candidate v002, Production Artwork, hidden restoration, new eye design, Pupil, Glint, eyelid, SVG, Rive, Rig, or Animation has been created.

## Human decision

- R-01: **APPROVED FOR TRANSFER TO EYEWHITE_R**
- R-02: **DEFERRED — SINGLE-PIXEL AMBIGUITY — NON-CONNECTED — NO CURRENT VISIBLE IMPACT**
- EyeWhite_L: **NO REVISION REQUIRED**

Authorized next package: **Front Head / Face Ownership Authority Revision v002.2**
