#!/bin/bash

echo "🚀 GitHub Pages デプロイスクリプト"

# 1. 重複フォルダ削除でサイズ削減
echo "📂 不要ファイル削除中..."
rm -rf index_mastertosite/
rm -rf images/
rm -rf archive_html_files/

# 2. Git追加・コミット
echo "📝 変更をコミット中..."
git add .
git commit -m "Clean up for GitHub Pages deployment 🚀"

# 3. プッシュ
echo "☁️ GitHubにプッシュ中..."
git push origin master

echo ""
echo "✅ 完了！数分後に以下でアクセス可能："
echo "🌐 https://[あなたのユーザー名].github.io/[リポジトリ名]"
echo ""
echo "GitHub.com でリポジトリ → Settings → Pages → Source: Deploy from branch → master"