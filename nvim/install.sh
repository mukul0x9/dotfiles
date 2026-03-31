#!/usr/bin/env bash
set -e

cd "$(dirname "$0")"

OS="$(uname)"

# --- System deps ---
if [[ "$OS" == "Darwin" ]]; then
  command -v brew >/dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

  brew update
  brew bundle --file=Brewfile

elif [[ "$OS" == "Linux" ]]; then
  if command -v apt >/dev/null; then
    sudo apt update
    sudo apt install -y git curl ripgrep fd-find python3 python3-pip

    # Install latest neovim
    sudo add-apt-repository -y ppa:neovim-ppa/unstable
    sudo apt update
    sudo apt install -y neovim

    # Install node (LTS)
    curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
    sudo apt install -y nodejs

  fi
fi

# --- Language deps ---
command -v node >/dev/null && npm install -g prettier
command -v python3 >/dev/null && python3 -m pip install --user pynvim

# --- Link config ---
mkdir -p ~/.config
ln -sf "$(pwd)" ~/.config/nvim

echo "Done"
