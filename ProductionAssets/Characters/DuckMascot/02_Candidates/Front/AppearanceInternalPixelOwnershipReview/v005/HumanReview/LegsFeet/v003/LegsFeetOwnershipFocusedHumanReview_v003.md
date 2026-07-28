# Legs / Feet Ownership Focused Human Review v003

## Status

**APPROVE — OWNERSHIP ASSIGNMENT ONLY**

Current gate:

**Closed — Boundary B visible ownership applied; unresolved interfaces remain unassigned**

## Revision purpose

The v002 supplemental evidence was accepted, but the repeated 275-pixel
regions could not be assigned specifically to Foot restoration.

At initial v003 review preparation, this review:

- preserved the then-existing GREEN owned-visible assignments;
- preserves the exact two 275-pixel coordinate sets as evidence;
- removes those coordinates from module-specific Leg-neighbor and
  Foot-restoration attribution in the effective diagnostic classification;
- registers them separately as:
  - `LegFoot_Interface_Unresolved_L`;
  - `LegFoot_Interface_Unresolved_R`;
- leaves restoration ownership explicitly unassigned.

The original v005 ownership maps remain unchanged as historical diagnostic
evidence. The effective v003 diagnostic maps are review artifacts, not
production masks or Appearance assets.

The effective diagnostic maps were subsequently revised only through two
explicit Human-authorized decisions:

1. **Body / Legs / Feet Cross-Gate Reconciliation** removed 463 Left and
   477 Right Body-yellow pixels from effective Leg ownership while retaining
   them in Body.
2. **Leg / Foot Visible Semantic Boundary Review v001 — Boundary B** assigned
   previously unassigned visible evidence to the effective Leg and Foot maps.

Accordingly, “unchanged” applies to the original v005 historical source maps,
not to the current effective diagnostic maps.

## Source integrity

- Master:
  `ProductionAssets/Characters/DuckMascot/00_Reference/ProportionSheets/Front_MasterCrop.png`
- SHA-256:
  `89e2498d98a72c147ffcc6f4fcd501fa028f17a83820c7165a5e43049510e3fd`
- Master RGB modified: **no**
- Structural Geometry modified: **no**
- Visible Appearance modified: **no**
- SVG created: **no**
- Rive created: **no**

## Unchanged GREEN ownership

| Module | GREEN owned-visible pixels |
|---|---:|
| Leg_L | 230 |
| Foot_L | 2,004 |
| Leg_R | 217 |
| Foot_R | 2,004 |

Post-approval cross-gate note:

`Body / Legs / Feet Cross-Gate Reconciliation v001` assigned 463 Left and
477 Right Body-yellow pixels to Body. These coordinates were removed only
from the effective Leg GREEN diagnostic maps. The original v005 maps and
the v003 Human Review board remain historical evidence of the pre-
reconciliation state.

Post-reconciliation semantic-boundary note:

`Leg / Foot Visible Semantic Boundary Review v001` independently approved
Boundary B for Left and Right. The effective diagnostic maps now add:

- Left: 222 previously unassigned pixels to Leg_L and 394 to Foot_L;
- Right: 210 previously unassigned pixels to Leg_R and 392 to Foot_R.

No existing Foot GREEN ownership was removed or moved. Both 275-pixel
unresolved-interface registers remain unchanged and unassigned.

Complete overlap matrix:

| Pair | GREEN overlap |
|---|---:|
| Leg_L ↔ Foot_L | 0 px |
| Leg_R ↔ Foot_R | 0 px |
| Leg_L ↔ Leg_R | 0 px |
| Foot_L ↔ Foot_R | 0 px |
| Leg_L ↔ Foot_R | 0 px |
| Leg_R ↔ Foot_L | 0 px |

## Diagnostic classification revision

| Module | Neighbor before → effective v003 | Restoration before → effective v003 | Concealed unknown |
|---|---:|---:|---:|
| Leg_L | 275 → 0 | 0 → 0 | 658 |
| Foot_L | 4 → 4 | 275 → 0 | 658 |
| Leg_R | 275 → 0 | 0 → 0 | 645 |
| Foot_R | 4 → 4 | 275 → 0 | 645 |

The removed 275-pixel classes are not deleted. They are preserved in the
separate unresolved-interface register.

## Exact unresolved-interface evidence

### Left

- Registry ID: `LegFoot_Interface_Unresolved_L`
- Pixel count: **275**
- Bounding box: `x=108..147, y=380..412`
- Coordinate-set SHA-256:
  `2e26c0c4ccb569f482920578ccd510cd22865317c47b29b8b221cd465f82e12f`
- Restoration owner: **unassigned**

Files:

- [Left unresolved-interface map](DiagnosticClassifications_v003/LegFoot_Interface_Unresolved_L_v003.png)
- [Left exact coordinate list](DiagnosticClassifications_v003/LegFoot_Interface_Unresolved_L_Coordinates_v003.csv)

### Right

- Registry ID: `LegFoot_Interface_Unresolved_R`
- Pixel count: **275**
- Bounding box: `x=227..266, y=380..412`
- Coordinate-set SHA-256:
  `8083120666fd18b643151fca129cc989c0730f3747ff95bff85382ef49825539`
- Restoration owner: **unassigned**

Files:

- [Right unresolved-interface map](DiagnosticClassifications_v003/LegFoot_Interface_Unresolved_R_v003.png)
- [Right exact coordinate list](DiagnosticClassifications_v003/LegFoot_Interface_Unresolved_R_Coordinates_v003.csv)

The coordinate hashes use the preserved row-major sequence of unsigned
16-bit `(x,y)` pairs. They provide deterministic identity evidence independent
of display color or PNG encoding.

## Effective diagnostic maps

These maps preserve the original v005 classifications except that the
unsupported shared 275 coordinates are transparent within the Leg and Foot
module maps and are represented only by the separate amber unresolved
interface maps.

- [Leg_L effective map](DiagnosticClassifications_v003/Leg_L_EffectiveOwnershipMap_v003.png)
- [Foot_L effective map](DiagnosticClassifications_v003/Foot_L_EffectiveOwnershipMap_v003.png)
- [Leg_R effective map](DiagnosticClassifications_v003/Leg_R_EffectiveOwnershipMap_v003.png)
- [Foot_R effective map](DiagnosticClassifications_v003/Foot_R_EffectiveOwnershipMap_v003.png)

Amber means:

`INTERFACE_RESTORE_UNASSIGNED`

It does not mean Leg ownership, Foot ownership, visible Appearance, final
alpha, joint geometry, or restoration approval.

## Deferred decision contract

The two unresolved interface regions must remain unassigned until a later
Leg / Foot Restoration and Rig Blueprint decision determines:

- parent/child relationship;
- Draw Order;
- motion exposure;
- hidden connection construction;
- final restoration ownership.

No hidden ankle or joint is inferred by this classification.

## Ground Shadow

The v002 conservative Ground Shadow evidence remains valid:

- Foot_L GREEN ↔ confirmed gray Ground Shadow: **0 px**
- Foot_R GREEN ↔ confirmed gray Ground Shadow: **0 px**

Ground Shadow remains excluded and requires an independent future Appearance
decision.

## Preserved semantic constraints

- Leg and Foot remain separate semantic modules.
- No opposite-side raster mirroring is used.
- No Body RGB is assigned by this revision.
- No concealed region is restored.
- No automatic RGB continuation or generative fill is used.
- No Pivot, ankle, joint, Draw Order, Rig, or deformation decision is made.

## Review evidence

- [Focused Human Review board](LegsFeetOwnershipFocusedHumanReview_v003.png)
- [Machine-readable manifest](LegsFeetOwnershipFocusedHumanReview_v003_manifest.json)
- [Diagnostic classifications](DiagnosticClassifications_v003/)

## Human decision

**APPROVE — OWNERSHIP ASSIGNMENT ONLY**

Approved:

1. Unchanged GREEN visible ownership for Leg_L, Foot_L, Leg_R and Foot_R.
2. All six GREEN overlap checks at 0 pixels.
3. Removal of the repeated 275-pixel regions from module-specific Leg
   neighbor and Foot restoration attribution.
4. Separate classifications:
   - `LegFoot_Interface_Unresolved_L`;
   - `LegFoot_Interface_Unresolved_R`.
5. `restoration_owner = null / unassigned`.
6. Preservation of the exact coordinate sets, bounding boxes and SHA-256
   identity evidence.
7. Continued exclusion of Ground Shadow from Foot visible ownership.

Not approved:

- concealed Leg reconstruction;
- concealed Foot reconstruction;
- final ownership of either 275-pixel interface region;
- ankle or joint construction;
- parent/child relationship;
- Draw Order;
- pivots, rigging, weights or deformation;
- Ground Shadow Appearance;
- final Leg or Foot Appearance assets;
- complete Front assembly;
- Production SVG;
- Rive production input.

Required deferred contract:

The two unresolved interface regions remain unassigned until the Leg / Foot
Restoration and Rig Blueprint review determines:

- parent/child relationship;
- Draw Order;
- motion exposure;
- hidden connection construction;
- final restoration ownership.

Human note:

> The visible Legs / Feet ownership separation is approved. The two 275-pixel Leg / Foot interface regions are correctly preserved as unresolved and unassigned. No hidden joint or restoration ownership is approved by this decision.

## Stop gate

Stop at:

**Closed — ownership assignment only**

No Master RGB, visible Appearance, structural geometry, diagnostic coordinate
set, SVG, or Rive file was modified by this decision.

The cross-gate reconciliation modified only authorized effective Leg GREEN.
The later Boundary B decision then added approved previously unassigned pixels
to all four effective Leg/Foot maps. Original v005 source maps and both
275-pixel unresolved-interface registers remain unchanged.
