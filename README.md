# dotfiles

Cross-platform Zsh config with Oh My Zsh + Powerlevel10k, works on macOS / Linux / WSL.

## Install

### macOS
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && git clone https://github.com/nothingness0db/dotfiles.git ~/dotfiles && cp ~/dotfiles/mac/.zshrc ~/.zshrc && cp ~/dotfiles/mac/.p10k.zsh ~/.p10k.zsh && source ~/.zshrc
```

### WSL (Ubuntu/Debian)
```bash
sudo apt install -y zsh && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended && git clone https://github.com/nothingness0db/dotfiles.git ~/dotfiles && cp ~/dotfiles/wsl/.zshrc ~/.zshrc && cp ~/dotfiles/mac/.p10k.zsh ~/.p10k.zsh && zsh
```

### Linux
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && git clone https://github.com/nothingness0db/dotfiles.git ~/dotfiles && cp ~/dotfiles/linux/.zshrc ~/.zshrc && cp ~/dotfiles/mac/.p10k.zsh ~/.p10k.zsh && source ~/.zshrc
```
