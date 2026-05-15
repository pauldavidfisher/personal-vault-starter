#!/bin/bash
# Personal Vault — start script
# Installs dependencies and launches the app

set -e

echo ""
echo "  ✦  Personal Vault"
echo ""

# Check Python
if ! command -v python3 &> /dev/null; then
    echo "  ❌ Python 3 not found. Install from https://python.org"
    exit 1
fi

PYTHON_VERSION=$(python3 -c 'import sys; print(sys.version_info.minor)')
if [ "$PYTHON_VERSION" -lt 9 ]; then
    echo "  ❌ Python 3.9+ required. Found: $(python3 --version)"
    exit 1
fi

# Install dependencies
echo "  Installing dependencies..."
pip3 install -r requirements.txt --break-system-packages -q

# Optional: PyMuPDF for PDF support
pip3 install pymupdf --break-system-packages -q 2>/dev/null || true

echo "  Starting..."
echo ""

python3 vault_search_upload.py "$@"
