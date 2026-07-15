# 锻炼YA Duck Mascot — Expression Bible

> 状态：v1.0 表情规范保留；Production Reset 生效，当前没有已批准的 Front Production Artwork 或表情生产资产。
>
> Master Reference 的 Front Neutral 是唯一基准表情。任何本文件未定义的新表情都必须先制作静态 Expression Sheet 并审批，不能直接进入动画。

## 1. 不可变规则

- 头部轮廓、眼睛基准位置、眼距、眉毛基准位置、喙的宽高关系、鼻孔位置和脸颊点位置均锁定于 Master Reference。
- Neutral 闭嘴必须与 Master Reference 完全一致：无横线、无新增嘴角线、无唇线、无牙齿、无额外内轮廓。
- 表情变化通过已批准的眉、眼睑 Pose、眼神、上下喙和有限头部姿态组合，不通过移动整套五官或改变头部比例实现。
- 左右不对称只用于明确语义（Thinking 等），不得作为随意“增加生动感”的装饰。
- 原图未展示的眼皮、嘴腔和侧面表情只做最小必要补全，必须通过静态审批。
- 生成式表情草图不能成为最终资产；最终路径必须人工校准，并提交 Master Overlay。

## 2. 眼部 Pose Library

每只眼睛独立保留以下 Pose；命名中的 `L/R` 按角色自身左右。

| Pose | 图层 | 标准定义 | 禁止事项 |
|---|---|---|---|
| Open | 基础眼白/虹膜/瞳孔/高光 | 与 Master Neutral 完全一致 | 改眼高、眼距或高光风格 |
| Blink | `POSE_Eye_{L/R}_Blink` | 短时完整闭合，用上下眼睑遮罩完成 | 压扁整颗眼球；借用笑眼曲线 |
| Smile | `POSE_Eye_{L/R}_Smile` | 开心时柔和上扬的笑眼 Pose，形状需静态审批 | 与 Sleep 共用；夸张成尖角 |
| Sleep | `POSE_Eye_{L/R}_Sleep` | 放松、低张力的睡眼 Pose，左右基本对称 | 画成警觉眯眼或增加睫毛 |
| Wide | 上下眼睑打开范围 | Surprise 使用，眼白扩张只能在已批准安全范围 | 改变眼球中心或制造惊恐眼白 |

Blink、Smile、Sleep 是三个不同语义资产，不允许只建立一个 `Closed Eye` 后通过旋转或缩放冒充。

## 3. 嘴部 Pose Library

| Pose | 标准定义 | 审批状态 |
|---|---|---|
| `Mouth_NeutralClosed` | 完全复刻 Master Reference 的无横线微笑闭嘴 | 锁定，可进入 Front Production |
| `Mouth_HappyOpen` | 参考 Master Reference 招手示意中的张嘴、嘴腔与舌 | 需用原图 Overlay 校准 |
| `Mouth_Surprise` | 更小、更圆的友善张嘴；不得增加新喙轮廓 | 待静态审批 |
| `Mouth_Think` | 保持闭嘴 Neutral，思考语义主要由眼眉和头部承担 | 默认锁定 Neutral |
| `Mouth_Sleep` | 默认保持闭嘴 Neutral；如需呼吸开合另行审批 | 默认锁定 Neutral |

拆层不等于重画。`GEO_Beak_Upper` 与 `GEO_Beak_Lower` 在 Neutral 合成后必须恢复为 Master Reference 的单一外观，接缝完全不可见。

## 4. 眉毛 Pose Library

| Pose | 左眉/右眉关系 | 语义 |
|---|---|---|
| Neutral | 与 Master Reference 一致 | 友善、清醒 |
| Happy | 双眉轻抬，幅度接近 | 开放、积极 |
| Thinking | 一侧轻抬、一侧轻压 | 专注、思考 |
| Sleep | 双眉放松并略降低张力 | 安静、安心 |
| Surprise | 双眉同步上抬 | 友善惊喜，不是惊恐 |

眉毛围绕各自中心 Pivot 旋转/平移，不改变眉毛粗细、长度或端点圆润度。

## 5. 标准基础表情

### Neutral — 官方基准

- Eyes：Open，视线居中。
- Brows：Neutral。
- Mouth：`Mouth_NeutralClosed`。
- Head：零旋转。
- 验收：必须与 Master Reference Front 叠加对齐。

### Happy

- Eyes：Open 或获批的 Smile；默认先使用 Open。
- Brows：Happy。
- Mouth：可使用 NeutralClosed 或 `Mouth_HappyOpen`；动画峰值才张嘴。
- Head：允许极小上扬。
- 禁止：牙齿、扩大脸宽、移动脸颊点。

### Thinking

- Eyes：Open，视线斜上；左右眼保持共同目标。
- Brows：Thinking 非对称 Pose。
- Mouth：保持 NeutralClosed。
- Head：允许小角度侧倾；翅尖靠近喙属于动作层，不属于表情几何。
- 禁止：新增撇嘴线、问号常驻或焦虑抖动。

### Sleep

- Eyes：使用专用 Sleep Pose，不使用 Blink Pose。
- Brows：Sleep。
- Mouth：默认 NeutralClosed。
- Head：轻微低垂；身体呼吸变慢。
- 禁止：新增睫毛、眼袋或改变年龄感。

### Surprise

- Eyes：Wide，瞳孔聚焦；眼白增量必须受安全范围约束。
- Brows：Surprise。
- Mouth：使用经审批的 `Mouth_Surprise`。
- Head/Crest：头部轻抬，头羽随后反应。
- 禁止：过量眼白、黑洞式嘴腔、惊恐或尖叫感。

## 6. 表情组合与优先级

- Base Expression 由 `expression` 决定；Action 可在峰值临时覆盖局部 Pose，结束后恢复 Base Expression。
- Blink 是瞬时眼部覆盖层，可叠加 Neutral、Happy、Thinking；Sleep 状态下不触发普通 Blink。
- Wave 默认保持 Neutral 或 Happy；Front 验证动画默认使用 Master Reference 招手示意的友善 Happy 峰值，但起止必须回到 Neutral。
- Surprise 不与 Sleep 叠加；Thinking 不使用 Smile Eye。
- 同一时间最多一个嘴部 Pose、一个眼部 Pose、一个眉部 Pose 生效。

## 7. Front 首批验证范围

Front Gate 只正式生产以下表情资产：

1. `Neutral / Open`：作为所有 Overlay 和 Rig 的基准。
2. `Blink`：用于 `ANM_Blink`。
3. `Happy Wave Peak`：Wave 峰值所需的眼、眉、嘴组合；张嘴外观以 Master Reference 招手示意校准。

Smile Eye、Sleep、Thinking、Surprise 的图层插槽必须预留，但在静态 Expression Sheet 获批前不得进入 Release 动画。

## 8. Expression Sheet 验收格式

每个新表情提交一张统一规格的静态表情板：

- 左列：Master Reference Neutral。
- 中列：新表情最终合成。
- 右列：仅显示发生变化的眼、眉、嘴图层。
- Overlay：50% Alpha 叠加基准，标出未授权的头部/五官位移。
- Hidden Geometry：显示眼皮和嘴腔的最小补全范围及最终遮罩结果。
- 标注：Pose 名称、版本、Pivot、审批状态、使用动画。

只有状态为 `Approved` 的 Pose 才能被 Timeline、State Machine 或正式导出引用。
