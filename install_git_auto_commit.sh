#!/bin/bash

# Define the installation directory
install_dir="$HOME/bin"

# Ensure the installation directory exists
mkdir -p "$install_dir"

# Download the script from GitHub
curl -sSL "https://raw.githubusercontent.com/yourusername/yourrepository/master/git_auto_commit.sh" -o "$install_dir/git_auto_commit.sh"

# Make the script executable
chmod +x "$install_dir/git_auto_commit.sh"

# Add the installation directory to the PATH
if ! grep -q "$install_dir" ~/.bashrc; then
    echo "export PATH=\"\$PATH:$install_dir\"" >> ~/.bashrc
    echo "Installation directory added to PATH. Please restart your terminal or run 'source ~/.bashrc' to use the script."
else
    echo "Installation directory already added to PATH."
fi

echo "Installation complete. You can now use the 'git_auto_commit.sh' script from anywhere in your system."
