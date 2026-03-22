#!/bin/bash
# Full WSL setup with Oh My Zsh

set -e

echo "Step 1: Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

echo "Step 2: Installing plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions 2>/dev/null || true
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 2>/dev/null || true
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k 2>/dev/null || true

echo "Step 3: Copying configs..."
cp ~/dotfiles/wsl/.zshrc ~/.zshrc
cp ~/dotfiles/mac/.p10k.zsh ~/.p10k.zsh

echo "Step 4: Checking proxy..."
WINDOWS_HOST_IP=$(grep -m 1 nameserver /etc/resolv.conf | awk '{print $2}')
echo "Windows host IP: $WINDOWS_HOST_IP"
echo "Proxy will be: http://${WINDOWS_HOST_IP}:7890"

echo ""
echo "Done! Run: zsh"
echo "Test proxy: curl -I https://www.google.com"
