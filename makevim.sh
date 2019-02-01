there=`pwd`
# neovim
mkdir -p ~/work
cd ~/work
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/usr/bin/nvim
echo "alias vim=$HOME/work/squashfs-root/usr/bin/nvim" >> ~/.bashrc
cd $there
mkdir -p ~/.config
cp -r nvim ~/.config/
# vimrc
cd ~
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
cd $there
sh ~/.vim_runtime/install_awesome_vimrc.sh:
cp .vimrc ~/
# jedi-vim
cd ~/.vim_runtime/my_plugins
git clone --recursive https://github.com/davidhalter/jedi-vim.git
git clone https://github.com/ervandew/supertab.git
cd $there


