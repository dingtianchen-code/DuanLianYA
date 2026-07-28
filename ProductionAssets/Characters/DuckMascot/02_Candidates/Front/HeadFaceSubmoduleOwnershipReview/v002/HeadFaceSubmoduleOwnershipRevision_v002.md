# Head / Face Submodule Ownership Revision v002

**Status:** HUMAN APPROVAL REQUIRED  
**Revision type:** Semantic Naming and Contract Correction only  
**Pixel assignment change:** No  
**Current gate:** Head / Face Submodule Ownership Revision v002 — Human Approval Gate

## Approved v001 evidence retained

The following v001 findings are carried forward without coordinate, alpha or
pixel changes:

- Face union: **9,876 px**
- Head Base: **34,005 px**
- Unassigned Face carrier RGB: **0 px**
- Proposed pixels outside Face carrier: **0 px**
- All off-diagonal overlaps: **0 px**

## Old-to-new name mapping

| v001 name | v002 name | Pixels | Meaning |
|---|---|---:|---|
| Iris_L | EyeDark_L | 900 | Complete Neutral dark-eye Appearance carrier |
| Iris_R | EyeDark_R | 881 | Complete Neutral dark-eye Appearance carrier |

The change is semantic only. It does not identify an independent Iris or Pupil
from the current raster evidence.

## Revised module register

| Module | Visible pixels | Contract |
|---|---:|---|
| EyeWhite_L | 1,675 | Neutral composite EyeWhite carrier containing the connected visible white highlight indentation |
| EyeWhite_R | 1,525 | Neutral composite EyeWhite carrier containing the connected visible white highlight indentation |
| EyeDark_L | 900 | Combined visible Neutral dark-eye carrier; iris/pupil function unresolved |
| EyeDark_R | 881 | Combined visible Neutral dark-eye carrier; iris/pupil function unresolved |
| Pupil_L | 0 | Independent separation deferred |
| Pupil_R | 0 | Independent separation deferred |
| Glint_L | 0 | Independent separation deferred |
| Glint_R | 0 | Independent separation deferred |
| Brow_L | 234 | Unchanged approved visible range |
| Brow_R | 220 | Unchanged approved visible range |
| CheekMark_L | 32 | Unchanged approved visible range |
| CheekMark_R | 29 | Unchanged approved visible range |
| Beak | 4,334 | Neutral visible Appearance carrier |
| Nostril_L | 24 | Unchanged approved visible range |
| Nostril_R | 22 | Unchanged approved visible range |
| Head_Base | 34,005 | Unchanged approved visible range |

## Carrier contracts

### EyeDark

`EyeDark_L` and `EyeDark_R` own the complete visible Neutral dark-eye
Appearance carrier. They currently combine any iris/pupil visual function.

The current evidence does not authorize:

- independent Iris extraction;
- independent Pupil extraction;
- inferred Iris/Pupil boundary;
- reconstructed hidden eye content.

### EyeWhite

`EyeWhite_L` and `EyeWhite_R` are Neutral composite carriers. Each includes the
connected white indentation that visually functions as the current
highlight/glint.

This does not eliminate `Glint_L` or `Glint_R` as future semantic modules.
Independent Glint separation requires a separate Human-authorized
reconstruction review.

### Beak

`Beak` is the Neutral visible Appearance carrier. It does not authorize a
permanently rigid single-piece mouth system.

Future separation of:

- UpperBeak;
- LowerBeak;
- MouthCavity;
- Tongue

requires separate Human Shape Interpretation and Restoration approval.

## Deferred contract

The following remain zero-independent-pixel/deferred:

- Pupil_L / Pupil_R
- Glint_L / Glint_R
- UpperEyelid_L / UpperEyelid_R
- LowerEyelid_L / LowerEyelid_R
- Mouth cavity
- Tongue
- Future expression-only geometry
- UpperBeak / LowerBeak production separation

No hidden or expression artwork was synthesized.

## SHA-256 identity evidence

Every v002 proposal map is byte-identical to its v001 source map.

| v002 module | Pixels | SHA-256 | Identity |
|---|---:|---|---|
| EyeWhite_L | 1,675 | `489a0edbced9382ffe71716be51cfb30799979660524bf8b779d45bbb6883c1a` | byte-identical |
| EyeWhite_R | 1,525 | `89e1bda9805fca02817ec34cb633afb76ca2ae5f413a16c71892a893c800cb94` | byte-identical |
| EyeDark_L | 900 | `d98694ac0fe4a48f3695ca545bd7b32e6575a4d64f05f88d65bfc9734099b6d2` | byte-identical to Iris_L v001 |
| EyeDark_R | 881 | `e8b1c62fb0f2e6c7dd5ad2a950c8b4e60c27223f5339c48ec6e018b3631e4db8` | byte-identical to Iris_R v001 |
| Pupil_L | 0 | `f25df9ca0419721197c978e6137cdc311ebed27f7cbdf710fb52cf98580119ce` | byte-identical |
| Pupil_R | 0 | `f25df9ca0419721197c978e6137cdc311ebed27f7cbdf710fb52cf98580119ce` | byte-identical |
| Glint_L | 0 | `f25df9ca0419721197c978e6137cdc311ebed27f7cbdf710fb52cf98580119ce` | byte-identical |
| Glint_R | 0 | `f25df9ca0419721197c978e6137cdc311ebed27f7cbdf710fb52cf98580119ce` | byte-identical |
| Brow_L | 234 | `1b818f90d66f5ad8ef5160da6ed2e7b1e47d31cdffc75c8395ac7fc7babc953c` | byte-identical |
| Brow_R | 220 | `5ccaa38885a0bb720a570cc4fbefd8ea909737bece3fa569f6ff924c04a52682` | byte-identical |
| CheekMark_L | 32 | `569533706ac1c24c8f41cf6e95f949bf87f9576b20105ca005b838faa920804d` | byte-identical |
| CheekMark_R | 29 | `08a087f081917dcab6f91680dbc92ff1d7f95414818c8232a80638662246950c` | byte-identical |
| Beak | 4,334 | `3c2ae7e1ea133d87ba2829ea74b3da6f247b31de2276d198509f8dab03fa84ad` | byte-identical |
| Nostril_L | 24 | `f5bc1e3b349d64ab33d592ef769a9be2734f22bb290da04857e7c19affd8350a` | byte-identical |
| Nostril_R | 22 | `967c59817f10c9af3b71693abd7e512aa044111790e47fe5a7edbeac13af342e` | byte-identical |
| Head_Base | 34,005 | `68c2c889642463beff37e225edfc58c2e3fadfca801b93e17dffbed7c0337266` | byte-identical |

Pixel and alpha deviation for every map: **0**.

## Overlap audit

The revised matrix uses the v002 semantic names and unchanged pixel masks:

`HeadFaceSubmoduleOwnershipRevision_v002_OverlapMatrix.png`

- all off-diagonal overlaps: **0 px**;
- all diagonal counts: identical to v001.

## Human decision

- [ ] APPROVE v002 SEMANTIC CONTRACT
- [ ] REVISE
- [ ] REJECT

## Stop statement

No production extraction Artwork, final alpha, reconstructed Pupil or Glint,
eyelid, mouth cavity, tongue, expression Artwork, SVG, Rive, Pivot, Bone, Mesh,
Rig, State Machine or Animation was created.

No existing ownership assignment or authority file was modified.

**STOP — Head / Face Submodule Ownership Revision v002 — Human Approval Gate**
