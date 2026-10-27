# Speaker submission draft

## Title

Close Your Laptop. Keep Your Agents Running.

## Subtitle

Always-on, agent-agnostic AI development from desktop to mobile.

## Short summary (for a short text field)

A live demo of an always-on AI coding setup: Claude Code runs a long task on a remote Mac mini while I switch from MacBook to iPhone. Claude Code hook events drive the phone notifications, and I approve the agent's permission requests from the notification. I'll show the hook wiring, persistent sessions, and live previews, and explain why the approach works across coding agents.

## Full description

Coding agents now run long, multi-step tasks on their own. What if those agents could keep working after you close your laptop—and reach you on your phone only when they need a decision?

I'll demonstrate my always-on development environment built around a Mac mini, Tailscale, SSH, Herdr, and Moshi, using Claude Code for the live demo.

I'll start a coding task on my MacBook, disconnect, and continue the same session from an iPhone. Along the way, I'll demonstrate persistent terminal sessions, mobile agent notifications, approvals, and access to running development servers.

I'll also open the wiring in the repo. Claude Code hook events (`PermissionRequest`, `AskUserQuestion`, `ExitPlanMode`, `Stop`) go to `moshi-hook`, which pushes them to the phone. The permission hook is synchronous, so an approval from the notification goes straight back into the waiting session. A Herdr hook on `SessionStart` maps each agent session to its pane, so a tap on the notification opens the right session.

Unlike agent-specific remote experiences, this approach keeps the development environment independent of any particular AI provider. You can use Claude Code, Codex, OpenCode, or several agents side by side, while keeping your tools, projects, and sessions accessible across devices.

I'll also share the technical trade-offs between traditional SSH, tmux, and newer session-management tools, plus how to reproduce the setup on an inexpensive VPS.

## What makes this technical?

- Process/session persistence decoupled from the client device
- Private remote access over Tailscale and SSH
- Session management and multi-agent separation with Herdr or tmux
- Agent state → notification: Claude Code hook events drive pushes and approvals; a synchronous `PermissionRequest` hook returns the phone's decision to the agent
- Session-to-pane mapping so a notification opens the session that needs you
- Access to running development servers and previews
- Trade-offs: Mac mini vs. VPS; SSH windows vs. tmux vs. Herdr; security and connectivity

## What attendees will learn

How to keep agents running across device changes; how to organize several CLI coding agents in one remote environment; and when to choose an agent-specific remote feature versus a portable, self-controlled development host.

Three lessons from my trial and error:

1. The hard problem is attention, not connectivity: with several sessions open, I missed the ones that waited for me.
2. Notifications must come from agent events and lead into the right session; a generic "turn finished" push is not enough.
3. The host owns the state, so devices can come and go.

I'll also be clear about what is portable (host, SSH, Herdr, hooks, a VPS) and what depends on Moshi (actionable phone approvals).

## Short speaker bio (edit to reflect your preferred details)

I'm a software engineer exploring practical AI coding workflows, agent tooling, and remote development environments. I experiment with Claude Code, Codex, and OpenCode, with a focus on building workflows that remain useful across devices and providers.

## Supporting links

- Demo repository: https://github.com/enrique7mc/always-on-agents-demo
- GitHub profile: https://github.com/enrique7mc
- LinkedIn or X profile: [OPTIONAL]

## Presentation format

Live technical demo; no slides. Target approximately 6 minutes of demonstration and leave the remaining slot for Q&A, pending organizer confirmation.
