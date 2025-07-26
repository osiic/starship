#!/usr/bin/env bash

set -e

echo "🌟 Installing Starship prompt and applying config..."

# Install Starship if not available
if ! command -v starship &> /dev/null; then
  echo "🚀 Installing Starship..."
  curl -sS https://starship.rs/install.sh | sh
fi

# Setup config directory
mkdir -p "$HOME/.config"

# Copy config
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cp "$SCRIPT_DIR/starship.toml" "$HOME/.config/starship.toml"

# Append starship init to common shells
echo "🔧 Adding Starship to shell configs..."

for shellrc in "$HOME/.bashrc" "$HOME/.zshrc" "$HOME/.profile"; do
  if [ -f "$shellrc" ] && ! grep -q 'starship init' "$shellrc"; then
    echo 'eval "$(starship init bash)"' >> "$shellrc"
    echo "✅ Updated $shellrc"
  fi
done

echo "✅ All done! Restart your terminal or run:"
echo "   source ~/.bashrc ~/.zshrc ~/.profile"