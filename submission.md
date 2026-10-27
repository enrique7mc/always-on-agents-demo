# Speaker submission draft

## Title

Close Your Laptop. Keep Your Agents Running.

## Subtitle

Always-on, agent-agnostic AI development from desktop to mobile.

## Short summary (for a short text field)

A live demo of an always-on AI coding setup: Claude Code runs on a remote Mac mini while I switch seamlessly from MacBook to iPhone. I'll show persistent sessions, mobile notifications, approvals, and live previews—and explain why the approach works across coding agents.

## Full description

What if your AI coding agents could keep working after you close your laptop—and you could pick up exactly where you left off from your phone?

I'll demonstrate my always-on development environment built around a Mac mini, Tailscale, SSH, Herdr, and Moshi, using Claude Code for the live demo.

I'll start a coding task on my MacBook, disconnect, and continue the same session from an iPhone. Along the way, I'll demonstrate persistent terminal sessions, mobile agent notifications, approvals, and access to running development servers.

Unlike agent-specific remote experiences, this approach keeps the development environment independent of any particular AI provider. You can use Claude Code, Codex, OpenCode, or several agents side by side, while keeping your tools, projects, and sessions accessible across devices.

I'll also share the technical trade-offs between traditional SSH, tmux, and newer session-management tools, plus how to reproduce the setup on an inexpensive VPS.

## What makes this technical?

- Process/session persistence decoupled from the client device
- Private remote access over Tailscale and SSH
- Session management and multi-agent separation with Herdr or tmux
- Mobile agent notification and approval flows (depending on integration)
- Access to running development servers and previews
- Trade-offs: Mac mini vs. VPS; SSH windows vs. tmux vs. Herdr; security and connectivity

## What attendees will learn

How to keep agents running across device changes; how to organize several CLI coding agents in one remote environment; and when to choose an agent-specific remote feature versus a portable, self-controlled development host.

## Short speaker bio (edit to reflect your preferred details)

I'm a software engineer exploring practical AI coding workflows, agent tooling, and remote development environments. I experiment with Claude Code, Codex, and OpenCode, with a focus on building workflows that remain useful across devices and providers.

## Supporting links

- Demo repository: https://github.com/enrique7mc/always-on-agents-demo
- GitHub profile: https://github.com/enrique7mc
- LinkedIn or X profile: [OPTIONAL]

## Presentation format

Live technical demo; no slides. Target approximately 6 minutes of demonstration and leave the remaining slot for Q&A, pending organizer confirmation.
