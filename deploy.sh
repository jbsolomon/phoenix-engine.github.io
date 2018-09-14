#!/bin/bash

mydate="$(date -u +'%a, %d %b %Y  %T %z')"
buildid="$(echo "$mydate" | tr -d ' ',',','+',':')"
git checkout --orphan "${buildid}"

hugo
rm config.toml README.md .gitignore LICENSE
rm -rf content layouts themes static .gitmodules
mv public/* ./
rm -rf public
echo "*.sw[nop]" > .gitignore
rm deploy.sh

git add . --all

git commit -m "Build ${buildid}"

if [ `git branch --list master` ] ; then
  git checkout master
else
  git checkout upstream/master
  git checkout -b master
  git branch --set-upstream-to=upstream/master
fi

rm -rf *
git checkout "${buildid}" -- . # Checkout everything
git add . --all
git branch -D "${buildid}"
