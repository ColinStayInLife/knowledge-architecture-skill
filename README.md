# Knowledge Architecture Skill

> 让 AI 拥有记忆，让知识不再丢失

一套完整的个人知识管理 + AI 记忆架构，包含 Obsidian 配置、AI 助手联动、飞书集成、自动整理流程。

## 🎯 这是什么？

这是一个 OpenClaw Skill，帮助你快速搭建一套完整的信息管理系统：

```
碎片信息 → AI 助手 → 自动整理 → Obsidian 知识库 → 随时调用
    ↑                                            │
    └─────────────── 闭环完成 ───────────────────┘
```

## ✨ 核心特性

### 1. 双层记忆系统

| 层级 | 文件 | 作用 |
|------|------|------|
| **短期记忆** | `memory/YYYY-MM-DD.md` | 每日工作日志，自动记录 |
| **长期记忆** | `MEMORY.md` | 重要信息永久保存，每次对话都会读取 |

AI 既记得今天发生了什么，也记得去年做过的重要决策。

### 2. Obsidian 知识库

采用 **PARA 方法** + **Johnny Decimal 编号系统**：

```
Obsidian/
├── 00_Inbox/       # 快速收集
├── 01_Daily/       # 日报/日志
├── 02_Projects/    # 项目文档
├── 03_Knowledge/   # 知识库
├── 04_Resources/   # 参考资料
├── 05_Archive/     # 归档
└── 99_System/      # 系统/模板
    └── AI工作区/   # 软链接到 AI 工作区
```

### 3. 核心插件配置

| 插件 | 用途 |
|------|------|
| **Templater** | 模板自动化，新建笔记自动填充格式 |
| **Dataview** | 数据查询，动态聚合笔记（时间流核心） |
| **Copilot** | AI 对话，接入阿里云百炼 |
| **Calendar** | 日历视图，方便查看日报 |

#### Copilot 接入阿里云百炼

```
API Key: 你的百炼 API Key
Base URL: https://coding.dashscope.aliyuncs.com/v1
Model: qwen3.5-plus 或 glm-5
```

### 4. AI 与知识库联动

通过软链接实现：

```bash
ln -s ~/.openclaw/workspace_user1 ~/Obsidian/99_System/AI工作区
```

- 在 OB 里直接编辑 AI 的配置文件
- AI 的记忆和知识库打通
- 对话自动整理进 OB

### 5. 飞书集成

用 OpenClaw 对接飞书：

- 在飞书里直接发消息给 AI
- AI 自动处理（文章摘要、信息整理）
- 重要内容自动沉淀到 Obsidian

### 6. 借鉴 Memos 设计

- **时间流视图** - 用 Dataview 聚合所有日报，按时间倒序展示
- **标签导航** - 按标签聚合笔记，快速定位
- **首页入口** - 打开 OB 就看到最近动态
- **极简收集** - Inbox 目录快速记录

### 7. 自动整理机制

在 HEARTBEAT.md 配置定期任务：

- 更新日报 - 整理今日对话
- 项目进展 - 更新项目概览
- 知识沉淀 - 整理有价值内容

触发词：「整理今天的工作」「更新日报」「总结这个项目」

## 🚀 快速开始

### 方法一：通过 ClawHub 安装

```bash
npx clawhub@latest install knowledge-architecture
```

### 方法二：手动安装

```bash
git clone https://github.com/ColinStayInLife/knowledge-architecture-skill.git
cd knowledge-architecture-skill
./install.sh
```

### 方法三：复制配置

手动创建目录结构，复制 `templates/` 到你的 Obsidian 仓库。

## 📖 使用说明

安装后，在 AI 助手中说：

| 触发词 | 效果 |
|--------|------|
| "初始化知识库" | 创建完整目录结构 |
| "新建日报" | 基于模板创建日报 |
| "整理今天的工作" | 自动整理对话到日报 |
| "更新项目进展" | 更新项目概览 |

## 📁 文件说明

```
knowledge-architecture-skill/
├── SKILL.md           # Skill 元数据
├── README.md          # 说明文档
├── install.sh         # 安装脚本
├── templates/         # Obsidian 模板
│   ├── 日报模板.md
│   ├── 项目概览模板.md
│   ├── 会议记录模板.md
│   ├── 研报摘要模板.md
│   ├── 首页.md
│   └── 时间流.md
├── config/            # 配置示例
│   └── heartbeat.md   # 自动整理配置
└── docs/              # 详细文档
    └── architecture.md
```

## 🔧 配置详解

### HEARTBEAT.md

```markdown
## 每日检查

1. 更新日报 - 整理今日对话
2. 项目进展 - 更新项目概览
3. 知识沉淀 - 整理有价值内容

触发词："整理今天的工作"
```

### 软链接

```bash
ln -s ~/.openclaw/workspace_user1 ~/Obsidian/99_System/AI工作区
```

## 📝 模板系统

### 日报模板

自动添加日期、标签、项目分区，配合 Templater 使用。

### 项目概览

状态、里程碑、关键文件，一目了然。

### 会议记录

议题、讨论、决议、待办，结构化记录。

### 研报摘要

来源、观点、数据、思考，快速消化研报。

## 🤝 贡献

欢迎提交 Issue 和 PR！

## 📄 License

MIT
