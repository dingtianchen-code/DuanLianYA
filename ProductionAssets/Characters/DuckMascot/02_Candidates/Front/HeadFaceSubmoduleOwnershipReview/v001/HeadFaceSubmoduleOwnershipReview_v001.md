# Head / Face Submodule Ownership Review v001

**Status:** REVIEW PREPARED — HUMAN APPROVAL REQUIRED  
**Scope:** visible-pixel ownership proposals only  
**Current gate:** Head / Face Submodule Ownership — Human Approval Gate

## 1. Authority and limits

### Visible authority

`Front_MasterCrop.png` is the sole authority for visible RGB.

### Face carrier

Source:

`01_Source/Artwork/Face/Baseline/v001/Front/Duck_Face_Front_Candidate_v001.png`

The carrier contains **9,876 visible pixels** and reproduces the current
Neutral Face presentation. It is approved geometry/history evidence, not a
final Appearance authority or production input.

Its limitations are material:

- Eye dark appearance is stored as a combined `IrisPupil` carrier.
- No independent Pupil visible-pixel classification exists.
- Both existing Highlight layer images contain zero pixels.
- The visible white eye indentation/glint cannot be deterministically separated
  from EyeWhite using the approved carrier alone.
- Several raw semantic layers contain neighboring connected components; those
  components are documented below and excluded from these proposals.
- All source layer masks are binary. They carry antialiased Master RGB but do
  not define final extraction alpha.

No hidden expression asset was inferred or synthesized.

## 2. Proposed visible-pixel counts

| Proposed module | Left | Right | Current interpretation |
|---|---:|---:|---|
| EyeWhite | 1,675 | 1,525 | Independently visible carrier evidence |
| Iris | 900 | 881 | Complete visible dark `Iris/Pupil` carrier mass |
| Pupil | 0 | 0 | No independently evidenced visible pixels |
| Glint | 0 | 0 | No independently evidenced visible pixels |
| Brow | 234 | 220 | Independently visible carrier evidence |
| CheekMark | 32 | 29 | Independently visible carrier evidence |
| Nostril | 24 | 22 | Two independent connected components |

Additional proposals:

| Module | Pixels |
|---|---:|
| Beak | 4,334 |
| Head Base | 34,005 |

The proposed Face union is **9,876 pixels**, identical to the Face carrier
union. Carrier pixels left unassigned are **0**. Proposed pixels outside the
carrier are **0**.

This equality does not approve the semantic split. In particular, the current
proposal leaves Pupil and Glint as zero-independent-pixel/deferred categories
and places the visible eye dark mass under Iris carrier responsibility pending
Human judgment.

## 3. Mutual-exclusion audit

The full matrix is provided in:

`HeadFaceSubmoduleOwnership_OverlapMatrix_v001.png`

Results:

- every off-diagonal Face-to-Face overlap: **0 px**;
- every proposed Face-to-proposed-Head-Base overlap: **0 px**;
- proposed Face union: **9,876 px**;
- proposed Head Base: **34,005 px**.

These are review proposals only. The effective Head ownership map was not
changed.

## 4. Neighbor contamination and boundary evidence

Raw carrier-derived layer issues:

| Source layer | Excluded neighboring component | Pixels |
|---|---|---:|
| Eye_L_IrisPupil | Brow-like non-Iris connected component | 135 |
| Eye_R_IrisPupil | Brow-like non-Iris connected component | 154 |
| Beak_Nostrils | Eye/Iris-like non-nostril connected components | 577 |
| Current Head map | Face-overlapping pixels removed only from proposed Head Base | 142 |

The proposals use connected-component evidence plus approved semantic roles.
They do not infer ownership from RGB color alone.

Antialiased boundary pixels remain present as unchanged Master RGB inside the
binary proposal masks. This review does not decide fractional alpha, matte
cleanup, restoration or final extraction.

## 5. Reconstruction evidence

- `HeadBase_FaceRemoved_v001.png` shows proposed Head Base with all proposed
  Face submodules removed.
- `NeutralFace_ProposedSubmodulesOnly_v001.png` shows only proposed Face
  submodules.
- `HeadFace_ProposedReconstruction_v001.png` combines proposed Head Base and
  Face proposals.
- `HeadFace_Overlay50_v001.png` is the required 50% Master overlay.
- `HeadFaceSubmoduleOwnership_PixelDifference_v001.png` is an amplified
  difference view.

These images test coverage and contamination only. They are not final
Appearance assets and do not approve Head restoration behind Face elements.

## 6. Zero-visible / deferred declarations

The following have **0 independently authorized visible pixels** in this
Neutral review:

- UpperEyelid_L / UpperEyelid_R
- LowerEyelid_L / LowerEyelid_R
- Pupil_L / Pupil_R as separately extractable Appearance modules
- Glint_L / Glint_R as separately extractable Appearance modules
- Mouth cavity
- Tongue
- Future expression-only geometry

Zero-visible means only that current approved evidence does not support an
independent Neutral ownership assignment. It does not remove the semantic
module or authorize future synthesis.

## 7. Independent Human decisions

### Left Eye

Proposal:

- EyeWhite_L: 1,675 px
- Iris_L combined dark carrier: 900 px
- Pupil_L: 0 independently evidenced pixels
- Glint_L: 0 independently evidenced pixels

Decision:

- [ ] APPROVE
- [ ] REVISE
- [ ] REJECT

### Right Eye

Proposal:

- EyeWhite_R: 1,525 px
- Iris_R combined dark carrier: 881 px
- Pupil_R: 0 independently evidenced pixels
- Glint_R: 0 independently evidenced pixels

Decision:

- [ ] APPROVE
- [ ] REVISE
- [ ] REJECT

### Brows

- Brow_L: [ ] APPROVE [ ] REVISE [ ] REJECT
- Brow_R: [ ] APPROVE [ ] REVISE [ ] REJECT

### Cheek Marks

- CheekMark_L: [ ] APPROVE [ ] REVISE [ ] REJECT
- CheekMark_R: [ ] APPROVE [ ] REVISE [ ] REJECT

### Beak and nostrils

- Beak: [ ] APPROVE [ ] REVISE [ ] REJECT
- Nostril_L: [ ] APPROVE [ ] REVISE [ ] REJECT
- Nostril_R: [ ] APPROVE [ ] REVISE [ ] REJECT

### Head Base

- Proposed Face-subtracted Head Base: [ ] APPROVE [ ] REVISE [ ] REJECT

### Zero-visible / deferred contract

- Upper/lower eyelids: [ ] APPROVE [ ] REVISE [ ] REJECT
- Mouth cavity: [ ] APPROVE [ ] REVISE [ ] REJECT
- Tongue: [ ] APPROVE [ ] REVISE [ ] REJECT
- Future expression-only geometry: [ ] APPROVE [ ] REVISE [ ] REJECT

## 8. Deliverables

- `HeadFaceSubmoduleOwnershipReview_v001.png`
- `HeadFace_L_EyeEvidence_1600pct_v001.png`
- `HeadFace_R_EyeEvidence_1600pct_v001.png`
- `HeadFace_BeakNostrilEvidence_1600pct_v001.png`
- `HeadFaceSubmoduleOwnership_OverlapMatrix_v001.png`
- `HeadBase_FaceRemoved_v001.png`
- `NeutralFace_ProposedSubmodulesOnly_v001.png`
- `HeadFace_ProposedReconstruction_v001.png`
- `HeadFace_Overlay50_v001.png`
- `HeadFaceSubmoduleOwnership_PixelDifference_v001.png`
- `ProposedOwnershipMaps_v001/`
- `HeadFaceSubmoduleOwnershipAudit_v001.json`

## Stop statement

No Head ownership, Face carrier, effective map, Master RGB, Structural
Geometry, Artwork, SVG, Rive file or approval record was modified.

**STOP — Head / Face Submodule Ownership — Human Approval Gate**
