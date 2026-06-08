#!/usr/bin/env bash
# Regenerate categoryCounts in tags.json from actual filesystem
set -euo pipefail
MEMES_DIR="$(cd "$(dirname "$0")" && pwd)"
TAGS="$MEMES_DIR/tags.json"

# Build counts JSON
counts="{"
total=0
first=true
for dir in "$MEMES_DIR"/*/; do
  [[ -d "$dir" ]] || continue
  name=$(basename "$dir")
  [[ "$name" == .* ]] && continue
  c=$(find "$dir" -maxdepth 1 -type f \( -name '*.gif' -o -name '*.jpg' -o -name '*.png' -o -name '*.webp' \) | wc -l)
  [[ $c -eq 0 ]] && continue
  $first || counts+=","
  counts+="\"$name\":$c"
  total=$((total + c))
  first=false
done
counts+="}"

# Patch tags.json using python (preserves everything else)
python3 -c "
import json, sys
with open('$TAGS') as f:
    data = json.load(f)
data['_meta']['categoryCounts'] = json.loads('$counts')
data['_meta']['totalFiles'] = $total
data['_meta']['updated'] = '$(date +%Y-%m-%d)'
data['_meta']['version'] = data['_meta'].get('version', 1)
with open('$TAGS', 'w') as f:
    json.dump(data, f, indent=2, ensure_ascii=False)
print(f'Updated: {len(data[\"_meta\"][\"categoryCounts\"])} categories, {$total} total files')
"
