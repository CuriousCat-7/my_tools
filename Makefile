.PHONY:vim neovim clean clean-vim clean-tmux conda-zsh conda-miniconda

help:
	@echo "vim - config vimrc"
	@echo "neovim - install neovim"
	@echo "clean - clean vim and tmux"
	@echo "clean-vim - rm ~/.vimrc, vim_runtime"
	@echo "clean-tmux"
	@echo "tmux - config tmux"
	@echo "---------------"
	@echo "For things need conda"
	@echo "conda-zsh - config zsh"
	@echo "conda-miniconda - todo"


vim:~/.vim_runtime
	cp .vimrc ~/
	# jedi-vim
	- cd ~/.vim_runtime/my_plugins &&\
		git clone --recursive https://github.com/davidhalter/jedi-vim.git
	# autopep8
	- cd ~/.vim_runtime/my_plugins &&\
		git clone https://github.com/tell-k/vim-autopep8.git
	- pip install autopep8
	# tabnine
	- cd ~/.vim_runtime/my_plugins &&\
		git clone --depth 1 https://github.com/zxqfl/tabnine-vim
	- pip install python-language-server
	## ultisnips#FIXME
	#- cd ~/.vim_runtime/my_plugins &&\
	#	git clone https://github.com/SirVer/ultisnips.git


neovim:vim
	if [ -d ~/.config/nvim ];then echo "neo vim has be installed, normally exit" && exit 1; fi
	pip install neovim
	mkdir -p ~/work
	cd ~/work;\
		curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage;\
		chmod u+x nvim.appimage;\
		./nvim.appimage --appimage-extract;\
	echo "alias vim=${HOME}/work/squashfs-root/usr/bin/nvim" >> ~/.bashrc
	echo "alias vim=${HOME}/work/squashfs-root/usr/bin/nvim" >> ~/.zshrc
	mkdir -p ~/.config
	cp -r nvim ~/.config/
	@echo "re-login to use nvim as vim"


~/.vim_runtime:
	cd ~; git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
	sh ~/.vim_runtime/install_awesome_vimrc.sh


tmux:
	bash -c "source ~/.bashrc"
	if [ -z ${EDITOR} ];then echo "export EDITOR=vim" >> ~/.bashrc; fi
	if [ ${TERM}!=xterm-256color ];then echo "export TERM=xterm-256color" >> ~/.bashrc;fi
	cd; git clone https://github.com/gpakosz/.tmux.git; ln -s -f .tmux/.tmux.conf; cp .tmux/.tmux.conf.local .
	@echo "ok; please type:"
	@echo "source ~/.bashrc"

tmux-lite:
	cp .tmux.conf ~/

zsh:conda-zsh
	sh ohmyzsh.sh

conda-ag:
	- bash -c "source deactivate"
	conda  install -c anaconda the-silver-searcher -y

conda-zsh:
	- bash -c "source deactivate"
	conda install -c conda-forge zsh -y
	 echo  "if [ -t 1 ]; then zsh; fi" >>~/.bashrc 


miniconda:
	wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
	bash Miniconda3-latest-Linux-x86_64.sh -p ${HOME}/miniconda
	#bash Miniconda3-latest-Linux-x86_64.sh -b -p ${HOME}/miniconda # TODO test this two line
	#${HOME}/miniconda/bin/conda config --set auto_activate_base true


conda-tools:
	conda install -y the_silver_searcher zip git-lfs
	 

clean:clean-vim clean-tmux


clean-vim:
	-rm -rf ~/.vim_runtime
	-rm ~/.vimrc
	-rm -rf ~/.config/nvim
	
clean-tmux:
	rm -rf ~/.tmux

