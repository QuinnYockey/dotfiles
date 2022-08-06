#!/usr/bin/sh
printf "enter commit message: "
read message
echo ""

echo "copying files into ./alacritty/"
cp -r ~/.config/alacritty/*  ./alacritty
echo "copying files into ./awesome/"
cp -r ~/.config/awesome/*    ./awesome
echo "copying files into ./bash/"
cp -r ~/.bashrc              ./bash
echo "copying files into ./emacs/"
cp -r ~/.doom.d              ./emacs
echo "copying files into ./i3/"
cp -r ~/.config/i3/*         ./i3
echo "copying files into ./neofetch/"
cp -r ~/.config/neofetch/*   ./neofetch
echo "copying files into ./nvim/"
cp -r ~/.config/nvim/*       ./nvim
echo "copying files into ./polybar/"
cp -r /etc/polybar/*         ./polybar
echo "copying files into ./rofi/"
cp -r ~/.config/rofi/*       ./rofi
echo "copying files into ./vim/"
cp -r ~/.vimrc               ./vim
echo "copying files into ./zsh/"
cp -r ~/.zshrc               ./zsh

echo "adding all files for commit"
git add -A
echo "commiting"
git commit -m "$message"
echo "pushing changes"
git push
echo "done!"
