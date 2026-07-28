# Front Head / Face Neutral Appearance Extraction Candidate v002 — Method C

Status: **APPROVED — METHOD C — NEUTRAL RASTER APPEARANCE AUTHORITY**

Current gate: **Closed — Neutral Raster Appearance Authority established**

## Revision scope

Candidate v002 uses Head / Face Ownership Authority Revision v002.2 and the same approved Method C process.

Only:

`EyeWhite_R_Neutral_MethodC_Candidate_v002.png`

was regenerated. It incorporates the approved 124-pixel R-01 ownership transfer using unchanged Front Master RGB.

The other eleven Candidate assets were copied byte-for-byte from Candidate v001. Their individual v001/v002 SHA-256 values and identity results are recorded in `HeadFaceNeutralAppearanceExtractionCandidateManifest_v002.json`.

## Required identity evidence

- unchanged Candidate assets required: `11`
- unchanged Candidate assets verified byte-identical: `11`
- `EyeWhite_R` v001 SHA-256: `6d55a4e3e11cecb2dc373f442723faf11457dcf4bf5a69fbd1d14fa2be4add10`
- `EyeWhite_R` v002 SHA-256: `4ee2134efcbe03156dd47253e24bee227a2a7265a8f9e8bdbafd5905f021b9a7`
- old EyeWhite_R support: `1,525 px`
- revised EyeWhite_R support: `1,649 px`
- authorized addition: `124 px`
- R-02 `(242,183)`: remains transparent

## Invariants

- all off-diagonal overlaps: `0`
- boundary displacement: `0 px`
- mask expansion beyond approved R-01: `0`
- reconstructed pixels: `0`
- synthesized pixels: `0`
- geometry changes: `0`
- no mirroring
- binary alpha retained

## Review evidence

- `CandidateAssets_REVIEW_ONLY/`: all 12 full-canvas RGBA Candidate assets
- `Evidence/HeadFaceNeutral_MethodC_Candidate_v002_Recomposition.png`
- `Evidence/HeadFaceNeutral_MethodC_Candidate_v002_SevenBackgrounds.png`
- `Evidence/HeadFaceNeutral_MethodC_Candidate_v002_iOSScale.png`
- `Evidence/EyeWhite_R_Candidate_v002_BackgroundInspection.png`
- `MotionExposureDiagnostics/EyeWhite_R_Neutral_MotionExposure_v002.png`
- `MotionExposureDiagnostics/HeadFaceGroup_MotionExposure_v002.png`
- `HeadFaceNeutralAppearanceExtractionCandidateManifest_v002.json`

The former vertical transparent background leak is absent in checkerboard, dark gray, black, saturated blue, and saturated magenta diagnostic views.

Candidate v001 remains:

**REJECTED — UPSTREAM EYEWHITE_R OWNERSHIP OMISSION**

## Human approval questions

1. Is the approved R-01 omission fully repaired?
2. Does EyeWhite_R now read as one continuous white-eye field?
3. Does any white, dark, or colored seam remain on the required stress backgrounds?
4. Are all 11 unaffected Candidate assets accepted as byte-identical to v001?
5. Does R-02 correctly remain transparent and deferred?
6. Does the full Neutral recomposition preserve the approved appearance?
7. Is Candidate v002 acceptable at the reviewed iOS scales?
8. Do the ±2 px diagnostic stills reveal any new ownership contamination?
9. May Candidate v002 be promoted to Neutral Production Appearance?

This Candidate does not authorize Final Production Appearance authority, hidden restoration, Pupil, Glint, eyelids, expression assets, SVG, Rive, Pivot, Bone, Mesh, Rig, State Machine, or Animation.

## Human approval

The repaired `EyeWhite_R`, eleven byte-identical unaffected assets, full Neutral recomposition, required backgrounds, and reviewed iOS scales are approved.

This establishes **Neutral Raster Appearance Authority only**. Raster extraction is not declared the final animation implementation format.

Next gate: **Front Head / Face Selective Vector Reconstruction Planning Review v001 — Human Approval Gate**
