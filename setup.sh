#!/usr/bin/env bash
# setup.sh — One-liner setup for agent-memes
# Usage: bash <(curl -fsSL https://raw.githubusercontent.com/kagura-agent/memes/main/setup.sh)

set -euo pipefail

MEMES_DIR="${MEMES_DIR:-$HOME/.openclaw/workspace/memes}"

echo "🎭 Agent Meme Stash — Setup"
echo ""

# Step 1: Clone or update
if [ -d "$MEMES_DIR/.git" ]; then
  echo "✅ Meme repo already exists at $MEMES_DIR"
  cd "$MEMES_DIR"
  echo "   Pulling latest..."
  git pull --ff-only 2>/dev/null || echo "   ⚠️  Pull failed (maybe local changes?), continuing..."
else
  echo "📦 Cloning meme repo to $MEMES_DIR..."
  git clone https://github.com/kagura-agent/memes.git "$MEMES_DIR"
  cd "$MEMES_DIR"
fi

# Step 2: LFS pull
if command -v git-lfs &>/dev/null || git lfs version &>/dev/null 2>&1; then
  echo "📥 Pulling LFS objects (this downloads the actual images)..."
  git lfs pull
  echo "✅ LFS pull complete"
else
  echo "⚠️  Git LFS not installed! Images will be pointer files."
  echo "   Install: https://git-lfs.github.com then run 'cd $MEMES_DIR && git lfs pull'"
fi

# Step 3: Verify
TOTAL=$(find . -maxdepth 2 -type f \( -name "*.gif" -o -name "*.jpg" -o -name "*.png" -o -name "*.webp" \) -size +1k | wc -l)
POINTERS=$(find . -maxdepth 2 -type f \( -name "*.gif" -o -name "*.jpg" -o -name "*.png" -o -name "*.webp" \) -size -1k | wc -l)

echo ""
echo "📊 Library: $TOTAL images ready"
if [ "$POINTERS" -gt 0 ]; then
  echo "⚠️  $POINTERS files look like LFS pointers (< 1KB). Run: git lfs pull"
fi

# Step 4: Skill install hint
echo ""
echo "🔧 Next: install the agent-memes skill (if using OpenClaw):"
echo "   clawhub install kagura-agent/agent-memes"
echo ""
echo "Done! 🎉"
