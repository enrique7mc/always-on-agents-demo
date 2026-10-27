# Setup

This is the wiring the demo uses on the always-on host. Versions in the demo: Herdr 0.9.5, moshi-hook 0.4.38, Claude Code.

## 1. Host and network

1. Keep a Mac mini (or a Linux VPS) on and awake.
2. Install Tailscale on the host, the laptop, and the phone.
3. Enable SSH on the host. Allow it only over the Tailscale network.

## 2. Herdr (session layer)

Install Herdr from [herdr.dev](https://herdr.dev), then add the Claude Code integration:

```sh
herdr integration install claude
herdr integration status
```

The integration writes `~/.claude/hooks/herdr-agent-state.sh` and registers it as a `SessionStart` hook. On each session start, the hook sends `pane.report_agent_session` to the Herdr server over its Unix socket. Herdr then knows which pane runs which agent session, so it can show which session needs attention.

Start or attach to the persistent session from any device:

```sh
ssh <host>     # over Tailscale
herdr          # launch or attach
```

Other agents have integrations too: `herdr integration install codex`, `opencode`, and more.

## 3. Moshi (phone notifications and approvals)

```sh
brew install rjyo/moshi/moshi-hook
moshi-hook install claude
```

Then pair the host in the Moshi iOS app.

The installer registers one command, `moshi-hook claude-hook`, on several Claude Code hook events. See [`claude-hooks.example.json`](claude-hooks.example.json).

| Hook event | What the phone shows |
|---|---|
| `PermissionRequest` | Approval prompt. You approve or deny from the notification. |
| `Notification` (`permission_prompt`) | Alert that a session waits for permission |
| `PreToolUse` / `PostToolUse` on `AskUserQuestion`, `ExitPlanMode` | The agent asks a question or proposes a plan |
| `Stop` | The turn is finished |
| `SessionStart`, `SessionEnd`, `UserPromptSubmit` | Session state for the app |

`PermissionRequest` is the only synchronous hook (`"async": false`). Claude Code waits for the hook to return, so the decision from the phone goes back into the session. All other hooks are fire-and-forget.

The installer also adds a small Claude Code plugin. It sends Claude's next-prompt suggestion to Moshi Chat View.

Gateway settings are in [`moshi-config.toml`](moshi-config.toml). `suppress_push_without_mux = true` sends pushes only for agents that run inside a multiplexer. The persistent sessions notify you, and throwaway shells stay quiet.

## 4. Optional: notifications without Moshi

[`ntfy-notify-stop.sh`](ntfy-notify-stop.sh) is a `Stop` hook that sends a "turn finished" push through [ntfy.sh](https://ntfy.sh). It worked well on the laptop. It does not support approvals, and the demo does not test it on the phone.

## What is portable

| Part | Portable? |
|---|---|
| Host, Tailscale, SSH, Herdr, agents, dev servers | Yes. Works on a Linux VPS. |
| Hook events | Yes. They are part of Claude Code. Other agents have their own hook systems. |
| Actionable phone approvals, Chat View | Moshi-specific |
| iOS Simulator and Apple tooling | Needs a Mac host |

## Security

- Do not commit `~/.config/moshi/secrets.json` or `host.json`.
- Treat an ntfy topic like a password.
- Keep SSH reachable only over Tailscale.
