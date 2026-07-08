# 锻炼YA 开发规范

Version: 1.0


# 1. 开发原则

锻炼YA采用模块化开发方式。

目标：

- 易维护
- 易扩展
- 支持多人协作
- 支持AI辅助开发


---

# 2. 项目结构


App

应用入口和全局配置


Features

用户功能模块


Core

基础能力和业务逻辑


DesignSystem

统一视觉和交互


Resources

图片、视频、动画资源


Tests

测试代码



---

# 3. Feature开发规范


每个功能模块独立管理。


例如：

Home

包含：

HomeView

HomeViewModel

Components



Workout

包含：

WorkoutView

WorkoutViewModel

ExercisePlayer



---

# 4. Swift代码规范


## 命名

使用：

UpperCamelCase

例如：

WorkoutSession


变量：

lowerCamelCase

例如：

workoutDuration



---

# 5. UI开发原则


使用：

SwiftUI


优先：

组件化

避免：

大型View文件


例如：

不要：

HomeView.swift

超过500行


应该拆分：

FlowerView

GrowthCard

WorkoutCard



---

# 6. 数据管理


第一阶段：

SwiftData


数据模型：

Models


业务逻辑：

Services


页面展示：

Views



---

# 7. Git规范


提交信息清晰。


例如：

新增功能：

feat: add flower view


修复：

fix: update workout timer


文档：

docs: update architecture



---

# 8. MVP开发原则


优先完成：

训练闭环


包括：

选择训练

↓

完成动作

↓

鼓励动画

↓

成长记录

↓

身体之花



暂不优先：

AI分析

社区

复杂同步



---

# 9. AI协作原则


AI生成代码必须：

- 理解项目结构
- 遵循现有规范
- 不随意改变架构


任何新增功能：

先更新文档，

再修改代码。
