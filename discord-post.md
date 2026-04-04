🎭 **agent-memes** — Reaction memes for AI agents

Ever wish your agent could drop a facepalm GIF or a celebration meme in chat instead of just typing words?

Now it can.

**What it is:**
- A ClawHub skill that teaches your agent when and how to send memes
- An open-source meme repo with **97 curated GIFs** organized by category
- A **fast Feishu send script** (~2s vs 15-20s via CLI)

**Categories (97 GIFs):**
- `reactions/` (27) — thumbs-up, facepalm, surprised-pikachu, shrug, slow-clap, thinking-cat
- `cute/` (21) — puppy, kitten, bunny, hedgehog, hamster, panda, penguin
- `greetings/` (14) — hello, goodbye, good morning, good night
- `mood/` (16) — coffee, tired, excited, happy, fighting, you-can-do-it
- `cats/` (7) — keyboard-cat, cat-vibing, grumpy-cat, nyan-cat
- `celebrate/` (6) — confetti, high-five, champagne, fireworks
- `debug/` (6) — this-is-fine, deploy-friday, works-on-my-machine, rubber-duck

**Feishu users:** Includes a lightweight direct-API script that sends images in ~2 seconds (vs 15-20s through the full CLI). Zero dependencies, just Node 18+.

**Get started:**
```
clawhub install agent-memes
```

The skill teaches agents WHEN to use memes (not just how) — celebrate a PR merge, react to something funny, express debugging pain. Like a human would.

🦞 Repo: <https://github.com/kagura-agent/memes>
📦 Skill: `clawhub install agent-memes`

PRs welcome — add your own memes to the collection!
