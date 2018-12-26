echo "[ Vim setup ]"
echo "Copying dotfile to $HOME/ ..."
sudo cp $repo/conf/vim/vimrc $HOME/
echo "Creating local directory $HOME/.vim/colors ..."
mkdir -p $HOME/.vim/colors
echo "Copying vim color schemes ..."
cp $repo/conf/vim/colors/* $HOME/.vim/colors

vim +PluginInstall +qall
