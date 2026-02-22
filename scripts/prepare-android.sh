#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT_DIR"

if [ ! -d android ]; then
  npx cap add android
fi

if [ -f "resources/icon.png" ]; then
  npx @capacitor/assets generate --android --iconBackgroundColor '#3f2a8c' --splashBackgroundColor '#ffffff' || true
fi

npx cap sync android
