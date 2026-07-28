# Character Primitive Definition — Theoretical Design Review

## Document status

- Review type: Production methodology review
- Status: **Approved — permanent Primitive Definition methodology**
- Scope: Definition of the **Primitive Definition** stage
- Production authority: Governs all future Primitive Definition work

This document defines what the Primitive Definition stage is intended to do. It does not assign an actual Primitive Type to Head, Body, Wing, Leg, Foot, Tail, Crest, or any other Duck Character module.

It creates no coordinates, outlines, curves, hidden construction, ownership boundary, Rig control or production geometry.

## 1. Proposed pipeline position

The proposed production sequence is:

```text
Character Design
        ↓
Primitive Definition
        ↓
Volume Definition
        ↓
Ownership Philosophy
        ↓
Human Annotation
        ↓
Geometry Candidate
        ↓
Geometry Baseline
        ↓
Clean Vector
        ↓
Assembly
        ↓
Rig
        ↓
Animation
```

Primitive Definition is proposed as the first production interpretation after Character Design. It comes before Volume Definition, module ownership, boundary annotation and geometry construction.

This sequence is now active as the permanent production pipeline and is registered in the Production Charter, Character System and Decision Log.

## 2. Purpose of Primitive Definition

A rendered character image is a two-dimensional projection of a conceived three-dimensional subject. The render communicates appearance, but it does not uniquely specify the structural idea that produced that appearance.

Primitive Definition establishes the fundamental identity of a production module before anyone asks where its boundary lies or how its path should be drawn. It provides a shared conceptual answer to questions such as:

- What kind of structural component is this module intended to be?
- What kind of volume does it conceptually express?
- Is its Neutral identity symmetric or intentionally asymmetric?
- Is it expected to behave as a rigid, soft, articulated, layered or secondary-motion component?
- What production role must it remain capable of serving?

These questions concern identity and behavior class, not implementation.

The purpose is to prevent later stages from using visible pixels, convenient SVG topology or immediate Rig needs as substitutes for an agreed structural concept.

## 3. Why this stage exists

### 3.1 A 2D result permits multiple structural explanations

The same silhouette can be interpreted as a sphere-like mass, an oval volume, a flattened layered form, or a compound structure. Each interpretation may reproduce the Neutral image while implying different hidden volume, deformation behavior and module relationships.

Primitive Definition makes the selected class of explanation explicit before those differences become embedded in geometry.

### 3.2 Ownership cannot define identity by itself

Ownership answers what an asset is responsible for. It does not necessarily answer what the represented component fundamentally is. If ownership is discussed first, production convenience may silently determine structural identity.

Primitive Definition gives Ownership Philosophy an upstream conceptual reference without prescribing the ownership decision.

### 3.3 Geometry is too concrete to carry unresolved conceptual choices

Coordinates and paths turn an assumption into an apparently precise artifact. Once a curve exists, later discussion can become anchored to that curve even when the underlying structural premise was never approved.

Primitive Definition separates conceptual approval from geometric commitment.

### 3.4 Stable concepts can outlive individual artwork revisions

An expression, pose, shading treatment or minor proportion revision may change visible pixels without changing what a module fundamentally represents. A stable Primitive Definition could provide continuity across those visual revisions.

Whether a particular change requires a Primitive Revision remains a future governance question; this review does not decide it.

## 4. Information that belongs in Primitive Definition

An approved Primitive Definition would contain only high-level conceptual attributes.

### 4.1 Structural category

The general kind of component the module represents within the character system. This is a semantic and structural classification, not a path topology or asset boundary.

The category should be understandable without referring to coordinates or a particular authoring tool.

### 4.2 Volumetric identity

The broad spatial character the module is intended to communicate—for example, whether it reads as a soft mass, a flattened appendage, a short support, a layered cluster or another conceptual volume class.

Volumetric identity remains qualitative at this stage. Exact dimensions, profiles, cross-sections and hidden surfaces belong to Volume Definition or later review.

### 4.3 Symmetry requirement

The intended symmetry class of the module's Neutral identity:

- conceptually symmetric;
- paired/mirrored;
- intentionally asymmetric;
- view-dependent or requiring later definition.

This records a design requirement, not a command to mirror coordinates.

### 4.4 Deformation nature

The broad type of deformation behavior the module should conceptually support, such as rigid movement, soft deformation, articulated motion, elastic response, delayed secondary motion or an intentionally restricted behavior class.

This does not define deformation zones, Mesh topology, Bone placement, weights, constraints or animation ranges.

### 4.5 Production intention

The reason the module exists as a production concept and what long-term character behavior it is expected to support. Production intention may describe needs such as independent expression, stable support, soft volume, overlap continuity or secondary motion.

It must remain outcome-oriented and tool-independent. It cannot prescribe SVG, Rive or Rig implementation.

### 4.6 Explicit uncertainty

If a conceptual attribute is not yet decided, the Primitive Definition should record it as unresolved rather than filling the gap through inference. Alternatives may be listed for human discussion, but no alternative becomes authoritative without explicit approval.

## 5. Information that must never belong in Primitive Definition

Primitive Definition must not contain or imply:

- pixel coordinates;
- anchor points or control handles;
- visible or hidden outlines;
- Bézier curves;
- SVG paths or SVG structure;
- raster tracing instructions;
- path counts or node budgets;
- hidden completion;
- ownership boundaries;
- adjacent-module boundaries;
- contact-shadow ownership;
- lighting or shading construction;
- masks or Clip Paths;
- Draw Order implementation;
- Rig pivots;
- Bone hierarchy;
- Mesh topology or weights;
- constraints;
- deformation regions;
- safe rotation, translation or scale ranges;
- animation poses or timing;
- runtime performance decisions;
- tool-specific solutions.

Including these details would collapse later approval stages into Primitive Definition and create false authority for implementation choices.

## 6. Primitive Definition is not Geometry

Primitive Definition describes what kind of structural idea a module represents. Geometry describes a spatial construction that can eventually be measured, reviewed and produced.

The distinction is essential:

| Primitive Definition | Geometry |
|---|---|
| Qualitative identity | Concrete spatial construction |
| Structural category | Curves, surfaces or editable shapes |
| General volumetric character | Defined profiles and relationships |
| Symmetry intention | Measurable symmetry implementation |
| Deformation nature | Actual deformable topology or regions |
| Production intention | Production-ready asset construction |

Approval of a Primitive Definition must never be presented as approval of a silhouette, hidden volume, path or module boundary.

## 7. Relationship with Volume Definition

Primitive Definition answers:

> What kind of structural entity is this module intended to be?

Volume Definition is expected to answer a later, more spatial question:

> How does that structural identity occupy three-dimensional space across approved views?

Primitive Definition constrains the conceptual class of the volume, while Volume Definition develops its spatial relationships. Volume Definition may consider depth, mass distribution, view consistency, overlap and concealed continuation, but its exact future scope requires a separate review.

Primitive Definition must not pre-empt that review by specifying profiles, coordinates, cross-sections or hidden surfaces.

If Volume Definition reveals that an approved Primitive concept cannot fit the character, work should stop for a Primitive Revision discussion rather than silently changing the Primitive through geometry.

## 8. Relationship with Ownership Philosophy

Primitive Definition describes structural identity. Ownership Philosophy determines how production responsibility should be organized around that identity.

Possible ownership questions include:

- Should one conceptual primitive correspond to one production asset?
- Can one primitive require several semantic assets?
- Can one asset contain several primitive roles?
- Which responsibilities should remain stable across views and revisions?
- How should deformation and shading responsibilities relate to module identity?

Primitive Definition can inform these questions but must not answer them automatically. A primitive is not necessarily an ownership boundary.

Ownership may need to balance visual fidelity, animation, Rig stability and maintainability. That trade-off remains part of Ownership Philosophy rather than Primitive Definition.

## 9. Relationship with Human Annotation

Human Annotation communicates approved boundary evidence or another explicitly defined annotation target. Primitive Definition provides upstream conceptual context, but it does not supply annotation points.

An annotator must not convert a qualitative Primitive description directly into an invented outline. Volume Definition and Ownership Philosophy must first clarify what the annotation is expected to represent.

Primitive approval therefore cannot authorize Exact Trace or Geometry Candidate work by itself.

## 10. Relationship with Geometry Candidate and Geometry Baseline

Geometry Candidate is the first stage where approved conceptual decisions can become a reviewable spatial proposal. It should cite the approved Primitive Definition, Volume Definition, Ownership Philosophy and Human Annotation relevant to that module.

The Geometry Candidate must distinguish:

- what is inherited from upstream approval;
- what is direct annotated evidence;
- what is newly proposed during Geometry Reconstruction;
- what remains uncertain and requires human decision.

A later Geometry Baseline freezes approved geometry. It does not retroactively redefine the Primitive. If the Baseline requires a different structural identity, that conflict should return to the appropriate upstream review.

## 11. Independence from tools and formats

Primitive Definition must remain valid regardless of whether the eventual asset is authored in Illustrator, SVG, Rive or another system.

Tool limitations cannot define Primitive identity. Conversely, approval of a Primitive does not guarantee that every tool can implement it without adaptation. Implementation conflicts should be reported downstream without silently revising the concept.

## 12. Suggested review form for a future module

The following is a proposed empty schema only. It is not populated for any Duck module in this document.

```text
Module:
Primitive Definition Version:
Status: Proposed / Approved / Revision Required

Structural Category:
Volumetric Identity:
Symmetry Requirement:
Deformation Nature:
Production Intention:

Explicit Uncertainties:
Out-of-Scope Confirmations:
Related Character Design Approval:
Human Decision Required:
```

The form must not be expanded with coordinates, outlines, hidden completion, ownership boundaries or Rig metadata.

## 13. Questions for human approval

Before activating Primitive Definition as a permanent production stage, the following methodological questions remain open:

1. Is the proposed five-field scope sufficient: structural category, volumetric identity, symmetry requirement, deformation nature and production intention?
2. Should Primitive Definitions be view-independent, or may a module hold explicitly approved view-dependent Primitive notes?
3. Can one module have more than one Primitive identity, or must compound structures be separated into additional modules?
4. What level of qualitative volume language is allowed before the document begins to act as Volume Definition?
5. What changes require a Primitive Revision rather than a Volume, Ownership or Geometry revision?
6. Must every visual module receive a Primitive Definition, or only structural modules?
7. How should unresolved Primitive alternatives be represented without influencing downstream work prematurely?
8. What evidence is required to approve a Primitive Definition when the rendered artwork permits several interpretations?

## Stop status

This methodology is approved and activates Primitive Definition as a permanent production stage. It still does not define any actual Duck Character Primitive Type; module identities are documented separately in `DuckStructuralPrimitiveDefinitions_v001.md`.

No Geometry, SVG, Candidate, hidden completion, ownership boundary, Rig change or production asset has been created. Work stops at the Primitive Definition methodology review pending human approval.
