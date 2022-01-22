#!/bin/sh

paths=`find \`pwd\` -type f | grep "/go.mod" | sed -e "s/\/go.mod//" `
current=`pwd`
echo $current
for path in $paths; do
  echo $path
  cd $path

  prefix=`echo $path | sed -e "s@${current}/@@g"`
  echo $prefix
  golangci-lint run --path-prefix=${prefix} --out-format=github-actions ./... >> ${current}/test.txt
done