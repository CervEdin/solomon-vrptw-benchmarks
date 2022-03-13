#!/bin/bash

for f in $(find ./results/ -name '*.txt'); do
  target="${f%.*}.json"
  ./results/to-json.sed "$f" |\
    tee "$target" |\
    jq '.' > /dev/null || echo "$f"
done
