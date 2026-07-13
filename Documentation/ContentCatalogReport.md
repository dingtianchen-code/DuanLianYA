# Content Catalog Report

Generated from the provided DOCX action-reference files and calibrated against the Google Drive video folder.

## Outputs

- `App/锻炼YA/锻炼YA/Resources/Content/exercise_catalog.json`
- `App/锻炼YA/锻炼YA/Resources/Content/care_routines_p0.json`
- `App/锻炼YA/锻炼YA/Resources/Content/video_manifest.json`
- `Documentation/ContentCatalogReport.md`

## Source Scope

- DOCX input directory found: `动作资料/`
- Requested directory `Reference/动作资料/` was not present in this workspace.
- `所有动作分解.pdf`: missing in workspace, not read
- Google Drive video folder was read by metadata/listing only; no raw video files were committed.

## Preservation Rules

- Exercise names remain copied from the DOCX `名称` cells only. No new exercise records were created from video filenames.
- `actionDescription`, `dosageText`, `effectDescription`, and `difficultyText` preserve the original DOCX cell text.
- Video assets are authoritative for media binding and validation, but `exercise_catalog.json` remains the only exercise database source.
- Unmatched videos are marked `needs_review`; they do not create catalog exercises.

## Completeness

- Exercise catalog records from DOCX: 145
- Google Drive video assets: 144
- Body exercise videos: 142
- Preparation videos: 2
- P0 routines: 7

## Body Area Counts

| Body area | Catalog exercises | Video assets | Matched videos |
|---|---:|---:|---:|
| 颈肩 | 26 | 26 | 26 |
| 背部 | 26 | 26 | 24 |
| 胸部 | 16 | 16 | 15 |
| 腰腹 | 24 | 23 | 23 |
| 臀部 | 18 | 17 | 16 |
| 大腿 | 27 | 26 | 24 |
| 小腿 | 8 | 8 | 8 |
| 准备 | 0 | 2 | 0 |

## Video Asset Validation

- 视频总数量: 144
- 已匹配动作数量: 136
- 已匹配视频数量: 136
- 未匹配数量: 8
- 需要人工确认数量: 8
- 视频时长: Google Drive folder listing and file metadata available to this run did not expose duration; `durationSeconds` is `null`.

### 需要人工确认列表

- `准备/Video/标准站姿.mov` -> no catalog match (`标准站姿`)
- `准备/Video/标准坐姿.mov` -> no catalog match (`标准坐姿`)
- `大腿/大腿 躺/Video/坐姿压腿.mov` -> no catalog match (`坐姿压腿`)
- `大腿/大腿 躺/Video/单侧腿体前屈.mov` -> no catalog match (`单侧腿体前屈`)
- `臀部/臀部 躺/Video/伸髋.mov` -> no catalog match (`伸髋`)
- `胸部/胸部 坐/Video/双手叉腰扩胸.mov` -> no catalog match (`双手叉腰扩胸`)
- `背部/背部 坐/Video/肩部环绕.mov` -> no catalog match (`肩部环绕`)
- `背部/背部 站/Video/双手合十上举.mov` -> no catalog match (`双手合十上举`)

## Data Notes

- Matching used exact body area + posture + filename stem equality only. This intentionally leaves likely-but-not-exact synonyms for manual review.
- No SwiftUI files, Swift files, Xcode project files, or raw Google Drive media files were modified or added.
