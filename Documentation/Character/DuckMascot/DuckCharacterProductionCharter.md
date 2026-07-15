# Duck Character Production Charter

> Effective: 2026-07-15
>
> Status: Active — governs all future Duck Character production work.

## 1. Production objective

The primary asset is **Production Artwork**.

- SVG is an export format of approved Artwork.
- Rive is an implementation of frozen Artwork.
- Rig is an animation control system for frozen Artwork.
- None of SVG, Rive, Rig, State Machine, constraints, performance requirements, or animation convenience may become a visual design source.

Required workflow:

```text
Master Reference
        ↓
Artwork Analysis
        ↓
Artwork Reconstruction
        ↓
Artwork Approval
        ↓
Export Production SVG
        ↓
SVG Verification
        ↓
Import Rive
        ↓
Rig
        ↓
Animation
```

## 2. Sole visual authority

The only valid visual references are:

- `ProductionAssets/Characters/DuckMascot/00_Reference/MasterReference/Duck_MasterReference_V3.png`
- `ProductionAssets/Characters/DuckMascot/00_Reference/ProportionSheets/Front_MasterCrop.png`

Old SVG, Preview, Overlay, Difference, Production Artwork, Rive files, Rive assets, Rig outputs and animation outputs must never be reused as visual references.

**Master Reference is specification, not inspiration.**

Do not optimize, reinterpret, redesign, embellish, simplify or technically normalize the character. Production work must faithfully reconstruct the approved design.

## 3. Faithful reconstruction

Front Artwork uses an incremental approval workflow:

1. Head Outline
2. Face — Eyes / Brows / Beak
3. Body Outline
4. Crest
5. Body Rim
6. Wings
7. Legs
8. Shadow
9. Final Artwork Assembly

Only one module may be active. Work stops immediately after its submission. The next module cannot begin without explicit user approval.

## 4. Module approval gate

Each module submission must include:

- Master Reference comparison
- High-magnification local view
- Overlay
- Difference
- Current module production working asset in the format explicitly authorized for that gate

An unapproved module cannot be used as a reference for another module.

## 5. Production SVG

No Production SVG may exist until the complete Front Artwork has been separately approved and assembled.

Production SVG is a faithful export of approved Artwork. It is not a redesign, optimization, reinterpretation or new source of truth.

## 6. SVG verification and freeze

Before Rive:

```text
Approved Artwork → SVG → PNG → Overlay → Difference
```

SVG Freeze is allowed only after the exported SVG is verified against the approved Artwork.

## 7. Rive boundary

Rive import, Rig, State Machine and Animation are forbidden before SVG Freeze.

After Freeze, Artwork remains fixed. Animation must adapt to Artwork. If a technical conflict occurs, production stops and the conflict is reported; Artwork is not changed without a new user-owned design decision.

## 8. Collaboration authority

- Codex is responsible for faithful implementation and evidence.
- The user retains all visual and design decisions.
- Codex must not make substitute design decisions.
- Technical conflicts must be surfaced for joint resolution.

## 9. Current gate

The only authorized production task is:

**Step 1 — Head Outline Reconstruction**

Not authorized at this gate:

- Face or any later Artwork module
- Production SVG export
- SVG Freeze
- Rive import
- Rig
- State Machine
- Animation

Work must stop at the Head Outline Approval Gate.
