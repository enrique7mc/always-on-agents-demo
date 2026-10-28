# Architecture image

Generated with the built-in image generation tool from the stack and hook flow documented in `README.md` and `setup/README.md`.

## Generation prompt

Use case: infographic-diagram
Asset type: architecture diagram embedded in a GitHub README.
Primary request: Draw an accurate, beautifully legible architecture diagram for the repository "Always-on agents". Landscape layout, approximately 16:10, white background, dark navy typography, restrained teal for terminal connections and amber for notifications. Crisp flat technical infographic with subtle rounded panels, generous whitespace, simple line icons. No perspective or 3D. Large, readable text with a clear hierarchy.

Title at top, verbatim: "Close your laptop. Keep your agents running."
Subtitle, verbatim: "Persistent host. Any device. The same running sessions."

Structure: three columns, with the center host panel larger than the two device panels.
LEFT panel title "MacBook", laptop line icon, inside labels "Warp / iTerm2" and "Desktop terminal".
CENTER enclosing panel title "Always-on host", subtitle "Mac mini / Linux VPS".
Inside host panel, an upper panel titled "Herdr" with subtitle "Persistent sessions" and three small child tiles with labels "Claude Code", "Codex", "OpenCode". Give Claude Code a subtle amber accent to mark the live demo, the others neutral. Below the Herdr section a panel "Project workspace + dev servers". Include a small distinct amber block titled "moshi-hook" in the host, clearly OUTSIDE the Herdr sessions block. A thin amber connector from the Claude Code tile to moshi-hook, label "Agent events". A small caption within host bottom "Sessions keep running when clients disconnect".
RIGHT upper panel title "iPhone", phone line icon, inside labels "Moshi" and "Terminal + notifications".
RIGHT lower smaller panel title "Apple Watch", watch line icon, label "Notifications + approvals".

Connection semantics are essential:
1. Teal bidirectional connector between MacBook and Herdr, label "SSH over Tailscale".
2. Separate teal bidirectional connector between iPhone/Moshi and Herdr, label "SSH over Tailscale". This is mobile terminal access into the same host sessions.
3. Separate amber notification/approval path from host moshi-hook toward the iPhone and Apple Watch, labeled "Push notifications" in outbound direction. A return arrow in amber from iPhone/watch toward moshi-hook is labeled "Approval decision". Keep these arrows away from the SSH paths, route around bottom if needed. Amber path is conceptual; do not imply pushes use SSH or Tailscale.
4. Show near the amber path: "PermissionRequest waits for your decision". Notifications also cover questions, plans, and finished turns; optional compact line "Questions · plans · turn finished" if there is room.
5. Add a small amber legend below the diagram: "Live demo: Claude Code hooks + Moshi". Teal legend "Remote terminal access". Amber legend "Agent notifications + approvals".

Constraints: use only these stack components. Do not draw direct MacBook-to-phone connections. Do not imply Apple Watch runs a terminal, SSH, or Tailscale. Do not imply Codex and OpenCode have the demonstrated Moshi hook integration. Host contains the workspace, agents, Herdr, and moshi-hook. Device panels are outside host. Make all arrow endpoints precise. Avoid crossing arrows, cramped microtext, fake logos, code snippets, gradients, shadows, decorations, watermark. Prioritize accurate relationships and readable labels.
