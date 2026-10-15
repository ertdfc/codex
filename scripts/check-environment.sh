#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")/.."

if ! command -v git >/dev/null 2>&1; then
  printf 'ERROR: Git is required but is not available.\n' >&2
  exit 1
fi
git --version

if command -v python3 >/dev/null 2>&1; then
  python3 --version
elif command -v python >/dev/null 2>&1; then
  python --version
else
  printf 'Python: not installed (optional until a project requires it).\n'
fi

if command -v node >/dev/null 2>&1; then
  node --version
else
  printf 'Node.js: not installed (optional until a project requires it).\n'
fi

if command -v npm >/dev/null 2>&1; then
  npm --version
else
  printf 'npm: not installed (optional until a project requires it).\n'
fi

printf '\nEnvironment check passed: Git is available. No application dependencies or tests are configured yet.\n'
