# 锻炼YA Duck Mascot — Production Character System

> 状态：Layer Blueprint v1.1 作为规范保留；Front Production 已于 2026-07-15 Reset。当前不存在已批准 Artwork、Production SVG、Design Lock、Freeze、Rive Import 或 Rig。
>
> 长期生产流程以 `DuckCharacterProductionCharter.md` 为最高工作章程；当前唯一授权 Gate 为 `Step 1 — Head Outline Reconstruction`。
>
> 唯一视觉标准：`Master Reference / Version 3（最终选定版）`，源图 `9df465a9-fec1-4427-921b-d2a570be34f6.png`。

## 1. 不可变设计契约

- **Master Reference is not inspiration. It is specification.**
- **Visual Fidelity First（视觉忠实优先）**：任何 Production Asset、SVG、Rive 与 Rig 都必须以 Master Reference 为最高标准。不得因 Rig、Bone、Mesh、Constraint、Performance、SVG 简化或节点数量改变角色比例、轮廓、五官、体积光影或设计语言。动画实现与角色设计冲突时，必须保留角色设计并更换动画实现方案，而不是修改角色。
- 所有角色资产只以 Master Reference 为造型依据；本文件不创造新比例或新造型。
- 锁定：头身比、整体轮廓、五官位置与间距、三根头羽、翅膀和脚掌造型、尾巴形状、无横线微笑嘴、圆润亲和的设计语言。
- 锁定基础色：羽毛黄 `#FFD64D`、喙与脚橙 `#FF8A00`、眼/眉深棕 `#3A2E26`、眼白 `#FFFFFF`。
- 参考图中的柔和明暗属于角色造型的一部分；后续矢量化需建立可复现的渐变 token，不得用随意的新高光、描边或纹理替代。
- 不得自行添加服装、牙齿、手指、硬描边、写实羽毛、物种细节或改变年龄感。
- 三视图不是同一张图形的机械镜像：正、侧、背各自按 Master Reference 重建和校验。
- Master Reference 的静态表情同样锁定；不得因分层、Rig、矢量清理或小尺寸显示而润色五官、增加轮廓或改变表情。
- 原图中不可见、被身体遮挡或仅在动作示意中部分出现的结构，不得凭空自由设计。只允许为 Rig 制作“最小必要补全”，并进入单独的隐藏区域验收。
- 生成式重绘、自动描摹或自动矢量化只能作为分析/草稿辅助，不能直接成为最终 Production Asset。最终路径必须经过人工校准、Master Overlay 和静态验收。

## 2. 结构判断与 Rig 策略

角色是“头部圆体 + 腹部圆体”的无颈短肢体型。为保持轮廓，生产 Rig 采用：

1. **三套独立 Production View Skin**：`Front`、`SideL`、`Back`。`SideR` 可由 `SideL` 受控镜像用于 Prototype，但不得作为最终 Production Asset；正式 `SideR` 必须作为独立资产单独验收。
2. **一套共用语义控制接口**：各视角使用相同的骨骼、控制器、表情插槽和动画名称。
3. **刚性分层优先，有限网格变形**：眼球、瞳孔、眉、喙、脚掌等以独立 transform 层运动；只在身体呼吸、翅膀弯曲、脸颊软变形处使用少量骨骼权重。
4. **转身使用离散视角切换**：用 front → 3/4 → side → 3/4_back → back 的 Pose/Skin 过渡，不把正面图形强扭成侧面。Master Reference 只定义 front/side/back；两个 3/4 过渡姿势需在后续单独获批后才可生产。
5. **绘制层、控制器、骨骼、约束分离**：动画师只操作 `CTL_*`，不直接给最终绘制路径打位置关键帧。

## 3. Layer Blueprint

### 3.1 顶层 Artboard

```text
AB_Duck_Master
├── SYS_Guides                  [编辑器辅助，运行时隐藏]
├── CTL_Rig                     [动画控制器，运行时隐藏]
├── RIG_Skeleton                [骨骼与约束，运行时隐藏]
├── SKIN_Back                   [背面皮肤]
├── SKIN_Side_L                 [左向侧面皮肤]
├── SKIN_Front                  [正面皮肤]
├── SLOT_Props_Back             [身体后方道具]
├── SLOT_Props_Front            [身体前方道具]
├── FX_Character               [角色附属特效，默认隐藏]
└── SHD_Ground                  [可开关地面阴影]
```

`SKIN_*` 同时只显示一套。所有皮肤共享下列语义结构；视角不存在的层保留同名空组，不删除接口。

### 3.2 每套皮肤的固定绘制顺序（后 → 前）

```text
SKIN_{view}
├── 00_REAR
│   ├── GEO_Tail_Back
│   │   ├── GEO_Tail_Feather_01
│   │   ├── GEO_Tail_Feather_02
│   │   └── GEO_Tail_Feather_03
│   ├── GEO_Wing_L_Back
│   └── GEO_Wing_R_Back
├── 10_LEGS
│   ├── GEO_Leg_L
│   ├── GEO_Foot_L
│   │   ├── GEO_Foot_L_Base
│   │   └── GEO_Foot_L_Toes
│   ├── GEO_Leg_R
│   └── GEO_Foot_R
│       ├── GEO_Foot_R_Base
│       └── GEO_Foot_R_Toes
├── 20_BODY
│   ├── GEO_Body_Base
│   ├── GEO_Body_Rim
│   ├── GEO_Body_Shadow
│   └── GEO_Body_Highlight
├── 30_WINGS
│   ├── GEO_Wing_L
│   │   ├── GEO_Wing_L_Base
│   │   ├── GEO_Wing_L_Tip
│   │   ├── GEO_Wing_L_Shadow
│   │   └── GEO_Wing_L_Highlight
│   └── GEO_Wing_R
│       ├── GEO_Wing_R_Base
│       ├── GEO_Wing_R_Tip
│       ├── GEO_Wing_R_Shadow
│       └── GEO_Wing_R_Highlight
├── 40_HEAD
│   ├── GEO_Head_Base
│   ├── GEO_Head_Shadow
│   ├── GEO_Head_Highlight
│   └── GEO_Cheek_Soften
├── 50_CREST
│   ├── GEO_Crest_01
│   │   ├── GEO_Crest_01_Visible
│   │   └── GEO_Crest_01_HiddenOverlap [位于头部轮廓后方]
│   ├── GEO_Crest_02             [结构同 01]
│   └── GEO_Crest_03             [结构同 01]
├── 60_FACE
│   ├── FACE_Brow_L
│   ├── FACE_Brow_R
│   ├── FACE_Eye_L
│   │   ├── GEO_EyeWhite_L
│   │   ├── MSK_Iris_L
│   │   ├── GEO_Iris_L
│   │   ├── GEO_Pupil_L
│   │   ├── GEO_EyeGlint_L
│   │   ├── GEO_LidUpper_L
│   │   ├── GEO_LidLower_L
│   │   ├── POSE_Eye_L_Blink
│   │   ├── POSE_Eye_L_Smile
│   │   └── POSE_Eye_L_Sleep
│   ├── FACE_Eye_R              [结构同 L]
│   ├── FACE_CheekMark_L
│   │   ├── GEO_CheekDot_L_01
│   │   └── GEO_CheekDot_L_02
│   ├── FACE_CheekMark_R        [结构同 L]
│   ├── FACE_Beak
│   │   ├── GEO_Beak_Lower
│   │   ├── GEO_Mouth_Cavity
│   │   ├── GEO_Tongue
│   │   ├── GEO_Beak_Upper
│   │   ├── GEO_Beak_Corner_L
│   │   ├── GEO_Beak_Corner_R
│   │   ├── GEO_Nostril_L
│   │   └── GEO_Nostril_R
│   └── FACE_Overlay
│       ├── GEO_Blush_L         [默认隐藏，形状待批准]
│       ├── GEO_Blush_R         [默认隐藏，形状待批准]
│       └── GEO_SleepLidShade   [默认隐藏]
└── 70_FRONT_OVERLAP
    └── GEO_WingFrontOcclusion  [动作需要时使用]
```

### 3.3 拆分理由与能力覆盖

| 部件 | 必须独立的原因 | 支持动作 |
|---|---|---|
| 头/身体 | 呼吸相位不同，点头和跳跃需重叠动作 | 呼吸、点头、摇头、跳跃 |
| 三根头羽 | Neutral 静态外观必须保持共同连根的一组整体；内部可使用三个控制器实现轻微延迟，但不得显示成三片分离羽毛 | 跳跃、惊讶、庆祝 |
| 左右眉 | 表情需要非对称控制 | 开心、惊讶、思考、睡觉 |
| 眼白/虹膜/瞳孔/高光 | 眼神目标与高光锁定分离 | 左右看、引导、思考 |
| 上下眼睑/Blink、Smile、Sleep Pose | 不同眼部语义不能共用一个 Closed Eye | 眨眼、笑眼、睡觉 |
| 上下喙/嘴腔/舌 | 参考稿已有闭嘴与张嘴表现 | 开心、惊讶、说话式引导、睡觉 |
| 左右翼的 Shoulder Root/主翼面/可选 WingTip Deform | 肩部旋转是主运动，翼尖仅作必要次级变形 | 挥手、指按钮、庆祝 |
| 腿/脚掌 | 跳跃落地、走动预留；脚掌需可保持着地 | 跳跃、转身、重心变化 |
| 三片尾羽 | 侧背面跟随和庆祝摆尾 | Idle、转身、庆祝 |
| 身后/身前道具槽 | 道具穿插关系稳定 | 指向、引导用户、活动装扮 |

左右命名始终按**角色自身左右**，不是观看者左右。

## 4. 控制 Rig 与骨骼

### 4.1 骨骼层级

```text
RIG_Skeleton
└── JNT_Root
    └── JNT_COG
        ├── JNT_Body
        │   ├── JNT_Belly_L
        │   ├── JNT_Belly_R
        │   ├── JNT_Hip_L → JNT_Leg_L → JNT_Foot_L → JNT_Toe_L
        │   ├── JNT_Hip_R → JNT_Leg_R → JNT_Foot_R → JNT_Toe_R
        │   ├── JNT_Shoulder_L → JNT_Wing_L → JNT_WingTip_L
        │   ├── JNT_Shoulder_R → JNT_Wing_R → JNT_WingTip_R
        │   └── JNT_TailRoot → JNT_TailMid → JNT_TailTip
        └── JNT_Head
            ├── JNT_Cheek_L
            ├── JNT_Cheek_R
            ├── JNT_BeakRoot → JNT_BeakUpper / JNT_BeakLower
            ├── JNT_Brow_L / JNT_Brow_R
            └── JNT_CrestRoot → JNT_Crest_01 / JNT_Crest_02 / JNT_Crest_03
```

眼睛使用 transform/controller + clipping，不用骨骼蒙皮。眼白下缘属于眼下肉感轮廓，Blink、Smile、Sleep 均不得把该弧形简化为直线。翅膀的主要动作由 `JNT_Shoulder_*` 带动整片翼面旋转；`JNT_Wing_*` 与 `JNT_WingTip_*` 只处理轮廓保持、轻微软弯曲和次级跟随，不把 Wing Base/Tip 当作主动作切割逻辑。腹部、尾巴、头羽仅在软弯曲需要时绑定骨骼；三根头羽可分别摆动、回弹和轻微错相，但共同根部与 Neutral 外观必须保持连续。单个顶点总权重必须为 100%，关节附近做平滑过渡，非关节轮廓尽量保持单骨 100%。

### 4.2 控制器与约束

```text
CTL_Global
CTL_COG
CTL_Head
CTL_Gaze
CTL_Brow_L / CTL_Brow_R
CTL_Beak
CTL_WingIK_L / CTL_WingIK_R
CTL_FootIK_L / CTL_FootIK_R
CTL_Tail
CTL_Crest
CTL_PropTarget
CTL_Ground
```

- `CTL_Gaze` 驱动两眼 Translation Constraint，并给左右眼保留独立 offset；瞳孔始终被各自眼白遮罩裁切。
- 翅膀默认以肩部 Pivot 的 FK 旋转为主；指向、触达目标时才启用可动画强度的 IK，避免 IK 与 FK 同时 100% 争抢。
- 脚掌用 IK/Translation 目标保持落地；跳跃时脚掌目标跟随身体，落地帧再恢复地面约束。
- 约束求解顺序固定为：全局/视角 → 身体 → IK → 眼神 → 次级跟随；同一对象多约束时后项会覆盖/混合前项，顺序不可随意调整。
- 控制器、目标组和骨骼不参与渲染。

## 5. Pivot（旋转中心）规范

Pivot 在每个视角中由已批准轮廓测量后写入，不用“看起来差不多”的坐标。坐标统一使用 Artboard 本地坐标；发布清单记录绝对 `(x,y)` 与归一化 `(u,v)`。

| 对象 | Pivot 定义 | 允许的主要运动 |
|---|---|---|
| `JNT_Root` | 两脚接地线中点的垂直投影 | 全局位移、跳跃 |
| `JNT_COG` | 腹部视觉质量中心，正面位于身体中轴 | squash/stretch、重心摆动 |
| `JNT_Body` | 头身交界中轴下方 | 呼吸、身体倾斜 |
| `JNT_Head` | 头体交叠区内部的中轴点，不在脸中心 | 点头、摇头 |
| `JNT_Shoulder_*` | 翅膀根部进入身体轮廓的中心 | 挥手、指向 |
| `JNT_Wing_*` | 翅膀长轴约 35–45% 处；不作为主摆动 Pivot | 轮廓保持、软弯曲 |
| `JNT_WingTip_*` | 翼尖可见体量中心偏根侧 | 招手摆动、指向 |
| `JNT_Hip_*` | 腿被身体遮挡区的中心 | 抬腿、落地缓冲 |
| `JNT_Foot_*` | 脚踝连接处；不是脚掌几何中心 | 脚掌旋转 |
| `JNT_Toe_*` | 最前接地点 | 蹬地、落地 roll |
| `JNT_BeakRoot` | 上下喙与脸连接的后缘中点 | 整体喙跟随 |
| `JNT_BeakUpper` | 上喙后缘 | 惊讶/说话微抬 |
| `JNT_BeakLower` | 嘴角连线中点偏后 | 张嘴 |
| `FACE_Brow_*` | 眉弧中心 | 抬眉、压眉、旋转 |
| `GEO_Iris/Pupil_*` | 各自几何中心 | 眼神平移，不旋转 |
| `JNT_CrestRoot` | 三根头羽共同进入头部处 | 次级跟随 |
| `JNT_TailRoot` | 尾巴进入身体轮廓处 | 摆尾、转身跟随 |

Pivot 锁定后，任何几何修改都不得隐式移动 Pivot；需要变更时提升资产 minor 版本并记录 before/after。

## 6. Naming Convention

### 6.1 格式

`{TYPE}_{Part}_{Side}_{Variant}`，使用 ASCII、PascalCase 部件词、下划线分段，不使用空格、中文、自动生成名或重复数字后缀。

| 前缀 | 用途 |
|---|---|
| `AB_` | Artboard |
| `GEO_` | 可见几何 |
| `GRP_` | 普通组织组 |
| `MSK_` | Clipping/Mask |
| `JNT_` | Bone/Joint |
| `CTL_` | 动画控制器/Target |
| `CNS_` | Constraint |
| `SKIN_` | 视角皮肤 |
| `SLOT_` | 可替换内容插槽 |
| `FX_` | 特效 |
| `SHD_` | 阴影 |
| `MAT_` | 共享 Fill/Stroke 样式 |
| `ANM_` | Timeline animation |
| `POSE_` | 可替换的标准静态 Pose |
| `SM_` | State Machine |
| `VM_` | View Model |

Side 只用 `L`、`R`、`C`；View 只用 `Front`、`SideL`、`SideR`、`Back`、未来获批的 `ThreeQuarterL/R`。禁止 `left_1`、`wing copy` 等名称。

### 6.2 动画与接口命名

- Timeline：`ANM_Idle_Breathe`、`ANM_Expr_Happy`、`ANM_Action_Wave_L`。
- State Machine：`SM_Duck_Main`。
- View Model：`VM_DuckCharacter`；属性采用 lowerCamelCase，枚举值采用 PascalCase。
- 公开接口一经进入 App 即视为 API；几何层可以重构，但已发布属性名不得静默修改。

## 7. SVG / AI 分层与无损导入规范

### 7.1 源文件

- `Duck_Master.ai` 是可编辑矢量母版；每个视角使用同一画板尺寸、同一基线、同一角色高度标尺。
- 正、侧、背分别独立画板；front/side/back 的头顶、脚底和地面线使用共享 guide。
- 每个可动画部件必须是独立命名组；不要把整只角色 flatten，也不要把左右部件合并成 compound path。
- 所有形状保持矢量；除非 Rive 明确不支持且通过测试，否则不使用栅格效果、复杂滤镜、blend mode、live effect、pattern、mesh gradient。
- 展开外观（Expand Appearance），将必要 stroke 转 outline；清理隐藏对象、孤点、clipping 外的废路径和重复路径。
- 透明度优先作用于组或单独高光形状；避免多层半透明重叠导致导入后颜色变化。
- 渐变使用稳定的线性/径向渐变与统一 stop；色值来自 token，不通过色彩配置文件转换。
- SVG 使用 UTF-8、`viewBox`、显式 `fill`/`opacity`，不依赖 CSS class、外链图片、字体、脚本、symbol/use 或非标准 namespace。
- SVG 文件内的 group ID 与 Layer Blueprint 一致；导出后不得经过会重命名 ID 或合并路径的 optimizer。

### 7.2 导入包

每个获准进入生产的视角导出一个“干净 SVG”，另保留完整 AI。当前阶段只允许 Front：

```text
Duck_Front_v001.svg
Duck_Master_v001.ai
```

导入 Rive 后逐项比对：画板尺寸、基线、轮廓、渐变方向/色标、透明度、遮罩、绘制顺序、路径点数、命名。若 Rive 导入行为改变，先在 sandbox 文件验证，不直接覆盖 master。SideL 与 Back 文件名仅在前序 Gate 通过后启用；不得提前放入 Release。

## 8. Rive 文件架构与运行时契约（规划）

```text
DuckCharacter.riv
├── AB_Duck_Master
├── Components
│   ├── CMP_Eyes
│   ├── CMP_Beak
│   └── CMP_CharacterFX
├── SM_Duck_Main
└── VM_DuckCharacter
```

新项目采用 Data Binding 作为设计与运行时合同；状态机输入只用于原型兼容，不作为正式 API。建议的首版 View Model：

| 属性 | 类型 | 用途 |
|---|---|---|
| `view` | Enum | Front / SideL / SideR / Back |
| `expression` | Enum | Neutral / Happy / Surprise / Think / Sleep |
| `action` | Enum | None / Wave / Nod / Shake / Jump / Point / Guide / Celebrate / Turn |
| `gazeX`, `gazeY` | Number，归一化 -1…1 | 眼神方向 |
| `lookAtEnabled` | Boolean | 运行时注视开关 |
| `targetX`, `targetY` | Number | 指向/引导目标，Artboard 归一化坐标 |
| `energy` | Number 0…1 | 动作力度，不改变角色造型 |
| `isReducedMotion` | Boolean | 降低位移和循环强度 |
| `groundShadowVisible` | Boolean | 场景适配 |
| `actionRequest` | Trigger | 请求一次性动作 |

具体接口需在 Rive 制作阶段与 App 集成方案一并确认；本阶段不修改 Swift。

## 9. Production 目录结构

```text
ProductionAssets/Characters/DuckMascot/
├── README.md
├── 00_Reference/
│   ├── MasterReference/
│   ├── Approvals/
│   └── ProportionSheets/
├── 01_Source/
│   ├── Illustrator/
│   ├── SVG/
│   └── ColorTokens/
├── 02_Rive/
│   ├── Working/
│   ├── Components/
│   ├── Sandbox/
│   └── Release/
├── 03_Exports/
│   ├── SVG/
│   ├── PNG/
│   ├── Preview/
│   └── Runtime/
├── 04_Motion/
│   ├── Storyboards/
│   ├── References/
│   └── QA/
├── 05_Documentation/
│   ├── CharacterSystem.md
│   ├── MotionGuide.md
│   ├── ExpressionGuide.md
│   ├── ChangeLog.md
│   └── ReleaseChecklist.md
└── 99_Archive/
```

当前仓库在 `Documentation/Character/DuckMascot/` 保存规范。Gate 已批准后可创建上述生产目录，但必须以 `Front → SideL → Back` 的阶段门槛隔离 Working、QA 与 Release。

## 10. 版本与验收门槛

- 文件版本：`v{major}.{minor}.{patch}`；造型/比例变更为 major，新增兼容动作或视角为 minor，路径清理或不影响外观的修复为 patch。
- 上传的三视图是唯一视觉基准；任何生产资产不得自行润色、改比例、移动五官或改变基准表情。闭嘴 Neutral 必须与 Master Reference 完全一致，不得因上下喙拆层增加横线、新嘴角或任何新轮廓。
- 每个视角、每个版本必须包含与 Master Reference 对照的 Overlay 验收图；Overlay 同时显示基准、重建矢量和差异标记。
- 每次发布必须包含：当前获批视角静态截图、关键表情板、Pivot overlay、draw-order 测试、隐藏补全/遮罩测试、极限姿势测试、低速播放测试、运行时预览和变更日志。
- 不可见或被遮挡部件必须列入 `Hidden Geometry Register`。眼皮、嘴腔、翼根、腿脚连接默认采用“遮罩优先 + 最小必要补全”，并提交“可见轮廓 / 隐藏补全 / 最终遮罩结果”三态验收图。
- 100% / 50% / 25% 显示尺寸检查五官可读性；不为小尺寸私自加粗或移位，若需小尺寸专版必须作为独立获批 skin。
- `SideR` 镜像只允许用于 Prototype；不得进入 Production Release。正式 SideR 必须作为单独资产完成视觉校准与独立验收。
- 生成式重绘不得直接进入 Working Master 或 Release；必须由人工逐路径校准并通过静态 Overlay 验收。

## 11. 已批准的 Production Approval Gates

1. **独立 View Skin**：Production 使用独立 `Front`、`SideL`、`Back` Skin 和共用语义 Rig，不用单一网格强行扭曲。SideR 镜像仅限 Prototype；正式 SideR 必须独立验收。
2. **眼部 Pose 系统**：眼白、虹膜、瞳孔、高光、上下眼睑独立，并预留 `Blink`、`Smile`、`Sleep` 三种不同标准 Pose；不得以单一 Closed Eye 代替全部闭眼语义。
3. **嘴部系统**：上下喙、嘴腔、舌、嘴角、鼻孔独立；闭嘴 Neutral 完全一致于 Master Reference，不增加横线或新轮廓。隐藏嘴腔只做最小必要补全。
4. **肢体与隐藏连接**：翅膀以肩部 Pivot 旋转为主要运动逻辑，翼尖仅作次级形变；腿脚、尾羽、头羽预留分层。所有不可见连接采用遮罩优先与最小补全并单独验收。
5. **转身视角**：不从现有参考臆造 3/4 姿势；需要连续转身时另行设计并逐张批准。获批前只使用独立 Skin 的安全切换。
6. **顺序 Gate**：只先制作 `Front Production Assets`，完成静态 Overlay、Rive 导入、Rig、`Idle`、`Blink`、`Wave` 三项动画验证并获批后，才开始 `SideL`；SideL 获批后最后制作 `Back`。

### 11.1 Gate 6 阶段退出条件

Front 阶段必须同时满足以下条件，才允许创建 SideL Working Asset：

- Front Neutral 与 Master Reference Overlay 静态验收通过。
- Layer naming、Pivot、draw order、遮罩和 Hidden Geometry Register 通过。
- SVG 导入 Rive 后外观、层级、渐变和遮罩无破坏。
- Front Rig 极限姿势无轮廓破裂、Pivot 滑动或连接处露边。
- `ANM_Idle`、`ANM_Blink`、`ANM_Action_Wave` 在 Rive 中完成并通过 0.25×、1× 和 Reduced Motion 检查。
- 以上结果进入 QA 记录并获得明确批准；未批准资产不得进入 Release。

## 12. Rive 依据

- Rive 官方建议骨骼用于多部件层级运动，局部软变形通过 binding 与 vertex weighting 完成。
- IK 适合脚掌固定和指向目标；多个约束的顺序和 strength 会影响混合结果。
- Constraints 适合纯视觉空间关系（如双眼跟随目标），Data Binding 适合运行时合同与多元素共享状态。
- 新项目优先使用 View Model / Data Binding 驱动状态机和可绑定属性，避免把层级名称直接暴露给 App。
