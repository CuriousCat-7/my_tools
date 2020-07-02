# My Tools
Config your shell, vim and tmux even though you are not administrator.

## Pipeline:
```
-> Miniconda3 -> Vim -> NeoVim
             |-> Zsh -> OhMyZsh
             |-> the_silver_searcher_ag

-> .tmux.conf
```

## How use it

Firstly, install Miniconda if you do not have any version of Conda,
```bash
make miniconda # choose auto init!!!
```

Secondly, install **neovim**, zsh or the_silver_searcher_ag **according to your needs**.
```bash
make neovim  # or just make vim
make zsh
make conda-ag
```

Additionally, you can config a simple tmux(
need tmux >=2.4, if not, `conda install tmux -c conda-forge`
)
```bash
make tmux-lite
```

## About Vim
Use NeoVim if your Vim(or MacVim) version is under than 8.0

### what have `make vim` done
- install vim config from  https://github.com/amix/vimrc.git (Thanks a lot!)
- use my .vimrc
- use jedi, tabnine, autopep8, vim-header
- **close autoparis and other useless features**

### what have `make neovim` done
- make vim  (Yes, by the use of Makfile, this is automatically called)
- install neovim  (recommended for non-administrator users who have low vim version)
- pip install neovim  (if your jedi pop bugs under neovim, that's mean your python environment does not have neovim package)
