#!/bin/sh

# golangci & reviewdog実行のため各モジュールのパス(go.modが存在する場所)を探索し配列に格納する。ただし、protoは除外する。
paths=`find \`pwd\` -type f | grep "/go.mod" | sed -e "s/\/go.mod//" `
list=""
for path in $paths; do
  list=`echo ${list}\"${path}\",`
done
list=`echo [${list/%?/}]`
echo ${list}