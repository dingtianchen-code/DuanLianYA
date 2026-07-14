# 锻炼YA Development Status

Status: Active snapshot
Snapshot date: 2026-07-14

## 1. 当前阶段

项目正在搭建 Duck Home 驱动的 MVP 训练闭环。当前优先级是稳定交互骨架与模块边界，不是增加复杂视觉、动画或 AI 能力。

## 2. 已完成

### Duck Home 单入口架构

- Duck Home 已成为 App 根页面。
- 已移除底部主导航的入口职责。
- 顶层已统一为单一 `NavigationStack`。
- `Standing`、`Sitting`、`Lying` 已建立为明确业务状态。
- 默认 Standing、左滑 Sitting、右滑 Lying 已实现。
- 三个姿态支持循环滑动与按钮直接选择。
- 已提供基本无障碍标签和操作提示。
- 姿态模型、ViewModel、交互 View 和导航组装已拆分。

### 扩展接缝

以下路径已在 Duck Home 与顶层导航中预留：

- 姿态对应的动作推荐
- 身体部位选择
- 训练记录
- 鸭子成长反馈

这些目前是占位路由，不代表对应功能已完成。

### 验证

- iPhone 17 / iOS 26.5 Simulator 应用编译成功。
- 应用已在模拟器安装并启动，Duck Home 首屏可正常呈现。
- 3 项姿态状态测试通过：默认状态、左右滑动、短拖动不切换。
- 测试 Target 的历史错误模块引用已修正为当前 App 模块名。

## 3. 尚未完成

- 正式 Duck Mascot 的 Standing / Sitting / Lying 视觉资源
- 姿态之间的角色过渡动画
- 基于姿态的 Care Routine 推荐接入
- 身体部位选择流程
- 完整的训练执行闭环
- 真实训练记录查询与展示
- 鸭子成长规则与反馈展示
- Duck Home 关键路径 UI 自动化测试

## 4. 已知技术债务

- 仓库仍保留 Stats Home、Flower View、`FlowerState` 和花朵成长相关旧代码。它们已不是当前首页路径，后续应在独立的清理任务中审计和移除。
- 当前 Duck Mascot 使用轻量占位表现，不是最终角色资源。
- 四个扩展方向目前还是占位页，尚未绑定真实业务数据。

## 5. 下一阶段候选项

本节只记录候选项，不表示已授权开发。启动前应等待明确的产品优先级。

- 为 Duck Home 接入正式鸭子角色资源
- 实现 Body Area Selection
- 将 Care Routine 数据接入姿态推荐
- 建立 Duck Home -> Care Routine -> Video 最小可用路径
- 单独清理与当前产品方向冲突的 Flower 遗留代码

## 6. 状态维护规则

- 每次完成一个可验证的产品增量后更新本文档。
- 只记录已验证的“已完成”，占位 UI 必须标记为未完成。
- 架构或产品方向变更先更新 [DecisionLog.md](DecisionLog.md)。
- 产品范围改变同步更新 [ProductVision.md](ProductVision.md)。
