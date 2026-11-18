#!/usr/bin/env bash
#
# scripts/install.sh — shae-v-terminal-system-monitor
#
# Builds and installs the V terminal system monitor.
#
# Requires: v compiler (not available locally). Cannot compile-test locally.
#
# Usage:
#   ./scripts/install.sh        # build release binary
#   ./scripts/install.sh run    # build + run
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$REPO_ROOT/src/main.v"
BIN="$REPO_ROOT/monitor"

require_v() {
    if ! command -v v >/dev/null 2>&1; then
        echo "Error: v compiler is required but not installed." >&2
        echo "Install V (https://vlang.io) and re-run." >&2
        exit 1
    fi
}

build() {
    require_v
    v -prod -o "$BIN" "$SRC"
    echo "Built: $BIN"
}

run() {
    build
    "$BIN" "$@"
}

case "${1:-}" in
    run)
        shift
        "$BIN" "$@"
        ;;
    *)
        build
        echo "Done. Run with: ./monitor [--interval N] [--top N]"
        ;;
esac
