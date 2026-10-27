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
- **Session management:** Herdr (tmux works as an alternative, but this repo documents Herdr)
- **Mobile access, notifications, and approvals:** Moshi on iOS, through Claude Code hooks
- **Example coding agent:** Claude Code

Full install steps and config: [`setup/`](setup/README.md).

## How a session gets your attention

1. Claude Code runs inside a Herdr pane on the host.
2. On `SessionStart`, a Herdr hook tells the Herdr server which pane runs which agent session.
3. When the agent needs you, Claude Code fires a hook event: `PermissionRequest`, `AskUserQuestion`, `ExitPlanMode`, or `Stop`.
4. `moshi-hook` turns the event into a push on the phone or watch.
5. For a permission request, you approve from the notification. The hook is synchronous, so the decision goes back into the waiting session.
6. To review something in detail, tap the notification. Moshi opens the same Herdr session over SSH.

The agent state drives the notifications. You do not watch terminals to find the session that waits for you.

## Key distinction

Claude Code and Codex have useful built-in remote features. This demo is about making the **entire development environment** persistent and accessible, instead of relying on one agent-specific remote experience. Some mobile integrations, such as notifications, may depend on client and agent support.

## Lessons from trial and error

1. **The hard problem is attention, not connectivity.** SSH from a phone was easy. With several sessions open, I often did not notice that one waited for my input.
2. **Notifications must come from agent events and lead into the right session.** A generic "turn finished" push (my earlier ntfy setup) helped at the desk. It could not take an approval or take me into the session that needed me.
3. **The host owns the state. Devices are only views.** When sessions live on the host, I can switch between laptop, phone, and watch at any moment and lose nothing.

## Why this matters more now

Coding agents now run long, multi-step tasks without a human in each step. A task can outlive a laptop session. The bottleneck becomes the few moments when the agent needs a human decision. This setup keeps those tasks running on the host and sends only those moments to whatever device is at hand.

## Demo in one sentence

Start Claude Code on a MacBook, disconnect, continue the same running session on iPhone, respond to an agent notification, and inspect the result on a remotely accessible development server.

## Repository contents

- [`submission.md`](submission.md) — copy-ready proposal text
- [`demo-runbook.md`](demo-runbook.md) — timed live demo and talking points
- [`checklist.md`](checklist.md) — preparation, fallback, and security checklist
- [`setup/`](setup/README.md) — install steps, Claude Code hook wiring, Moshi gateway config, optional ntfy fallback

## Event format

Event information describes 5–6 lightning demos, around 10 minutes per slot including Q&A, with live code, no slides, and technical trade-offs. Reconfirm the final speaking time with the organizer.

Submission form: https://mexico-city.aitinkerers.org/meetup/mu_PMWosz6et1c/speaking

Event listing: https://mexico-city.aitinkerers.org/
