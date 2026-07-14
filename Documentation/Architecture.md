# 锻炼YA Architecture

Status: Active
Last updated: 2026-07-14

## 1. 文档目的

本文档描述当前 App 架构的事实、边界与扩展原则。产品理由见 [ProductVision.md](ProductVision.md)，架构变更理由见 [DecisionLog.md](DecisionLog.md)，实际完成度见 [DevelopmentStatus.md](DevelopmentStatus.md)。

## 2. 技术栈

- 平台：iOS
- 语言：Swift
- UI：SwiftUI
- 观察状态：Observation
- 本地数据：SwiftData
- 内容资源：JSON Catalog 与本地媒体资源

## 3. 顶层导航

App 只使用一个顶层 `NavigationStack`。`AppContainer` 直接呈现 `HomeView`，Duck Home 是根页面和所有核心用户路径的起点。

当前不使用 `TabView` 或自定义底部 Tab 作为一级导航。动作推荐、身体部位、训练记录和鸭子成长都从 Duck Home 进入。

```text
App
└── NavigationStack
    └── Duck Home
        ├── Posture Interaction
        ├── Care Recommendation
        ├── Body Area Selection
        ├── Training History
        └── Duck Growth
```

## 4. Duck Home 分层

### Model

`DuckPosture` 定义 `standing`、`sitting` 和 `lying` 三个稳定业务状态，同时提供展示文案与左右滑动后的状态映射。

### ViewModel

`HomeViewModel` 持有当前选中姿态，负责直接选择和滑动阈值判定。ViewModel 不包含具体 UI 布局、资源渲染或导航实现。

### View

- `HomeView` 组合首页内容，把用户意图通过闭包向上传递。
- `PostureInteractionView` 负责鸭子姿态展示、滑动手势、直接选择和无障碍语义。
- `DuckHomeQuickActions` 只表达扩展入口，不持有导航状态。
- `AppContainer` 是顶层组装与导航目的地的唯一所有者。

## 5. 姿态状态机

默认状态为 `Standing`。

- 从 Standing 左滑 -> Sitting
- 从 Standing 右滑 -> Lying
- 三个姿态之间可继续循环切换
- 短距离拖动不改变状态
- 姿态按钮与滑动是同一状态的两种输入方式

目前不引入复杂过渡动画。正式 Duck Mascot 资源与动画可在不改变 `DuckPosture` 和 `HomeViewModel` 接口的前提下替换占位视觉。

## 6. 项目目录边界

```text
App/              App 入口、顶层组装、全局导航
Features/         按用户能力拆分的 View 与 ViewModel
Core/Models/      跨界面使用的业务模型
DesignSystem/     色彩、字体、间距和通用交互规则
Resources/        内容数据、图片、视频和参考资源
锻炼YATests/       业务逻辑与状态单元测试
锻炼YAUITests/     关键用户路径 UI 测试
```

## 7. 扩展规则

### 动作推荐

以当前 `DuckPosture` 作为输入，由独立的 Care Routine 服务或 Feature 返回推荐。不把推荐逻辑写入 `HomeView`。

### 身体部位

作为姿态选择后的二级交互，不取代 Duck Home 的一级入口地位。

### 训练记录

由持久化层提供查询，首页只负责进入记录体验，不直接管理 SwiftData 上下文。

### 鸭子成长反馈

成长数据与 Duck Mascot 表现分离。成长规则应位于业务层，首页根据结果渲染角色反馈。

## 8. 数据与内容原则

- `Posture` 是一级产品分类。
- `CareRoutine` 绑定姿态、身体部位与动作。
- `Exercise` 与 Video Asset 保持明确映射。
- SwiftData 用于用户数据、完成记录与后续成长状态。
- 不新增 Flower 相关模型或依赖。

更详细的领域模型提案见 [Architecture/DataModelProposal.md](Architecture/DataModelProposal.md)。

## 9. 变更原则

以下变更需要先记录到 [DecisionLog.md](DecisionLog.md)：

- 改变 Duck Home 的单入口地位
- 引入新的顶层导航模式
- 改变姿态一级分类
- 引入新持久化或同步系统
- 改变 Core 与 Feature 的依赖方向
