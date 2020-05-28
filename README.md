# My Tools

## Pipeline:
```
-> Miniconda3 -> Vim -> NeoVim
             |-> Zsh -> OhMyZsh
             |-> the_silver_searcher_ag

-> .tmux.conf
```

### How to do

```bash
make miniconda # choose auto init!!!
```

Re-Login, Then
```bash
make neovim
make zsh
make conda-ag
```

Install .tmux.conf
```bash
make tmux-lite
```

## what have make neovim done
- install vim config from  https://github.com/amix/vimrc.git (Thanks a lot!)
- install neovim (optional, for non-administrator users who hav low vim version)
- use my .vimrc
- use jedi tabnine autopep8
- **close autoparis and other useless features**
