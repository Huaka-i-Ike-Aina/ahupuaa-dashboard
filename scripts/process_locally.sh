#!/bin/bash
set -e

echo "=========================================="
echo "Local Data Processing"
echo "=========================================="
echo ""

# Check for raw data
if [ ! -f "raw_data/Carbon_Assessment_of_Hawaii_-_Land_Cover_-_Biome_Unit.geojson" ]; then
    echo "ERROR: Raw carbon data not found!"
    exit 1
fi

# Render processing notebook
echo "Rendering processing_notebook.qmd..."
quarto render processing_notebook.qmd

echo ""
echo "=========================================="
echo "Processing Complete!"
echo "=========================================="
echo ""
echo "Processed files:"
ls -lh processed_data/
echo ""
echo "Next steps:"
echo "  git add processed_data/"
echo "  git commit -m 'Update processed data'"
echo "  git push"
