#!/bin/bash

echo "=== GitHub Pages 互換性チェック ==="

# 1. 大きなファイル検出 (50MB以上)
echo "🔍 50MB以上のファイル:"
find . -type f -size +50M -not -path "./.git/*" | head -5
echo ""

# 2. 動画ファイル一覧
echo "🎥 動画ファイル:"
find . -name "*.mp4" -o -name "*.mov" -o -name "*.avi" | head -5
echo ""

# 3. リポジトリ合計サイズ
echo "📦 リポジトリサイズ:"
du -sh . --exclude=.git
echo ""

# 4. 大きなフォルダTOP5
echo "📂 大きなフォルダTOP5:"
du -sh */ 2>/dev/null | sort -hr | head -5
echo ""

echo "✅ GitHub Pages制限: ファイル100MB未満, リポジトリ1GB未満"