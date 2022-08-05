#!/bin/sh

# 任一步骤执行失败都会终止整个部署过程
set -e






# 添加更改到 git
git add .

# 提交更改
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
msg="$*"
fi
git commit -m "$msg"

# 推送到远程仓库
git push origin master
