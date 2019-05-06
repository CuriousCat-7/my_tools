source ~/.bashrc
if [ -z $EDITOR ];then echo "export EDITOR=vim" >> ~/.bashrc; fi
if [ $TERM!=xterm-256color ];then echo "export TERM=xterm-256color" >> ~/.bashrc;fi
cd; git clone https://github.com/gpakosz/.tmux.git; ln -s -f .tmux/.tmux.conf; cp .tmux/.tmux.conf.local .
echo "ok; please source ~/.bashrc"
