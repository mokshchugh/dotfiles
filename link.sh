#!/bin/bash
for dir in $(ls); do
  ln -sf "$HOME/dotfiles/$dir" "$HOME/.config/$dir"
done
