# 锻炼YA UI Reference

Version: 1.0

Product direction update:

Duck Home posture interaction is the primary course entry.

This document records the updated product direction only.
It does not imply current SwiftUI implementation has already changed.

Current Duck Home visual reference:

`/Users/dave/Desktop/745A572E-2A49-4163-942D-708426833444.png`

This image is the current visual baseline for product understanding and design direction.
It is not an implementation request.


# 1. Figma设计资源


Figma链接：

https://www.figma.com/design/6g25pQYoTOu0NDWFZDHiXN/%E9%94%BB%E7%82%BCYA?node-id=2101-2868&t=lId22QTIto4jZdvz-1

# 1.1 核心设计页面


## 优先级 P0（MVP核心）


### Home 首页

核心：

Duck Home

说明：

首页是锻炼YA最重要的视觉入口。

体现：

- 鸭子姿态变化
- Standing / Sitting / Lying 一级入口
- 用户此刻适合用什么姿势照顾身体
- 温暖、轻松、低压力的日常身体照顾体验


---

### Workout 训练页

核心：

完成一次身体照顾。

包含：

- 动作视频
- 动作说明
- 训练流程


---

### Exercise Detail 动作详情

核心：

展示当前姿态与身体区域下的动作内容。

包含：

- 动作教学视频
- 对应姿态
- 对应身体区域
- 注意事项


---

### Profile 成长页

核心：

长期成长记录。

包含：

- 训练历史
- 姿态照顾记录
- 用户成长


---

## 优先级 P1


### Login 用户体系

包含：

- 注册
- 登录
- 用户状态


### Library 动作库

包含：

- 姿态一级分类
- 身体区域分类
- Care Routine
- 搜索
- 内容浏览

设计文件包含：

- 页面结构
- 组件设计
- 动画概念
- 交互流程



---

# 2. 核心页面


## Home 首页


核心：

Duck Home。


目标：

让用户打开App第一眼看到：

一只可以通过姿态变化引导训练入口的鸭子。


Visual Reference：

`/Users/dave/Desktop/745A572E-2A49-4163-942D-708426833444.png`


说明：

这张图是当前确认的 Duck Home 首页视觉方向参考。

它用于校准：

- Duck Mascot 的角色权重
- 首页的温暖与陪伴感
- 低压力、全年龄、非竞技的视觉语气
- Start / Change body area / Care suggestion 的轻量信息层级

它不表示当前页面已实现，
也不要求本阶段修改 SwiftUI。


重点：

- 默认站立，对应 Standing Care
- 向左滑动，鸭子坐在椅子上，对应 Sitting Care
- 向右滑动，鸭子躺在床上，对应 Lying Care
- 站、坐、躺是一级交互入口，不是普通筛选字段
- 鸭子不是装饰元素，而是训练体验入口


用户路径：

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



---

## Workout 今日训练


核心：

帮助用户完成一次身体照顾。


包含：

- 动作视频
- 动作说明
- 训练进度
- 完成动画



---

## Library 动作库


核心：

展示锻炼YA内容体系。


包含：

- 姿态一级分类
- 身体区域分类
- Care Routine
- 视频资源



---

## Profile 成长记录


核心：

记录长期成长。


包含：

- 训练历史
- 姿态照顾记录
- 个人数据



---

# 3. 首页设计优先级


Home 是锻炼YA最高优先级页面。


原因：

首页代表产品核心理念：


每天照顾身体一点点。


核心视觉：

Duck Home。

鸭子是首页交互主角。

课程入口的第一层是鸭子姿态：

- Standing Care
- Sitting Care
- Lying Care


视觉原则：

- 温暖
- 轻松
- 陪伴感
- 低压力
- 面向全年龄用户
- 不强调健身竞技
- 强调日常身体照顾


---

# 4. 动画设计


训练结束动画：

时长：

2-3秒


目的：

情绪鼓励。


不是：

医疗效果证明。


例如：

腰背训练完成：

身体放松

↓

人物微笑

↓

点赞鼓励



---

# 5. Figma导出资源


建议保存：

Resources

└── DesignPreview

    ├── Home.png

    ├── Workout.png

    ├── Library.png

    └── Profile.png
