#!/bin/bash
set -e

echo "Build process for HF Space..."
# For HF Spaces, we don't install dependencies or validate in CI
# HF Spaces will handle all of this automatically when deployed

# Verify required files exist
if [ -f src/app.py ]; then
    echo "✓ app.py found"
else
    echo "✗ app.py missing"
    exit 1
fi

if [ -f src/requirements.txt ]; then
    echo "✓ requirements.txt found"
fi

echo "✓ Build complete - ready for deployment"
