#!/usr/bin/env bash
set -euxo pipefail

printf "%s" "$1" >/tmp/release-notes.md
goreleaser release --clean --release-notes /tmp/release-notes.md
