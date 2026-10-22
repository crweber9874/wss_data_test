#!/usr/bin/env bash
# Run the full pipeline from the repository root.
set -euo pipefail
cd "$(dirname "$0")/.."
for f in code/01_cleaning/*.R code/02_recoding/*.R analysis/scripts/*.R; do
  [ -e "$f" ] && Rscript "$f"
done
for f in code/01_cleaning/*.py code/02_recoding/*.py analysis/scripts/*.py; do
  [ -e "$f" ] && python "$f"
done
echo "Pipeline complete."
