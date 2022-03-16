#!/bin/bash

while IFS= read -r url; do
  file="${url##*/}"
  curl "$url" > "$file"
done < result-links
