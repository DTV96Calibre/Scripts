#!/bin/bash

echo "Downloading Godot Engine Archive for Linux x86_64..."
wget "https://downloads.tuxfamily.org/godotengine/2.1/Godot_v2.1-stable_x11.64.zip"

echo "Extracting archive..."
unzip "Godot_v2.1-stable_x11.64.zip"

echo "Cleaning up..."
rm -rf "Godot_v2.1-stable_x11.64.zip"

echo "Relocating bin to ~/bin/..."
mkdir -p "~/bin/"
mv -f "Godot_v2.1-stable_x11.64" "~/bin/godot21.64"

echo "Assigning alias..."
echo "alias godot='~/bin/godot21.64'" >> "$HOME/.bashrc"
export godot='~/bin/godot21.64' >> "$HOME/.bashrc"
echo "Reloading .bashrc..."
source "~/.bashrc"

echo "Complete!"
echo "Use the command 'godot -s helloworld.gd' to execute the helloworld program"
