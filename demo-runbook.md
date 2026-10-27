# Live demo runbook

**Working title:** Close Your Laptop. Keep Your Agents Running.

**Goal:** Show that the host, not the viewing device, is the persistent unit of AI-assisted development.

**Target:** roughly 6 minutes live + Q&A (within the event's approximate 10-minute demo/Q&A slot, subject to confirmation).

## 0:00–0:45 — Problem and promise

Say: "My laptop isn't where my coding agents live. It's just one interface to an always-on development environment. I'm going to start on a laptop, disconnect, and pick up the same work on my phone."

Show the existing environment, not a deck.

## 0:45–1:30 — Architecture in the terminal

Host: Mac mini. Network: Tailscale. Shell: SSH. Session layer: Herdr. Agent: Claude Code. Mobile: Moshi.

Explain briefly why you moved beyond many SSH windows and experimented with tmux and Herdr. Mention that the CLI approach can accommodate multiple agents; do not turn this into a product comparison.

## 1:30–2:45 — Start with Claude Code on MacBook

Use a preconfigured test repo. Ask Claude Code to make a visible, bounded change (for example, update a small UI component), then verify the work is running on the host. Show that a second session or agent could run in parallel if already configured.

## 2:45–4:15 — Disconnect and resume on iPhone

Disconnect the laptop client while leaving the agent and host running. Open Moshi on iPhone, navigate to the same Herdr session, review progress, and respond to an agent notification or approval prompt if available.

## 4:15–5:15 — See the result

Use mobile access to inspect the running dev-server preview or another visible result. Make clear which features depend on the Mac host (e.g., iOS Simulator) and which can work on a VPS.

## 5:15–6:00 — What carries over and what doesn't

- Portable: shell, agents, processes, code, session management, most web dev previews.
- Agent/client-dependent: notification and approval integrations.
- Mac-specific: iOS Simulator and some Apple development tooling.

Close: "The key idea isn't SSH from a phone. It's making the development environment persistent and letting your devices come and go."

## Backup paths

- If live agent output takes too long, reconnect to a separate pre-running session.
- If push notifications don't arrive, navigate directly to the agent session on the phone.
- If the dev preview fails, inspect `git diff` or a completed test run instead.
- If mobile connectivity fails, use laptop reconnection to show persistence.

## Q&A prompts

- Why not just use Claude Code's or Codex's remote feature?
- Why Herdr over tmux?
- How do you protect the host and secrets?
- What changes on an inexpensive VPS?
- What happens when the client disconnects or the remote host restarts?
