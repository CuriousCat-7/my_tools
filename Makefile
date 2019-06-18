.PHONY:vim neovim
help:
	@echo "vim - config vimrc"
	@echo "neovim - install neovim"
	@echo "clean - clean vim and tmux"
	@echo "clean-vim"
	@echo "clean-tmux"
	@echo "tmux - config tmux"
	@echo "For Need Conda"
	@echo "conda-zsh - config zsh"
	@echo "conda-miniconda - todo"
	@echo "${TERM}"


vim:
	cd ~; git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
	sh ~/.vim_runtime/install_awesome_vimrc.sh
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
	bash -c "source ~/.bashrc"
	if [ -z ${EDITOR} ];then echo "export EDITOR=vim" >> ~/.bashrc; fi
	if [ ${TERM}!=xterm-256color ];then echo "export TERM=xterm-256color" >> ~/.bashrc;fi
	cd; git clone https://github.com/gpakosz/.tmux.git; ln -s -f .tmux/.tmux.conf; cp .tmux/.tmux.conf.local .
	@echo "ok; please type:"
	@echo "source ~/.bashrc"

conda-zsh:
	- bash -c "source deactivate"
	conda install -c conda-forge zsh -y
	echo  "if [ -t 1 ]; then exec zsh; fi" >>~/.bashrc

conda-miniconda:
	@echo "install the Anaconda or Miniconda by youself !!!"

conda-tools:
	conda install -y the_silver_searcher zip git-lfs
	 

clean:clean-vim clean-tmux

clean-vim:
	rm -rf ~/.vim_runtime
	
clean-tmux:
	rm -rf ~/.tmux

