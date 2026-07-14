# 锻炼YA Decision Log

Status: Active
Last updated: 2026-07-14

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
