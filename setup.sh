#!/usr/bin/env bash
# Sets up a local Python virtual environment with Zensical.
# Usage: ./setup.sh
set -euo pipefail
cd "$(dirname "$0")"

if command -v python3 >/dev/null 2>&1; then
    PYTHON=python3
elif command -v python >/dev/null 2>&1; then
    PYTHON=python
else
    echo "Python 3 not found. Install it and re-run." >&2
    exit 1
fi

if [ ! -d .venv ]; then
    echo "Creating virtual environment in .venv ..."
    "$PYTHON" -m venv .venv
fi

echo "Installing dependencies ..."
.venv/bin/python -m pip install --upgrade pip
.venv/bin/python -m pip install -r requirements.txt

echo
echo "Done. To preview the docs:"
echo "  source .venv/bin/activate"
echo "  zensical serve"
