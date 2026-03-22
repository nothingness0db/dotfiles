# dotfiles

Cross-platform Zsh config with Oh My Zsh + Powerlevel10k, works on macOS / Linux / WSL.

## Install

### macOS
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended && git clone https://github.com/nothingness0db/dotfiles.git ~/dotfiles && git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && cp ~/dotfiles/mac/.zshrc ~/.zshrc && cp ~/dotfiles/mac/.p10k.zsh ~/.p10k.zsh && zsh
```

### WSL (Ubuntu/Debian)
```bash
sudo apt install -y zsh && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended && git clone https://github.com/nothingness0db/dotfiles.git ~/dotfiles && git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && cp ~/dotfiles/wsl/.zshrc ~/.zshrc && cp ~/dotfiles/wsl/.p10k.zsh ~/.p10k.zsh && zsh
```

### Linux
```bash
sudo apt install -y zsh && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended && git clone https://github.com/nothingness0db/dotfiles.git ~/dotfiles && git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && cp ~/dotfiles/linux/.zshrc ~/.zshrc && cp ~/dotfiles/linux/.p10k.zsh ~/.p10k.zsh && sudo usermod -s $(which zsh) $USER && zsh
```
