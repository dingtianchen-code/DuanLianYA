# 锻炼YA 数据模型设计

Version: 1.0


# 1. 设计原则

锻炼YA的数据模型不记录医疗结果。

不进行：

- 疾病判断
- 疼痛诊断
- 即时疗效预测


数据关注：

- 用户行为
- 训练过程
- 身体觉察
- 长期成长


核心数据流：

用户

↓

姿态入口

↓

身体区域

↓

Care Routine

↓

动作视频

↓

成长记录



---

# 2. User 用户


描述：

用户基础信息。


字段：

id

nickname

avatar

createdAt

updatedAt


关系：

一个 User 拥有：

- Profile
- WorkoutSession
- GrowthRecord



---

# 3. Profile 用户档案


描述：

用户身体基础信息。


字段：

height

weight

age

gender

trainingGoal


用途：

帮助用户建立身体认知。


---

# 4. BodyArea 身体区域


描述：

身体区域模型。


示例：

- 肩颈
- 肩胛
- 胸椎
- 腰背
- 髋
- 膝
- 足踝


用途：

作为姿态入口之后的第二层选择。

用户先选择站、坐、躺，
再选择想照顾的身体区域。


---

# 5. Posture 姿态


描述：

锻炼YA一级课程入口。

姿态不是动作筛选条件，
而是首页鸭子交互状态对应的课程入口。


枚举：

standing

sitting

lying


展示名称：

- Standing Care
- Sitting Care
- Lying Care


关系：

一个 Posture 对应：

- DuckState
- 多个 CareRoutine
- 多个 Exercise


用途：

帮助用户不依赖运动知识，
直接通过“我现在是站着、坐着、躺着”进入身体照顾。


---

# 6. DuckState 鸭子状态


描述：

首页鸭子当前姿态状态。


字段：

id

posture

displayName

assetName

sortOrder


状态：

- standing：鸭子站立
- sitting：鸭子坐在椅子上
- lying：鸭子躺在床上


关系：

一个 DuckState 绑定一个 Posture。


用途：

驱动首页姿态交互，
让用户通过鸭子的身体状态理解课程入口。


---

# 7. CareRoutine 照顾课程


描述：

由同一姿态入口下的一组动作组成。

CareRoutine 不应只按身体部位组织，
必须绑定 Posture。


字段：

id

title

posture

bodyAreaID

duration

sortOrder


关系：

一个 CareRoutine：

- 属于一个 Posture
- 可关联一个 BodyArea
- 包含多个 Exercise


用途：

承接用户路径：

Posture Interaction

↓

Body Area Selection

↓

Care Routine

↓

Exercise Video


---

# 8. Exercise 动作库


描述：

锻炼动作资源。


字段：

id

name

category

posture

difficulty

duration

videoURL

description


关系：

一个动作可以对应多个身体区域。

一个动作必须声明主要 Posture，
用于从 Standing / Sitting / Lying 入口导入和编排课程。



---

# 9. WorkoutSession 训练记录


描述：

用户一次完整训练。


字段：

date

duration

completed

exerciseCount

posture

careRoutineID


记录：

- 训练时间
- 完成状态
- 本次使用的姿态入口
- 本次 Care Routine
- 使用动作



---

# 10. WorkoutExercise 训练动作


描述：

一次训练中的具体动作。


字段：

sessionID

exerciseID

orderIndex

duration

completed



---

# 11. EncouragementAnimation 鼓励动画


描述：

训练结束后的情绪反馈。


例如：

腰背训练完成：

播放：

腰部放松动画


字段：

name

triggerType

animationURL

duration

text


原则：

动画不是治疗反馈。

而是：

鼓励用户继续坚持。



---

# 12. GrowthRecord 成长记录


描述：

用户长期成长。


字段：

date

type

value

note


例如：

完成一次训练：

成长值 +1



---

# MVP核心数据表


第一阶段实现：

User

Profile

BodyArea

Posture

DuckState

CareRoutine

Exercise

WorkoutSession

WorkoutExercise

EncouragementAnimation

GrowthRecord


未来扩展：

- AI推荐
- 社区
- 多设备同步
