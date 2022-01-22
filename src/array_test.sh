#!/bin/sh

paths=`find \`pwd\` -type f | grep "/go.mod" | sed -e "s/\/go.mod//" `

for path in $paths; do
  echo $path
  cd $path
  golangci-lint run --out-format=line-number ./...
done