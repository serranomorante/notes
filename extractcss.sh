#!/bin/sh

# thanks! https://github.com/jgm/pandoc/issues/7860#issuecomment-1018696254
style=${1:-pygments}
tmp=
trap 'rm -f "$tmp"' EXIT
tmp=$(mktemp)
echo '$highlighting-css$' > "$tmp"
echo '`test`{.c}' | pandoc --highlight-style=$style --template=$tmp
