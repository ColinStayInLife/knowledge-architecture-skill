# Knowledge Architecture Skill

> 一套完整的个人知识管理 + AI 记忆架构

## 🎯 这是什么？

这是一个 OpenClaw Skill，帮助你快速搭建一套完整的信息管理系统：

```
┌─────────────────────────────────────────────────────────────┐
│                    信息管理架构                              │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│   碎片信息 ──→ AI 助手 ──→ Obsidian ──→ 知识沉淀            │
│      ↑                                    │                │
│      └────────── 随时调用 ←───────────────┘                │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## ✨ 核心特性

### 1. 双层记忆系统

| 层级 | 文件 | 作用 |
|------|------|------|
| **短期记忆** | `memory/YYYY-MM-DD.md` | 每日工作日志，自动记录 |
| **长期记忆** | `MEMORY.md` | 重要信息永久保存 |

### 2. Obsidian 知识库

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

### 3. AI 联动

- **软链接**：AI 工作区直接出现在 Obsidian 中
- **自动整理**：对话自动整理到日报
- **知识调用**：AI 可读取你的知识库

### 4. 模板系统

- 日报模板 - 自动添加日期和标签
- 项目概览 - 状态、里程碑、关键文件
- 会议记录 - 议题、讨论、决议
- 研报摘要 - 来源、观点、数据

### 5. 时间流视图

用 Dataview 聚合所有日报，类似 Memos 的时间线展示。

## 🚀 快速开始

### 方法一：通过 ClawHub 安装

```bash
npx clawhub@latest install knowledge-architecture
```

### 方法二：手动安装

```bash
git clone https://github.com/YOUR_USERNAME/knowledge-architecture-skill.git
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

## 🔧 配置

### HEARTBEAT.md

在 AI 工作区创建 `HEARTBEAT.md`，配置自动整理任务：

```markdown
## 知识库自动整理

- **更新日报** - 整理今日对话到日报
- **项目进展** - 更新项目概览
- **知识沉淀** - 整理有价值内容

触发词："整理今天的工作"、"更新日报"
```

### 软链接

手动创建软链接：

```bash
ln -s ~/.openclaw/workspace_user1 ~/Obsidian/99_System/AI工作区
```

## 🤝 贡献

欢迎提交 Issue 和 PR！

## 📄 License

MIT
