# 锻炼YA Product Vision

Status: Active
Last updated: 2026-07-14

## 1. 文档目的

本文档定义锻炼YA的产品方向与 MVP 边界，是产品取舍的首要依据。

项目级文档体系：

- [ProductVision.md](ProductVision.md)：为什么做、为谁做、核心体验是什么
- [Architecture.md](Architecture.md)：当前技术边界、模块与扩展方式
- [DecisionLog.md](DecisionLog.md)：已接受的重要产品和技术决策
- [DevelopmentStatus.md](DevelopmentStatus.md)：当前已完成、待完成与已知问题

## 2. 产品初心

锻炼YA帮助用户以简单、安全、可持续的方式照顾身体，尤其关注对传统健身产品感到压力的用户与父母年龄段用户。

产品核心不是竞技训练，而是“每天照顾身体一点点”。

## 3. 核心体验

Duck Home 是 App 当前唯一核心首页与一级产品入口。

用户打开 App 后首先看到 Duck Mascot 的姿态，而不是传统 Tab、训练目标、运动分类或专业术语。鸭子不是装饰，而是用户进入身体照顾体验的交互主角。

Duck Mascot 承担三个产品职责：

- 降低开始训练的心理门槛
- 用姿态表达一级训练入口
- 让身体照顾感到温暖、轻松和有陪伴感

## 4. 姿态交互

鸭子有三个明确的一级状态：

- `Standing`：默认状态，对应 Standing Care
- `Sitting`：从默认状态左滑进入，对应 Sitting Care
- `Lying`：从默认状态右滑进入，对应 Lying Care

“站、坐、躺”是一级产品语言，不是普通筛选字段。用户不需要先理解运动知识，只需要选择当下适合自己的姿势。

## 5. MVP 用户路径

1. 进入 Duck Home
2. 选择 Standing / Sitting / Lying
3. 选择身体部位
4. 获得 Care Routine
5. 完成动作视频
6. 获得鼓励与鸭子成长反馈
7. 保存训练记录

## 6. 内容体系

- Exercise Catalog 是动作数据的唯一来源。
- Video Assets 是动作内容验证和媒体绑定层。
- Care Routine 把姿态、身体部位、动作和视频组织成一次可执行的身体照顾。

内容关系：`Care Routine -> Exercise -> Video`。

## 7. 产品原则

- 简单、安全、可靠
- 低压力、全年龄友好
- 非竞技，不使用排名或强目标制造焦虑
- 不做医疗诊断，不承诺即时疗效
- 强调日常身体照顾与长期陪伴

## 8. 视觉语言

视觉应温暖、轻松、有陪伴感、低压力且年龄友好。不强调健身竞技，不制造强目标压力，不使用医疗化或焦虑化语言。

当前 Duck Home 视觉参考及使用边界记录在 [Design/UIReference.md](Design/UIReference.md)。

## 9. 当前不在范围内

- Tab 导航作为主要入口
- AI 分析与复杂个性化
- 社区与竞技排名
- 复杂同步和多设备系统
- 身体之花、`FlowerState` 与花朵成长系统

以上 Flower 方向已被当前 Duck Home 产品方向取代，不应成为新功能、数据模型或 UI 规划的依据。
