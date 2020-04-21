#!/bin/sh

if [[ "$OSTYPE" == "linux-gnu" ]]; then
  # Linux
  echo "Linux"
  echo "Not setup"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  # Mac OSX
  echo "OSX: Setting Up Environment"

  echo "Xcode Tools: Installing"
  xcode-select --install

  echo "Homebrew: Installing"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  echo "Homebrew: Installation complete."

  echo "Homebrew: Updating"
  brew update --force

  echo "Homebrew: Installing Packages"
  brew install git vim neovim zsh cask go node yarn

  echo "Homebrew: Installing Cask Packages"
  brew cask install google-chrome iterm2 spotify clickup

  echo "Setup Complete"
elif [[ "$OSTYPE" == "cygwin" ]]; then
  # POSIX compatibility layer and Linux environment emulation for Windows
  echo "CYGWIN"
  echo "Not setup"
elif [[ "$OSTYPE" == "msys" ]]; then
  # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
  echo "MinGW"
  echo "Not setup"
elif [[ "$OSTYPE" == "windows" ]]; then
  # I'm not sure this can happen.
  echo "Windows"
  echo "Not setup"
elif [[ "$OSTYPE" == "freebsd"* ]]; then
  # ...
  echo "FreeBSD"
  echo "Not setup"
else
  # Unknown.
  echo "Something is not working correctly, please check the installation script and confirm you are using the appropriate terminal"
fi


