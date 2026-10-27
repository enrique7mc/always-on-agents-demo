# Preparation checklist

## Submission

- [ ] Paste title, short/full description, and format into the actual form fields
- [ ] Add your preferred public speaker profile and contact details
- [ ] Create the GitHub repo and replace placeholder links in `submission.md`
- [ ] Confirm whether the organizers expect 5 or 10 minutes and whether Q&A is included

## Host and sessions

- [ ] Confirm Mac mini uptime, Tailscale reachability, and SSH access from both devices
- [ ] Start Herdr and pre-create one live agent session and one backup session
- [ ] Confirm agent tools, permissions, repo checkout, dependencies, and git status
- [ ] Test that the agent process survives terminal disconnection
- [ ] Prepare a very small, deterministic demo task

## Mobile

- [ ] Rehearse Moshi SSH login and Herdr session navigation
- [ ] Rehearse notifications and approval interactions on phone/watch
- [ ] Test the preview with the exact network path and phone connection to be used on stage
- [ ] Verify a reliable mobile connection independent of venue Wi-Fi

## Security and reliability

- [ ] Never show SSH keys, tokens, Tailscale device secrets, or private notification contents
- [ ] Use a safe demo repo and scrub any private code, paths, prompts, or customer data
- [ ] Minimize agent permissions for the demonstration
- [ ] Have a pre-completed session and visible fallback result
- [ ] Configure larger terminal fonts and disable distracting notifications
- [ ] Do not publish device hostnames, IPs, or sensitive config in the public repo

## Presentation

- [ ] Project the MacBook screen and arrange a clear iPhone screen display method
- [ ] Rehearse within six minutes with the phone handoff visible
- [ ] Prepare one sentence for each trade-off: tmux vs Herdr; Mac mini vs VPS; provider remote vs host-level remote
- [ ] Finish with a short, memorable takeaway
