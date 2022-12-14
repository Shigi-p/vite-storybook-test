#!/usr/bin/env sh

# エラー時は停止
set -e

# ビルド
yarn build

# ビルド出力ディレクトリに移動
cd dist

git init
git checkout -B main
git add -A
git commit -m 'deploy'

# https://<USERNAME>.github.io/<REPO> にデプロイする場合
git push -f git@github.com:Shigi-p/vite-storybook-test.git main:gh-pages

cd -