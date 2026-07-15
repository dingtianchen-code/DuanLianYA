# 锻炼YA Decision Log

Status: Active
Last updated: 2026-07-16

## 记录规则

本文档只记录会影响产品方向、用户路径、模块边界或长期实现方式的决策。

每条决策包含：日期、状态、背景、决策、原因、影响与重新评估条件。新决策应追加记录，不应静默改写历史。

---

## DL-001: Duck Home 作为 App 单一核心入口

- Date: 2026-07-14
- Status: Accepted
- Owners: Product / iOS

### 背景

旧实现使用“统计、训练、成长”底部主导航，首页也保留了 Stats Home 和 Flower 相关表达。这种结构会让功能分类先于产品核心体验，无法突出鸭子姿态作为一级产品语言。

### 决策

1. Duck Home 是 App 的根页面、核心首页与唯一一级产品入口。
2. App 不使用 Tab 导航作为主要入口。
3. 顶层使用单一 `NavigationStack`，后续页面从 Duck Home 推进。
4. Duck Mascot 具有 `Standing`、`Sitting`、`Lying` 三个明确姿态。
5. 默认为 Standing；从默认状态左滑进入 Sitting，右滑进入 Lying。
6. 当前阶段只建立交互骨架，不引入复杂动画。
7. 动作推荐、身体部位、训练记录与鸭子成长作为 Duck Home 后续扩展路径。

### 原因

- 用户可先通过直观姿态理解“我现在怎样照顾身体”。
- 鸭子从装饰角色变成可交互的训练入口。
- 减少传统健身 App 的分类压力和功能噪音。
- 单入口可以使 MVP 聚焦在完整的身体照顾路径上。

### 影响

- `AppContainer` 不再持有 Tab 选中状态，改为导航路径所有者。
- `HomeView` 成为根页面，姿态状态与滑动逻辑独立建模。
- 统计、训练和成长不再并列为一级 Tab。
- 旧 Stats Home 与 Flower 代码可暂时保留以避免本次范围扩大，但不得作为新功能依赖或当前首页入口。

### 已考虑的替代方案

- 保留底部 Tab：拒绝，因为会继续把功能分类置于 Duck Home 之上。
- 以身体部位作为首页：拒绝，因为身体部位是姿态之后的二级选择。
- 立即制作复杂角色动画：延后，交互和业务路径应先稳定。

### 重新评估条件

只有当用户研究或完整 MVP 数据显示单入口明显阻碍关键任务时，才重新评估顶层导航。重新评估必须新增 Decision Log 条目，不得直接恢复 Tab。

### 实现证据

- `App/AppContainer.swift`
- `Core/Models/DuckPosture.swift`
- `Features/Home/HomeView.swift`
- `Features/Home/HomeViewModel.swift`
- `Features/Home/Components/PostureInteractionView.swift`
- `Features/Home/Components/DuckHomeQuickActions.swift`
- `锻炼YATests/__YATests.swift`

---

## DL-002: Duck Front Production Artwork Design Lock

- Date: 2026-07-15
- Status: INVALID — rolled back by DL-003
- Owners: Character Design / Rigging / Motion

### 决策

Duck Front v005 确认为当前唯一官方 Front Production Artwork，并进入 Design Lock。后续工作重点从 Character Design 转入 Character Rigging 与 Motion Development。

除非发现明确且记录完整的 Production Bug，否则后续 Rive、Rig、State Machine 和动画制作不得修改角色比例、外轮廓、Crest、Body Rim、五官、配色或光影设计。动画实现与 Artwork 冲突时，必须调整 Rig 或 Motion 实现，不得修改已锁定 Artwork。

任何视觉修改必须作为新的设计决策提出，不属于常规动画开发范围。

### 实现证据

- 原实现证据已在 Production Reset 中删除，不得作为生产依据。

---

## DL-003: Duck Front Production Reset

- Date: 2026-07-15
- Status: Accepted
- Owners: Character Design / Rigging / Motion

### 背景

事实审计确认 v005 并非依据唯一有效的 Front Master Reference 完整逆向重建，而是主要继承 v003，仅局部修改 Crest 与 Body Rim。此前对 v003、v005、Design Lock、Freeze Manifest、SHA-256、Rive Import 与 Rig 的生产认定均不成立。

### 决策

1. v003 Production、v005 Production、Design Lock、Freeze Manifest、相关 SHA-256、当前 Rive Working File 与当前 Rive Asset 全部标记为 INVALID。
2. 删除全部错误 Front SVG、Preview、Overlay、Difference、导出 PNG 与可重新生成错误 Artwork 的 QA 渲染脚本。
3. 停止 Rive、Rig、State Machine、Animation、Production Freeze 与 Design Lock。
4. 当前唯一有效的 Front 视觉依据为：
   - `ProductionAssets/Characters/DuckMascot/00_Reference/MasterReference/Duck_MasterReference_V3.png`
   - `ProductionAssets/Characters/DuckMascot/00_Reference/ProportionSheets/Front_MasterCrop.png`
5. 当前不存在 Front Production SVG。未经新的静态视觉验收，不得开始 SVG 重建、Rive 导入或动画开发。

### 影响

- 所有 v003 之后的 Front Production 流程作废。
- Character System、Motion Guide、Expression Guide、命名、Layer Blueprint、Pivot 与目录规范仅作为规范保留，不代表任何 Artwork 已获批准。
- QA 日志与 Rig 异常截图仅作为审计证据保留，不得用作视觉或生产依据。

---

## DL-004: Duck Turnaround Reference Set Approval

- Date: 2026-07-16
- Status: Accepted
- Owners: Character Design / Production

### 背景

Front 是唯一原始 Master Reference。为了在 Front Artwork Reconstruction 前建立可用于跨视角校验的角色体系，SideL 与 Back 先以 Turnaround Reference Candidate 身份提交人工视觉审批。

### 决策

1. Duck Character 正式建立 Front / SideL / Back 三视图 Reference Set。
2. `Front_MasterCrop.png` 是 Front Master Reference，也是唯一原始视觉基准。
3. `Duck_SideL_Candidate_v001.png` 提升为 Approved Turnaround Reference，但不提升为 Master Reference。
4. `Duck_Back_Candidate_v001.png` 提升为 Approved Turnaround Reference，但不提升为 Master Reference。
5. 三张图片从本决策生效起是 Duck Character 的唯一有效视觉依据。Front 对核心身份、比例和设计语言保持最高优先级。
6. 任何新视觉内容必须记录来源依据、直接参考部分、设计推导部分与待人工审批部分。

### 影响

- 未来 SVG Reconstruction、Illustrator Artwork、Rive Asset、Rig、Animation、Expression Pose 和 New View Angle 必须以该三视图体系为视觉依据。
- 旧 SVG、v001–v005 旧 Artwork、旧 Preview 和旧 Rive 仍为无效资产，不得因本次 Reference Approval 恢复使用。
- SideL 和 Back 的参考获批不等于对应 Production Artwork 获批。
- 当前生产 Gate 仍为 `Step 1 — Head Outline Reconstruction`；必须同时校验 Front Master、SideL Approved Reference 和 Back Approved Reference，并在该模块审批点停止。
- 本决策不授权生成 SVG、进入 Rive、建立 Rig 或制作 Animation。
