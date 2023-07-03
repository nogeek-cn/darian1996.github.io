#!/usr/bin/env bash

# git remote add gitee git@gitee.com:Darian1996/darian1996.github.io.git
# git remote add github git@gitee.com:Darian1996/darian1996.github.io.git


commit_msg=$(date "+%Y-%m-%d %H:%M:%S AutoCommit.sh by Darian")
git status
git add *
git commit -m "${commit_msg}"
echo "============================================================="
echo "${commit_msg}"
echo "============================================================="
git pull --no-edit gitee master
git pull --no-edit github master
git push gitee master
git push github master
