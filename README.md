# 🌟 Starship Config - Catppuccin Mocha Edition

This repository contains my personal configuration for [Starship](https://starship.rs), the minimal, blazing-fast, and customizable prompt for any shell.

> ✨ Uses the beautiful [Catppuccin Mocha](https://github.com/catppuccin/starship) color palette.

---

## 🚀 One-liner Install (Plug and Play)

Run this command to install Starship, apply the config, dan aktifkan otomatis di `.bashrc`, `.zshrc`, dan `.profile`:

```bash
bash <(curl -s https://raw.githubusercontent.com/yourusername/starship-config/main/install.sh)
```

---

## 🧰 Manual Install (If Needed)

```bash
# 1. Clone this repository
git clone https://github.com/osiic/starship.git
cd starship

# 2. Install Starship (if not installed)
curl -sS https://starship.rs/install.sh | sh

# 3. Copy config file
mkdir -p ~/.config
cp starship.toml ~/.config/starship.toml

# 4. Add starship to your shell config
echo 'eval "$(starship init bash)"' >> ~/.bashrc
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
echo 'eval "$(starship init bash)"' >> ~/.profile

# 5. Apply changes
source ~/.bashrc
source ~/.zshrc
source ~/.profile
```

---

## 📸 Preview

> Customize your terminal with vibrant colors and a clean, elegant prompt.
<img width="441" height="218" alt="{EED1F70A-5673-48C5-B38B-609B82702611}" src="https://github.com/user-attachments/assets/fcc0a96f-83fd-404b-bd0b-717a909f1fe3" />

---

## 🎨 Theme

This config uses the `catppuccin_mocha` palette with customized prompt symbols and colors.  
You can tweak it in the `starship.toml` file.

---

## 📎 Credits

- [Starship](https://starship.rs)
- [Catppuccin Theme](https://github.com/catppuccin/starship)
