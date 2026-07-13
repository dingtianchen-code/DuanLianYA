# 锻炼YA (DuanLianYA)

## 项目介绍

锻炼YA是一款帮助用户建立长期身体锻炼习惯的陪伴型应用。

核心理念：

每天照顾身体一点点，
通过鸭子的姿态引导，让用户更容易开始一次身体照顾。


## 产品定位

锻炼YA不是医疗诊断工具，
不是即时治疗工具，
也不是单纯的健身竞技平台。

它关注：

- 身体觉察
- 长期习惯
- 自我成长

通过持续、温和的训练，
帮助用户重新建立与身体的连接。


## 核心闭环

用户

↓

Duck Home

↓

通过鸭子姿态选择站、坐、躺

↓

选择身体区域

↓

进入 Care Routine

↓

完成动作视频

↓

获得鼓励反馈

↓

积累成长记录

↓

形成长期习惯


## 产品核心理念

锻炼YA不关注：

- 今天身体改善了多少
- 是否立即解决某个问题

而关注：

- 今天是否照顾了自己的身体
- 是否完成了一次积极行动
- 是否持续积累成长


## 核心交互方向

锻炼YA不采用传统运动 App 的“目标”或“身体部位”作为第一入口。

首页核心主角是一只鸭子。

当前首页视觉基准：

- Visual Reference: `/Users/dave/Desktop/745A572E-2A49-4163-942D-708426833444.png`
- 参考图仅作为产品理解和设计方向记录
- 不代表当前 SwiftUI 页面已经实现

首页核心角色：

- Duck Mascot
- 鸭子不是装饰元素
- 鸭子是用户进入训练体验的交互入口
- 用户通过鸭子的姿态变化理解 Standing / Sitting / Lying 三种身体照顾状态

默认状态：

- 鸭子站立
- 对应 Standing Care

用户向左滑动：

- 鸭子坐在椅子上
- 对应 Sitting Care

用户向右滑动：

- 鸭子躺在床上
- 对应 Lying Care

姿态对应：

- Standing：适合站姿 Care Routine
- Sitting：适合坐姿 Care Routine
- Lying：适合躺姿 Care Routine

“站、坐、躺”不是普通筛选字段。

它们是锻炼YA的一级交互入口。

用户不需要先理解运动知识，
只需要通过鸭子的姿态变化理解：

我现在应该用什么姿势来照顾身体。

新的用户路径：

Duck Home

↓

Posture Interaction

Standing / Sitting / Lying

↓

Body Area Selection

↓

Care Routine

↓

Exercise Video


视觉方向：

- 温暖
- 轻松
- 陪伴感
- 低压力
- 面向全年龄用户
- 不强调健身竞技
- 强调日常身体照顾


## 技术架构

平台：

iOS

语言：

Swift

框架：

SwiftUI  
SwiftData


核心模块：

- Features（功能模块）
- Core（核心能力）
- DesignSystem（设计系统）
- Resources（资源管理）


## 开发原则


### 1. 用户价值优先

每一个功能都应该回答：

是否帮助用户更容易开始，
更愿意坚持，
更能感知自己的成长。


### 2. 不制造医疗焦虑

锻炼YA不预测疾病，
不进行医疗诊断，
不承诺即时疗效。

关注：

- 身体觉察
- 长期习惯
- 自然成长

通过长期坚持，
让用户逐渐感知身体变化。


### 3. 模块化开发

代码结构遵循：

Features

Core

DesignSystem

Resources


保持：

- 高内聚
- 低耦合
- 易扩展


### 4. MVP优先

第一阶段完成核心闭环：

Duck Home

↓

Posture Interaction

↓

Body Area Selection

↓

Care Routine

↓

Exercise Video

↓

鼓励动画反馈

↓

成长记录


## 未来方向

未来可能扩展：

- AI个性化训练建议
- 动作理解与分析
- 社区成长体系
- 多设备同步


但第一阶段优先保证：

简单、稳定、温暖的训练体验。


## 项目愿景

锻炼YA希望成为：

一个每天陪伴用户照顾身体的小伙伴。

不是要求用户改变自己，

而是陪伴用户，
一点一点成为更好的自己。
