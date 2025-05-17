#!/bin/bash

echo "[+] Installing dotfiles..."

cp .bashrc ~/
cp .bash_aliases ~/

# Install `uv` if not available
if ! command -v uv &>/dev/null; then
  echo "[+] Installing uv..."
  curl -sL https://raw.githubusercontent.com/astral-sh/uv/main/install.sh | bash
fi

# Install `just` if not available
if ! command -v just &>/dev/null; then
  echo "[+] Installing just..."
  curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to /bin/
fi

echo "[+] Done!"
