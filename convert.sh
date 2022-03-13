#!/bin/bash

for f in *.txt; do
  target="${f%.*}.json"
  echo "$f -> $target"
  ./to-tsv.sed "$f" |\
    ./to-json.sed > "$target"
  jq '.' "$target" > /dev/null
done
