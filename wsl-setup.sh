#!/bin/bash
# Quick WSL setup - run this in WSL bash

echo "Installing zsh..."
sudo apt update && sudo apt install -y zsh

echo "Copying configs..."
cp ~/dotfiles/wsl/.zshrc ~/.zshrc 2>/dev/null || echo "dotfiles not found, skipping"
cp ~/dotfiles/mac/.p10k.zsh ~/.p10k.zsh 2>/dev/null || echo "p10k not found, skipping"

echo "Testing proxy..."
WINDOWS_HOST_IP=$(grep -m 1 nameserver /etc/resolv.conf | awk '{print $2}')
echo "Windows host IP: $WINDOWS_HOST_IP"

echo ""
echo "Done! Run: zsh"
