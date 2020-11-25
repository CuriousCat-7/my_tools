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
- use jedi, tabnine, autopep8, vim-header, etc
- use my .vimrc
- **close autoparis and other useless features**

### what have `make neovim` done
- make vim  (Yes, by the use of Makfile, this is automatically called)
- install neovim  (recommended for non-administrator users who have low vim version)
- pip install neovim  (if your jedi pop bugs under neovim, that's mean your python environment does not have neovim package)

## Update log
- 11.09 use TarBar to help navigating in Cpp codes
- 11.25 something about Cpp (see Improvment in writing Cpp)

## Improvment in writing Cpp
The type checking and navigating (powered by ctags) of Vim is frustratingly behindhand which makes Cpp developing by vim is a little uncomfortable.
But I still try my best to improve the writing experience by this vim configurationg. 
- Make sw=2 in cpp files
- `<leader>-d` (find the definition in jedi)  is equal to `g<C-]>` (find the definition and show by list from ctags)
- `<leader>-c` will pop up the tarbar navitagtion window, which is super usefull. (NOTE that `<leader>` is `,` in your keyboard)
- automatically find file "tags" in current directory or parent of current directory or parent of parent of current directory ...

The ctags should be installed beforehand, and the file "tags" should be generated by `ctags -R .`.

While I have to admit, the VScode can do better than ctags, but this configuration can make you having similar experience.

Or, just use VScode (and destroy your fully keyboard writing workflow).
