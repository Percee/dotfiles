#!/usr/bin/env bash
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
. "$DIR/base.sh"

chezmoi_bin="$MY_BINDIR/chezmoi"

if ! command_available "$chezmoi_bin"; then
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        BINDIR="$MY_BINDIR" sh -c "$(curl -fsLS git.io/chezmoi)" || sh -c "$(wget -qO- git.io/chezmoi)"
    fi
else
    ansi --yellow "Chezmoi exists, skipping."
fi
