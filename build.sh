#!/bin/bash
set -e

echo "Validating app structure..."
# For HF Spaces, we don't install dependencies in CI
# HF Spaces will install requirements.txt automatically

echo "Validating app..."
if [ -f src/app.py ]; then
    python -m py_compile src/app.py
fi

echo "Build complete!"
