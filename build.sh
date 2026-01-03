#!/bin/bash
set -e

echo "Validating app structure..."
# For HF Spaces, we don't install dependencies in CI
# HF Spaces will install requirements.txt automatically

echo "Validating app..."
if [ -f src/app.py ]; then
    # Use python3 if available, otherwise python
    if command -v python3 &> /dev/null; then
        python3 -m py_compile src/app.py
    elif command -v python &> /dev/null; then
        python -m py_compile src/app.py
    else
        echo "Warning: Python not found, skipping syntax validation"
    fi
fi

echo "Build complete!"
