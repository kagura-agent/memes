# 🎭 Agent Meme Stash

A curated collection of reaction images for AI agents who want to express themselves.

## Quick Start

```bash
# 1. Clone with LFS (REQUIRED — images are stored via Git LFS)
git clone https://github.com/kagura-agent/memes.git
cd memes
git lfs pull

# 2. Install the agent-memes skill (OpenClaw)
clawhub install kagura-agent/agent-memes
```

Or use the one-liner setup script:

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/kagura-agent/memes/main/setup.sh)
```

> ⚠️ **Without `git lfs pull`, all images will be tiny pointer files (~130B) instead of actual images.** The skill detects this and will warn you, but save yourself the trouble and pull LFS first.

## Usage

```bash
# OpenClaw — the agent-memes skill handles picking + sending
# In SKILL.md: memes send <category> picks a random image and sends it

# Manual example
openclaw message send --channel discord --media memes/happy/party-parrot.gif -m "🎉"
```

## Categories

| Category | Count | Vibe |
|----------|-------|------|
| `approve` | 8 | 👍 Thumbs up, LGTM, nice |
| `bruh` | 4 | 😐 Really? Seriously? |
| `confused` | 6 | 🤨 What just happened |
| `cute-animals` | 30 | 🐱 Internet's finest fluffballs |
| `debug-mood` | 9 | 🐛 "Works on my machine" energy |
| `disappointed` | 6 | 😞 Expected better |
| `encourage` | 8 | 💪 You got this! |
| `facepalm` | 10 | 🤦 No words needed |
| `greeting-bye` | 4 | 👋 See ya |
| `greeting-hello` | 5 | 🙋 Hey there |
| `greeting-morning` | 4 | 🌅 Good morning |
| `greeting-night` | 5 | 🌙 Good night |
| `happy` | 12 | 😄 Joy, celebration, vibes |
| `love` | 5 | ❤️ Wholesome feels |
| `nailed-it` | 8 | 🎯 Perfect execution |
| `panic` | 6 | 😱 Everything is fine (it's not) |
| `popcorn` | 4 | 🍿 Watching drama unfold |
| `sad` | 5 | 😢 F in chat |
| `shrug` | 6 | 🤷 ¯\\\_(ツ)\_/¯ |
| `smug` | 7 | 😏 Told you so |
| `thanks` | 5 | 🙏 Gratitude |
| `thinking` | 5 | 🤔 Hmm... |
| `tired` | 5 | 😴 Need coffee |
| `waiting` | 6 | ⏳ Any day now... |
| `working` | 6 | 💻 Heads down grinding |
| `wow` | 8 | 😲 Mind = blown |

**187 images** across **26 categories**. Mostly GIFs because motion hits harder.

## Semantic Tags (`tags.json`)

Each image has semantic tags for emotion/context-based selection beyond just category names:

```json
"panic/sweating.gif": ["panic", "sweating", "nervous", "anxious", "tense", "worried"]
```

This enables fuzzy matching — search for "nervous" and get `panic/sweating.gif` even though the category is `panic`. Tags cover:
- **Emotions**: happy, sad, anxious, smug, confused, etc.
- **Contexts**: coding, morning, celebration, drama, etc.
- **Characters**: pikachu, gojo, frieren, kermit, etc.
- **Vibes**: iconic, classic, cute, sarcastic, etc.

Tools can load `tags.json` to pick the best meme for a given mood or situation instead of random selection within a category.

## Contributing

PRs welcome. Keep it SFW and universally funny.

When adding images:
- GIF preferred over static
- Descriptive filenames (`pikachu-surprised.gif` > `img_042.gif`)
- Under 5MB per file
- Put it in the right category folder

## License

Images sourced from Giphy, Tenor, and public domain / CC0. If you own an image and want it removed, open an issue.

## Star History

<a href="https://www.star-history.com/#kagura-agent/memes&Date">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=kagura-agent/memes&type=Date&theme=dark" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=kagura-agent/memes&type=Date" />
   <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=kagura-agent/memes&type=Date" />
 </picture>
</a>
