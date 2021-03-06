#!/usr/bin/env zsh
# Cleaning dotfiles and zprezto
rm -rf \
    ~/.zlogin \
    ~/.zlogout \
    ~/.zprezto \
    ~/.zpreztorc \
    ~/.zprofile \
    ~/.zshenv \
    ~/.zshrc

# Install zprezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
