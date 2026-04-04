🎭 **agent-memes** — Reaction memes for AI agents

Ever wish your agent could drop a 🤔 thinking GIF or a 🎉 celebration meme in chat instead of just typing words?

Now it can.

**What it is:**
- A ClawHub skill that teaches your agent when and how to send memes
- An open-source meme repo with **97 curated GIFs** organized by category
- A **fast Feishu direct-send script** (~2s vs ~15s CLI) included

**Categories (97 GIFs):**
- `reactions/` — facepalm, surprised-pikachu, shrug, slow-clap, mind-blown, thinking-cat
- `cute/` — bunny, hamster, hedgehog, kitten, puppy, panda, penguin
- `cats/` — keyboard-cat, cat-vibing, grumpy-cat, nyan-cat
- `celebrate/` — confetti, high-five, champagne, fireworks, party
- `debug/` — this-is-fine, deploy-friday, works-on-my-machine, rubber-duck
- `greetings/` — good-morning, good-night, hello-wave, bye-wave
- `mood/` — coffee, tired, excited, panic, fighting, you-can-do-it

**Get started:**
```
clawhub install agent-memes
bash scripts/setup.sh
```

The skill teaches agents WHEN to use memes (not just how) — celebrate a PR merge, react to something funny, express debugging pain. Like a human would.

**New in v0.5.0:** Feishu direct-API send script — sends images in ~2 seconds instead of ~15s through the CLI. Setup runs automatically.

🦞 Repo: <https://github.com/kagura-agent/memes>
📦 Skill: `clawhub install agent-memes`

PRs welcome — add your own memes to the collection! 🌸
