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

训练

↓

成长

↓

身体之花



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
- FlowerState



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

连接动作和身体区域。


---

# 5. Exercise 动作库


描述：

锻炼动作资源。


字段：

id

name

category

difficulty

duration

videoURL

description


关系：

一个动作可以对应多个身体区域。



---

# 6. WorkoutSession 训练记录


描述：

用户一次完整训练。


字段：

date

duration

completed

exerciseCount


记录：

- 训练时间
- 完成状态
- 使用动作



---

# 7. WorkoutExercise 训练动作


描述：

一次训练中的具体动作。


字段：

sessionID

exerciseID

orderIndex

duration

completed



---

# 8. EncouragementAnimation 鼓励动画


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

# 9. GrowthRecord 成长记录


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

# 10. FlowerState 身体之花


描述：

用户成长可视化。


字段：

date

season

totalPetals

openedPetals

flowerData


作用：

展示：

身体之花变化。


---

# MVP核心数据表


第一阶段实现：

User

Profile

BodyArea

Exercise

WorkoutSession

WorkoutExercise

EncouragementAnimation

GrowthRecord

FlowerState


未来扩展：

- AI推荐
- 社区
- 多设备同步
