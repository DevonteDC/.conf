source $DOTCONF/gitconfig.sh
cat <<EOF > "$HOME/.vimrc" 
set runtimepath+=\$USERPROFILE/.conf/dotfiles/vim/vimfiles
source \$USERPROFILE/.conf/dotfiles/vim/gvimrc
source \$USERPROFILE/.conf/dotfiles/vim/vimrc
EOF
echo "vim runtime path set"
vim +BundleInstall +qall
