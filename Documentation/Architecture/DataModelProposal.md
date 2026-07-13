# 锻炼YA Data Model Proposal

Purpose:

Design the future SwiftData data model for 锻炼YA based on `Documentation/ProductVision.md`.

This document only describes data structure. It does not implement Swift code.

Core product path:

Duck Home

→ Posture Interaction

→ Body Area Selection

→ Care Routine

→ Exercise Video

## Design Principles

- `Posture` is a first-level product category, not a filter.
- `DuckState` is the interaction state that makes `Posture` understandable.
- `Exercise` remains the action database imported from `exercise_catalog.json`.
- `VideoAsset` remains the media binding and validation layer imported from `video_manifest.json`.
- `CareRoutine` is the course composition layer that binds posture, body area, exercises, and videos into one executable care experience.
- No Flower, FlowerState, or flower growth system belongs in this model.

## Entity Relationship Overview

User

↓

WorkoutRecord

↓

CareRoutine

↓

Exercise

↓

VideoAsset

Product navigation relationship:

DuckState

↓

Posture

↓

BodyArea

↓

CareRoutine

↓

Exercise

↓

VideoAsset

## 1. User

Description:

The user profile and long-term app usage owner.

MVP required fields:

- `id`
- `createdAt`
- `updatedAt`

Future extension fields:

- `age`
- `gender`
- `occupation`
- `lifeScenario`
- `preferredPosture`
- `usualCareTime`
- `weeklyCareHabit`
- `onboardingCompleted`

Relationships:

- A `User` has many `WorkoutRecord` entries.
- A `User` may have one current profile preference set.

Notes:

Age, gender, occupation, and life scenario should support personalization without creating medical judgment or pressure.

## 2. DuckState

Description:

The visual and interaction state of the duck on Duck Home.

Examples:

- `standing`
- `sitting`
- `lying`

MVP required fields:

- `id`
- `code`
- `name`
- `postureId`
- `sortOrder`

Future extension fields:

- `staticAssetName`
- `animationAssetName`
- `transitionAnimationAssetName`
- `emotionState`
- `idleAnimationName`
- `accessibilityLabel`

Relationships:

- A `DuckState` belongs to one `Posture`.
- A `Posture` should have one primary `DuckState`.

Notes:

The duck is not decorative. `DuckState` should be modeled as a product entry state that drives the user's path into care routines.

## 3. Posture

Description:

The first-level product category.

Examples:

- `standing`
- `sitting`
- `lying`

MVP required fields:

- `id`
- `code`
- `name`
- `displayName`
- `duckStateId`
- `sortOrder`

Future extension fields:

- `subtitle`
- `shortDescription`
- `recommendedContext`
- `iconName`
- `themeColorToken`
- `isEnabled`

Relationships:

- A `Posture` has one primary `DuckState`.
- A `Posture` has many `CareRoutine` entries.
- A `Posture` has many `Exercise` entries.

Notes:

Posture is not a regular filtering field. It is the first product language users encounter through Duck Home.

## 4. BodyArea

Description:

The body area selected after posture interaction.

Examples:

- `neck_shoulders`
- `back`
- `waist`
- `legs`

MVP required fields:

- `id`
- `code`
- `name`
- `sortOrder`

Future extension fields:

- `shortDescription`
- `iconName`
- `parentAreaId`
- `displayGroup`
- `isEnabled`

Relationships:

- A `BodyArea` has many `CareRoutine` entries.
- A `BodyArea` may be referenced by many `Exercise` entries.

Notes:

Body area is the second selection layer. The user first chooses posture through the duck, then chooses the body area to care for.

## 5. CareRoutine

Description:

A course composition that turns posture, body area, exercises, and videos into one executable daily care experience.

MVP required fields:

- `id`
- `name`
- `description`
- `postureId`
- `bodyAreaId`
- `durationSeconds`
- `sortOrder`
- `isEnabled`

MVP required relationships:

- `posture`
- `bodyArea`
- `exercises`

Future extension fields:

- `difficulty`
- `scenario`
- `recommendedFrequency`
- `introText`
- `completionText`
- `coverAssetName`
- `version`
- `source`

Suggested join entity:

`CareRoutineExercise`

MVP required fields:

- `id`
- `careRoutineId`
- `exerciseId`
- `orderIndex`
- `durationOverrideSeconds`

Future extension fields:

- `repetitionTextOverride`
- `restAfterSeconds`
- `instructionOverride`
- `isOptional`

Relationships:

- A `CareRoutine` belongs to one `Posture`.
- A `CareRoutine` belongs to one `BodyArea`.
- A `CareRoutine` contains many `Exercise` entries through `CareRoutineExercise`.
- A `WorkoutRecord` may reference one completed `CareRoutine`.

Notes:

CareRoutine is the course layer. It should not be replaced by raw exercise lists in UI flow.

## 6. Exercise

Description:

The action database imported from `exercise_catalog.json`.

MVP required fields:

- `id`
- `name`
- `description`
- `difficulty`
- `postureId`
- `bodyAreaId`
- `durationSeconds`
- `sortOrder`
- `videoAssetId`

Future extension fields:

- `dosageText`
- `effectDescription`
- `sourceFileName`
- `sourceRowKey`
- `needsManualReview`
- `importVersion`
- `safetyNote`
- `accessibilityInstruction`

Relationships:

- An `Exercise` belongs to one primary `Posture`.
- An `Exercise` belongs to one primary `BodyArea`.
- An `Exercise` may appear in many `CareRoutine` entries.
- An `Exercise` may link to one primary `VideoAsset`.

Notes:

`Exercise` is the canonical action record. Video filenames must not create new exercises unless the catalog is explicitly updated by content review.

## 7. VideoAsset

Description:

The video resource model imported from `video_manifest.json`.

MVP required fields:

- `videoId`
- `exerciseId`
- `filePath`
- `source`
- `matchStatus`
- `needsManualConfirmation`

Future extension fields:

- `durationSeconds`
- `thumbnailPath`
- `googleDriveFileId`
- `googleDrivePath`
- `mimeType`
- `sizeBytes`
- `localBundlePath`
- `remoteURL`
- `checksum`
- `validatedAt`

Relationships:

- A `VideoAsset` belongs to one `Exercise` when matched.
- A `VideoAsset` may be unmatched and require manual review.

Notes:

Video assets validate and bind media to existing exercises. They are not the exercise database.

## 8. WorkoutRecord

Description:

The user's historical record of completed care.

MVP required fields:

- `id`
- `userId`
- `completedAt`
- `careRoutineId`
- `postureId`
- `bodyAreaId`
- `durationSeconds`
- `completedExerciseCount`

Future extension fields:

- `startedAt`
- `endedAt`
- `completionRate`
- `skippedExerciseIds`
- `note`
- `userFeeling`
- `source`
- `deviceId`

Suggested child entity:

`WorkoutExerciseRecord`

MVP required fields:

- `id`
- `workoutRecordId`
- `exerciseId`
- `orderIndex`
- `completed`

Future extension fields:

- `startedAt`
- `completedAt`
- `actualDurationSeconds`
- `videoAssetId`
- `skipReason`

Relationships:

- A `WorkoutRecord` belongs to one `User`.
- A `WorkoutRecord` references one `CareRoutine`.
- A `WorkoutRecord` stores the posture and body area used at completion time.
- A `WorkoutRecord` has many `WorkoutExerciseRecord` entries.

Notes:

WorkoutRecord should preserve historical context. If a routine changes later, the completed record should still reflect what the user actually did.

## MVP Required Model Set

- `User`
- `DuckState`
- `Posture`
- `BodyArea`
- `CareRoutine`
- `CareRoutineExercise`
- `Exercise`
- `VideoAsset`
- `WorkoutRecord`
- `WorkoutExerciseRecord`

## Future Extension Model Areas

- User preference and life scenario personalization
- Duck animation and emotion state
- Routine recommendation rules
- Video validation metadata
- Accessibility-specific exercise instructions
- Multi-device sync metadata

## Import Mapping

`exercise_catalog.json` maps primarily to:

- `Exercise`
- `BodyArea`
- `Posture`

`care_routines_p0.json` maps primarily to:

- `CareRoutine`
- `CareRoutineExercise`

`video_manifest.json` maps primarily to:

- `VideoAsset`

Import rule:

Existing JSON data should be treated as source content. SwiftData models should preserve stable IDs from the JSON where possible to avoid duplicate imports.
