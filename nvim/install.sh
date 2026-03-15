
#!/usr/bin/env bash

set -e

echo "Checking Homebrew..."

if ! command -v brew >/dev/null 2>&1; then
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Updating Homebrew..."
brew update

echo "Installing Brewfile packages..."
brew bundle

echo "Installing global npm packages..."
npm install -g prettier

echo "Installing Python packages..."
pip3 install pynvim

echo "Setup complete."
