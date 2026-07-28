# Body / Wings Ownership Human Review v001

## Status

**APPROVE — OWNERSHIP ASSIGNMENT ONLY**

Current gate:

**Closed — visible-pixel ownership assignment approved; concealed and restoration regions remain unresolved**

This package prepares a focused review of the existing v005 ownership assignments. It does not revise masks, artwork, ownership classes, restoration regions, or structural geometry.

## Review scope

This gate asks only whether the current visible-pixel ownership division among:

- Body
- Wing_L
- Wing_R

is acceptable.

It does not approve:

- concealed Body reconstruction;
- concealed Wing-root reconstruction;
- motion-exposure restoration;
- final Body or Wing Appearance assets;
- Body Rim production artwork;
- shadows or contact-shadow assets;
- a complete Front assembly;
- Production SVG generation;
- Rive production input.

## Visual authority

- Approved Front visual authority:
  `ProductionAssets/Characters/DuckMascot/00_Reference/Master/Duck_MasterReference_V3.png`
- Registered Front crop used by v005:
  `ProductionAssets/Characters/DuckMascot/00_Reference/Master/Front_MasterCrop.png`

The approved Front artwork controls visible appearance. Structural Geometry Baselines remain construction authorities only and do not replace Master RGB.

## Existing v005 ownership evidence reviewed unchanged

- Body ownership map:
  `../../Modules/Body/Body_PixelOwnershipMap_v005.png`
- Wing_L ownership map:
  `../../Modules/Wing_L/Wing_L_PixelOwnershipMap_v005.png`
- Wing_R ownership map:
  `../../Modules/Wing_R/Wing_R_PixelOwnershipMap_v005.png`

No ownership class was changed while preparing this review package.

## Ownership-map color meaning

- **Green:** module-owned visible RGB.
- **Red:** neighboring-module RGB incorrectly included by the earlier v004 extraction.
- **Blue:** concealed or otherwise unknown region; no RGB ownership is asserted.
- **Magenta:** future restoration-required region.
- **Transparent:** no current ownership assignment for that module.

These colors are diagnostic classifications, not production artwork.

## Current assignment counts

| Module | Owned visible RGB | Neighbor RGB contamination | Concealed unknown | Restoration required |
|---|---:|---:|---:|---:|
| Body | 25,384 | 3,248 | 7,566 | 769 |
| Wing_L | 3,652 | 377 | 1,183 | 328 |
| Wing_R | 3,650 | 385 | 1,275 | 336 |

Cross-module overlap among green owned-visible assignments:

- Body ↔ Wing_L: **0 pixels**
- Body ↔ Wing_R: **0 pixels**
- Wing_L ↔ Wing_R: **0 pixels**

This overlap audit confirms only that the current green ownership classes do not double-assign the same source pixels. It does not approve the classifications themselves.

## Evidence package

1. [BodyWingsOwnershipHumanReview_v001.png](BodyWingsOwnershipHumanReview_v001.png)  
   Complete Human Review board.

2. [BodyWings_MasterCrop_800pct_v005.png](BodyWings_MasterCrop_800pct_v005.png)  
   Nearest-neighbor 800% inspection of the Body / Wings region.

3. [BodyWings_ProposedOwnershipMaps_v005.png](BodyWings_ProposedOwnershipMaps_v005.png)  
   Existing Body, Wing_L and Wing_R ownership maps shown together without modification.

4. [Body_OwnedVisible_Isolated_v005.png](Body_OwnedVisible_Isolated_v005.png)  
   Body-owned visible Master RGB only.

5. [Wing_L_OwnedVisible_Isolated_v005.png](Wing_L_OwnedVisible_Isolated_v005.png)  
   Wing_L-owned visible Master RGB only.

6. [Wing_R_OwnedVisible_Isolated_v005.png](Wing_R_OwnedVisible_Isolated_v005.png)  
   Wing_R-owned visible Master RGB only.

7. [BodyWings_NeutralOwnershipReconstruction_v005.png](BodyWings_NeutralOwnershipReconstruction_v005.png)  
   Neutral reconstruction from current owned-visible RGB. Checkerboard areas remain unresolved and are not filled.

8. [BodyWings_MasterOverlay50_v005.png](BodyWings_MasterOverlay50_v005.png)  
   50% comparison against the registered Front Master crop.

9. [BodyWings_PixelDifference_v005.png](BodyWings_PixelDifference_v005.png)  
   Pixel-difference evidence for the current ownership-only reconstruction.

10. [BodyWingsOwnershipHumanReview_v001_manifest.json](BodyWingsOwnershipHumanReview_v001_manifest.json)  
    Package sources, dimensions, counts and hashes.

## Known contamination and uncertainty

### Body

- The current review records **3,248** pixels classified as neighboring-module RGB rather than Body-owned visible RGB.
- **7,566** pixels remain concealed or unknown.
- **769** pixels remain restoration-required.
- This gate must not reinterpret structural Body completion as permission to copy Wing, Head, Leg, Foot, Beak, Face, shadow, or rim appearance into Body.

### Wing_L

- **377** pixels are classified as neighboring-module RGB.
- **1,183** pixels remain concealed or unknown.
- **328** pixels remain restoration-required.
- No concealed root is filled with Body or Head RGB.

### Wing_R

- **385** pixels are classified as neighboring-module RGB.
- **1,275** pixels remain concealed or unknown.
- **336** pixels remain restoration-required.
- No concealed root is filled with Body or Head RGB.

### Interface limitation

The current evidence separates visible source-pixel ownership from unresolved concealed regions. It does not establish motion-safe restored artwork for:

- Head / Wing_L;
- Head / Wing_R;
- Body / Wing_L;
- Body / Wing_R.

Those regions require a later, separately authorized restoration review.

## Human decision

**APPROVE — OWNERSHIP ASSIGNMENT ONLY**

Approved:

1. The current visible-pixel ownership division among Body, Wing_L and Wing_R.
2. Zero overlap among their green owned-visible assignments.
3. Each Wing owns only its respective currently visible Master RGB.
4. Neighboring Head, Body, opposite Wing, Leg, Foot, Face, shadow and unrelated RGB are excluded from the wrong moving module.
5. Concealed and restoration-required regions remain unresolved.

Not approved:

- concealed Body reconstruction;
- concealed Wing-root reconstruction;
- Head/Wing or Body/Wing motion-exposure restoration;
- final Body or Wing Appearance assets;
- Body Rim production treatment;
- Body deformation;
- Wing pivots, rigging or weights;
- complete Front assembly;
- Production SVG;
- Rive production input.

Required downstream constraints:

1. Body concealed-unknown and restoration-required pixels remain unresolved.
2. Wing_L and Wing_R concealed and restoration-required pixels remain unresolved.
3. One Wing's restored artwork must not be mirrored to create the other.
4. Automatic RGB continuation, generative fill and neighboring-module texture copying remain prohibited.
5. Body Rim requires a separate ownership and restoration decision.
6. Future Wing-root restoration must preserve shoulder-based motion and must not bake Head or Body lighting into the moving Wing.
7. Future Body restoration must not bake Wing, Leg, Foot, Face or Ground Shadow appearance into Body.

Human note:

> The current visible-pixel ownership separation among Body, Wing_L and Wing_R is accepted. Concealed roots, motion-exposure regions, Body Rim and all final Appearance reconstruction remain unapproved.

## Stop gate

Stop at:

**Closed — ownership assignment only**

No ownership map, mask, artwork or geometry was modified by this decision.
