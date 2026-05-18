#!/usr/bin/env bash
# Usage: ./scripts/update-signoff.sh <phase> <week> <pr-number>
set -euo pipefail

phase="${1:?phase is required}"
week="${2:?week is required}"
pr="${3:?pr-number is required}"

transcript="docs/signoffs/transcripts/phase-${phase}-week-${week}-codex-transcript.md"
signoff="docs/signoffs/phase-${phase}-week-${week}-codex-signoff.md"

if [[ ! -f "${transcript}" ]]; then
  echo "Missing transcript: ${transcript}" >&2
  exit 1
fi

if [[ ! -f "${signoff}" ]]; then
  echo "Missing sign-off: ${signoff}" >&2
  exit 1
fi

sed -i "s|^PR-Number:.*|PR-Number: ${pr}|" "${transcript}"
sed -i "s|^Target-Commit-SHA:.*|Target-Commit-SHA: $(git rev-parse HEAD)|" "${transcript}"
sed -i "s|^Timestamp-UTC:.*|Timestamp-UTC: $(date -u +%Y-%m-%dT%H:%M:%SZ)|" "${transcript}"

hash="$(sha256sum "${transcript}" | awk '{print $1}')"

sed -i "s|^- SHA256 transcript:.*|- SHA256 transcript: ${hash}|" "${signoff}"
sed -i "s|^- ملف transcript:.*|- ملف transcript: ${transcript}|" "${signoff}"
sed -i "s|^- Codex Reviewer (Session-ID + Transcript-SHA256):.*|- Codex Reviewer (Session-ID + Transcript-SHA256): $(grep -E '^Session-ID:' "${transcript}" | sed 's/^Session-ID:[[:space:]]*//') + ${hash}|" "${signoff}"

echo "Updated ${transcript}"
echo "Updated ${signoff}"
echo "Commit both files with the project owner git email, then push."
