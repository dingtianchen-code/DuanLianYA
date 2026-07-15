# 锻炼YA Duck Mascot — Motion Guide

> 状态：Motion specification v1.1 作为规范保留；Production Reset 生效，Idle、Blink、Wave、Rive、Rig 与 State Machine 全部停止。

## 1. 运动性格

鸭鸭的动作关键词是：**温暖、圆润、积极、陪伴感、清晰但不吵闹**。

- 动作由重心启动，翅膀和头羽随后跟随，停止时允许一次柔和 overshoot。
- 避免尖锐折线、机械匀速、高频抖动、橡皮式无限拉伸、过度弹跳和攻击性姿态。
- 角色永远保持 Master Reference 的圆润体量；squash/stretch 是短暂运动效果，不能改变静止比例。
- 重要引导动作一次只表达一个意图；眼神先看目标，再由头和翅膀跟随。

## 2. 时间与曲线规范

- 制作时间基准：60 fps；关键 pose 应落在可换算到 30 fps 的偶数帧上。
- Idle 循环：3.2–4.8 s，循环接缝速度连续。
- 微动作：120–300 ms；表情进入：160–280 ms；表情退出：180–320 ms。
- 单次手势：0.7–1.4 s；庆祝：1.4–2.4 s；转身：0.6–1.0 s（不含停留）。
- 默认 ease 使用柔和非对称曲线：启动稍快、落点稍慢；落地与触达目标允许轻微 overshoot，幅度不超过相应运动范围的 6%。
- 循环动画首尾不重复停顿帧；无意图的部件不添加噪声运动。

## 3. 动作叠加层

```text
Layer 0  Locomotion/View     转身、跳跃、整体位移
Layer 1  Base Idle           待机、呼吸、重心漂移
Layer 2  Upper Action        挥手、指向、引导、庆祝
Layer 3  Head & Gaze         点头、摇头、左右看
Layer 4  Expression          眉、眼睑、喙、脸颊
Layer 5  Secondary           头羽、尾巴、软组织跟随
Layer 6  FX                  动作线、星点等获批特效
```

优先级：用户触发动作 > 产品引导 > 情绪表情 > 随机 Idle。一次性动作不能被随机 Idle 中断；紧急 UI 状态可在安全过渡点打断。

## 4. 基础循环

### Idle

- 3.6–4.4 s 非完全对称循环；COG 轻微上下/左右漂移。
- 两脚保持接地，头部有极轻反向补偿；尾巴和头羽延迟 2–4 帧。
- 随机眨眼与循环解耦，避免每次同一点眨眼。

### 呼吸

- 吸气时身体纵向和横向只做细微体量变化，头部被抬起但脸部几何不缩放。
- 建议初始范围：Body scaleY `+1.0%…+1.8%`、scaleX `+0.4%…+1.0%`；最终以视觉验收为准。
- 呼气比吸气略长；脚掌、瞳孔、喙不参与非刚性缩放。

### 眨眼

- 使用上下眼睑与 `POSE_Eye_*_Blink`，不把完整眼球压扁，也不借用 Smile/Sleep Pose。
- 普通眨眼 100–160 ms；闭合最快，张开略慢。
- 双眼默认同步，允许 1 帧以内自然偏差；禁止频繁单眼随机眨眼。

### 左右看

- 眼球先行 60–100 ms，头部随后小幅跟随；返回时头先稳定，眼球回中。
- 瞳孔始终在眼白 mask 内，并保留边缘安全距；高光随眼球保持一致，不独立漂浮。

## 5. 表情规范

本节只规定动作原则；所有标准静态表情、眼部 Pose、嘴部规则和组合矩阵以 `ExpressionGuide.md` 为唯一 Expression Bible。

### 开心 `Expr_Happy`

- 眉稍抬，眼睛保持明亮或进入获批笑眼；嘴角提升、下喙打开露出嘴腔与舌。
- 不添加牙齿；不改变喙的基础宽度和脸部五官间距。

### 惊讶 `Expr_Surprise`

- 先瞳孔聚焦，再抬眉、睁眼、打开上下喙；头羽随后弹起。
- 保持友善，避免眼白过多或嘴腔过黑造成惊恐感。

### 思考 `Expr_Think`

- 眼神斜上、眉左右轻微不对称、头部小角度倾斜；翅尖可接近下喙但不凭空生成“手指”。
- 动作停顿必须像在考虑，不做连续焦虑抖动。

### 睡觉 `Expr_Sleep`

- 上眼睑闭合，眉放松，下喙可极小幅呼吸开合；身体呼吸周期放慢至 4.5–6.0 s。
- 头部轻垂但不压坏脸部结构；`Z` 等符号属于 FX，可按场景单独开关。

## 6. 动作规范

### 挥手 `Action_Wave`

- 以肩部 Pivot 带动整片翅膀旋转为主，翼尖只做跟随；肩部先抬翼，翼尖做 2–3 次清晰次级摆动，身体向反侧轻微配重。
- 默认使用角色右/左的明确版本；不能通过含道具的成品动画盲目镜像。
- 参考稿的招手姿势是动作风格依据，但静态正面比例仍以三视图为准。

### 点头 / 摇头

- 点头：眼神轻微下移领先，头部 1–2 次纵向弧线；身体有很小反向缓冲。
- 摇头：围绕 `JNT_Head` 做水平弧线，喙和脸作为头部整体保持，不让五官滑动。
- 幅度以清晰表达为准，不能让头部脱离身体交叠区。

### 跳跃

- Anticipation 150–220 ms：COG 下沉、身体 squash、翅膀准备。
- Air 220–380 ms：Root 上移、脚掌离地、身体恢复并轻 stretch；尾巴/头羽滞后。
- Landing 180–300 ms：脚 IK 接地、短暂 squash、一次小回弹后回 Idle。
- 地面阴影只改变 scale/opacity，不随角色一起升空。

### 转身

- 使用已批准视角 skin/Pose 交接；切换发生在轮廓最窄或遮挡最合理的过渡帧。
- front ↔ side ↔ back 之间必须经过获批 3/4 pose 或设计好的遮挡动作；不得交叉溶解两个实体角色。
- 眼神与头部先表达转向意图，身体随后，尾巴最后 settle。

### 指向按钮

- `CTL_PropTarget` 接收目标；眼神 → 头 → 翅膀三段式引导。
- 翼尖停在按钮外侧的安全区，不覆盖按钮文字或触控区域；没有手指，不把翼尖改造成手。
- 停留时保持极小呼吸，不重复戳击；目标移动时用约束平滑追踪。

### 引导用户

- 由 `LookAt`、`Point`、`Nod` 等原子动作编排，不制作一个不可复用的超长时间轴。
- 每段动作之间保留 200–400 ms 阅读停顿；同一提示最多强化一次，避免催促感。

### 庆祝

- 结构：anticipation → 主跳/展翼 → apex 表情 → 落地 → settle。
- 可使用双翼、头羽、尾巴和获批 FX，但画面中心仍是鸭鸭；避免无限粒子和高频闪烁。
- 可按强度提供 `Celebrate_Small` 与 `Celebrate_Large`，两者共享相同开始/结束 neutral pose。

## 7. 次级运动

- 头羽：跟随头部旋转，延迟 2–4 帧，最多一次回摆；三根羽毛幅度略有差异但不散开变形。
- 尾巴：跟随 COG 与转身，延迟 3–5 帧；庆祝可主动摆动，Idle 仅微动。
- 翅尖：跟随肩/翼主骨，快速动作允许一次轻微 drag；指向停点必须稳定。
- 腹部：只做低幅呼吸/落地软变形；轮廓不可出现尖角或局部塌陷。

## 8. 状态机规划

`SM_Duck_Main` 以并行层组合 Base、Action、Gaze、Expression 和 Secondary：

- 默认状态为 `Idle`。
- `actionRequest` 触发一次性 Action，完成后回到 Idle；动作进入和退出都使用稳定 neutral pose。
- `expression` 可跨 Action 保持，但 Surprise/Happy 等动作内临时表情结束后要恢复请求中的当前 expression。
- `view` 变化调用 Turn 过渡；若目标中间视角尚未获批，则只允许安全 cut，不生成假 3/4。
- `isReducedMotion` 降低 Root 位移、squash/stretch、次级摆动与 FX；保留表意所需的眼神和姿势变化。

## 9. 可访问性与产品约束

- Reduced Motion 下：取消循环漂移、跳跃改为轻微抬升/点头、庆祝改为展翼和表情，单次过渡尽量 ≤ 300 ms。
- 不使用持续闪烁；高对比 FX 不做快速重复；动作不能遮挡关键信息或抢占操作焦点。
- 小尺寸下优先保持清晰 pose 和眼神，不通过改动官方五官比例来补偿。
- 声音不内嵌为动作成立的必要条件；静音时动作仍完整可读。

## 10. 动画 QA 清单

- 首尾 neutral pose 与 Master Reference 对齐。
- 极限帧没有路径破裂、遮罩露边、渐变漂移、左右层穿插或 Pivot 滑动。
- 两脚接地动作无滑步；跳跃阴影不升空；眼球不越出眼白。
- 0.25× 速度检查弧线、spacing、overshoot 与约束切换；1× 检查意图和节奏。
- Front、SideL、Back 按生产 Gate 顺序分别验收；SideR 镜像只可进入 Prototype QA，不得进入 Production Release。
- 同时叠加呼吸 + 眨眼 + gaze + action + expression 做压力测试。
- iPhone 小尺寸和典型显示尺寸检查剪裁与可读性。
- Reduced Motion 路径独立验收。

## 11. Production Gate 动画顺序

1. **Front Gate**：Rig calibration → Idle → Blink → Wave；三项动画全部通过才可进入 SideL。
2. **SideL Gate**：静态重建与 Rig 验收后，验证与 Front 共用的必要动作接口。
3. **Back Gate**：SideL 获批后最后生产 Back，并验证转身所需的安全 Skin 切换。
4. **Expression Expansion**：Happy、Thinking、Sleep、Surprise 等以 `ExpressionGuide.md` 的静态 Pose 获批为前提。
5. **Future Actions**：Nod、Shake、Jump、Point、Guide、Celebrate；3/4 Pose 获批后才能制作连续 Turn。

每一阶段必须通过静态 Pose review、Master Overlay 和运行时预览后再进入下一阶段。
