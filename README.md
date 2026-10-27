# Close Your Laptop. Keep Your Agents Running.

**Always-on, agent-agnostic AI development from desktop to mobile.**

Draft for **AI Tinkerers CDMX × Mexico Tech Week — October 27, 2026**.

## The idea

AI coding agents should keep working when we close our laptops. This demo shows a persistent remote development environment that we can access from a MacBook or iPhone without restarting agent sessions or losing the running development tools.

I use **Claude Code** for the live demonstration, but the workflow also supports other CLI coding agents such as Codex and OpenCode, including multiple agents operating in separate sessions.

## Stack

- **Host:** always-on Mac mini (or Linux VPS for most terminal-based workflows)
- **Private networking:** Tailscale
- **Remote shell:** SSH
- **Desktop terminal:** Warp or iTerm2
- **Session management:** Herdr (tmux as an alternative)
- **Mobile access:** Moshi on iOS
- **Example coding agent:** Claude Code

## Key distinction

Claude Code and Codex have useful built-in remote features. This demo is about making the **entire development environment** persistent and accessible, instead of relying on one agent-specific remote experience. Some mobile integrations, such as notifications, may depend on client and agent support.

## Demo in one sentence

Start Claude Code on a MacBook, disconnect, continue the same running session on iPhone, respond to an agent notification, and inspect the result on a remotely accessible development server.

## Repository contents

- [`submission.md`](submission.md) — copy-ready proposal text
- [`demo-runbook.md`](demo-runbook.md) — timed live demo and talking points
- [`checklist.md`](checklist.md) — preparation, fallback, and security checklist

## Event format

Event information describes 5–6 lightning demos, around 10 minutes per slot including Q&A, with live code, no slides, and technical trade-offs. Reconfirm the final speaking time with the organizer.

Submission form: https://mexico-city.aitinkerers.org/meetup/mu_PMWosz6et1c/speaking

Event listing: https://mexico-city.aitinkerers.org/
