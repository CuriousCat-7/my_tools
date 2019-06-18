.PHONY:vim neovim
help:
	@echo "vim"
	@echo "neovim"
	@echo "neovim"


vim:
	cd ~; git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
	sh ~/.vim_runtime/install_awesome_vimrc.sh:
	cp .vimrc ~/
	# jedi-vim
	cd ~/.vim_runtime/my_plugins ;\
		git clone --recursive https://github.com/davidhalter/jedi-vim.git ;\
		git clone https://github.com/ervandew/supertab.git

neovim:
	mkdir -p ~/work
	cd ~/work;\
		curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage;\
		chmod u+x nvim.appimage;\
		./nvim.appimage --appimage-extract;\
	echo "alias vim=${HOME}/work/squashfs-root/usr/bin/nvim" >> ~/.bashrc
	mkdir -p ~/.config
	cp -r nvim ~/.config/

tmux:
	source ~/.bashrc
	if [ -z ${EDITOR} ];then echo "export EDITOR=vim" >> ~/.bashrc; fi
	if [ ${TERM}!=xterm-256color ];then echo "export TERM=xterm-256color" >> ~/.bashrc;fi
	cd; git clone https://github.com/gpakosz/.tmux.git; ln -s -f .tmux/.tmux.conf; cp .tmux/.tmux.conf.local .
	echo "ok; please type:"
	echo "source ~/.bashrc"

zshell:
	pass

conda-miniconda:
	pass

conda-tools:
	conda install -y the_silver_searcher zip git-lfs
