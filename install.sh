#!/bin/bash

# Knowledge Architecture Skill 安装脚本

set -e

OBSIDIAN_DIR="${OBSIDIAN_DIR:-$HOME/Obsidian}"
WORKSPACE="${WORKSPACE:-$HOME/.openclaw/workspace_user1}"

echo "=== Knowledge Architecture Skill 安装 ==="
echo "Obsidian 目录: $OBSIDIAN_DIR"
echo "工作区目录: $WORKSPACE"
echo ""

# 1. 创建 Obsidian 目录结构
echo "1. 创建知识库目录结构..."
mkdir -p "$OBSIDIAN_DIR"/{00_Inbox/待整理,01_Daily,02_Projects,03_Knowledge/{技术栈,行业知识,工具配置},04_Resources/{研报,论文,教程,模板},05_Archive,99_System/{Templates,Scripts}}

# 2. 创建 .obsidian 配置
echo "2. 创建 Obsidian 配置..."
mkdir -p "$OBSIDIAN_DIR/.obsidian/plugins"

# 3. 复制模板
echo "3. 安装模板..."
cp -r templates/* "$OBSIDIAN_DIR/99_System/Templates/"

# 4. 创建软链接
echo "4. 创建软链接..."
ln -sf "$WORKSPACE" "$OBSIDIAN_DIR/99_System/AI工作区"

# 5. 更新 HEARTBEAT.md
echo "5. 配置自动整理..."
if [ -f "$WORKSPACE/HEARTBEAT.md" ]; then
    cat >> "$WORKSPACE/HEARTBEAT.md" << 'HBEOF'

## 知识库自动整理

- **更新日报** - 整理今日对话到日报
- **项目进展** - 更新项目概览
- **知识沉淀** - 整理有价值内容

触发词："整理今天的工作"、"更新日报"、"总结这个项目"
HBEOF
fi

echo ""
echo "✅ 安装完成!"
echo "打开 Obsidian，选择 $OBSIDIAN_DIR 作为仓库"
