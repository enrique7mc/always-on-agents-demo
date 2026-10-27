#!/bin/bash
# Optional fallback without Moshi: push a notification when a Claude Code turn finishes.
# Register it as a Stop hook. Receives the hook payload as JSON on stdin.
# Tested on desktop only. The ntfy iOS app can receive these pushes, but this demo does not use it.
#
# Treat the topic like a password: anyone who knows it can read your pushes.
TOPIC="${NTFY_TOPIC:?set NTFY_TOPIC to a long random string}"

payload="$(cat)"
cwd="$(printf '%s' "$payload" | /usr/bin/sed -n 's/.*"cwd"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p')"
project="$(basename "${cwd:-$PWD}")"

curl -s --max-time 5 \
  -H "Title: Claude finished — ${project}" \
  -H "Tags: robot" \
  -d "Claude Code finished a turn in ${project}" \
  "https://ntfy.sh/${TOPIC}" >/dev/null 2>&1

exit 0
