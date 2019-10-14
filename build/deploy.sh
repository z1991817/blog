#!/usr/bin/env sh

set -e

npm run build

cd dist

git init
git config user.name 'z1991817'
git config user.email '377584613@qq.com'
git add -A
git commit -m 'deploy'

git push -f git@github.com:z1991817.git master:gh-pages

cd -
