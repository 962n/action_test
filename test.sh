#!/bin/sh

# golangci & reviewdog実行のため各モジュールのパス(go.modが存在する場所)を探索し配列に格納する。ただし、protoは除外する。
array=`find \`pwd\` | grep "/go.mod" | sed -e "s/\/go.mod//" `
CURRENT=`echo \`pwd\``

echo ${#array[@]}
#LENGTH=`echo ${#array[@]}`
#echo ${LENGTH}

for a in $array; do
  MOD_PATH=`echo $a`
  cd $MOD_PATH
  echo ${MOD_PATH}
#  echo `pwd`
#  golangci-lint run -c ${CURRENT}/golangci.yaml ./... | reviewdog -f=golangci-lint  -diff="git diff FETCH_HEAD"
done
