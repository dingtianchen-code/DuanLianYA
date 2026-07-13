# 锻炼YA 技术架构文档

Version: 1.0


# 1. 架构目标

锻炼YA采用模块化架构设计。

目标：

- 支持快速迭代 MVP
- 保持长期可扩展性
- 支撑未来 AI、社区、多设备同步


核心原则：

Features 负责用户功能

Core 负责基础能力

DesignSystem 负责统一体验

Resources 负责内容资产


---

# 2. 技术栈


平台：

iOS


开发语言：

Swift


UI框架：

SwiftUI


数据：

SwiftData


未来云端：

待接入


---

# 3. 项目结构


锻炼YA

├── App

应用入口


├── Features

用户功能模块


├── Core

核心业务能力


├── DesignSystem

设计系统


├── Resources

视频、图片、动画资源


└── Tests

测试


---

# 4. 核心功能模块


## Home 首页

核心：

Duck Home


负责：

- 鸭子姿态展示
- Standing / Sitting / Lying 一级入口
- 姿态切换后的身体区域入口
- 今日可开始的 Care Routine 引导


说明：

锻炼YA不以传统运动 App 的目标或身体部位作为第一入口。

首页第一交互是鸭子的姿态变化：

- 默认站立：Standing Care
- 向左滑动坐下：Sitting Care
- 向右滑动躺下：Lying Care

用户先理解“我现在用什么姿势照顾身体”，
再进入身体区域选择。


---

## Workout 训练

负责：

- Care Routine 执行
- 视频播放
- 训练流程
- 完成记录


---

## Library 动作库

负责：

- 姿态一级分类
- 身体区域分类
- Care Routine 内容
- 视频资源
- 动作说明


---

## Growth 成长记录

负责：

- 连续训练
- 成长值
- 姿态照顾记录


---

# 5. 核心数据流


用户

↓

Duck Home

↓

选择姿态

Standing / Sitting / Lying

↓

选择身体区域

↓

进入 Care Routine

↓

完成动作视频

↓

鼓励动画反馈

↓

记录成长


---

# 6. 产品设计原则


锻炼YA：

不是医疗诊断工具。

不是即时治疗工具。

不是竞技排名工具。


核心：

帮助用户每天照顾身体一点点。
