# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# added by Anaconda2 4.1.1 installer
export PATH="/data/limingyao/anaconda2/bin:$PATH"
#export CUDA_PATH="/usr/local/cuda-8.0"
export CUDA_PATH="/usr/local/cuda-9.0"
export PATH=/usr/local/cuda-9.0/bin:$PATH
export LD_LIBRARY_PATH="/usr/local/cuda/lib64:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/usr/local/cuda-8.0/lib64:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/usr/local/cuda-9.0/lib64:$LD_LIBRARY_PATH"
export CUDNN_PATH="$HOME/local/cuda/lib64/libcudnn.so.5"
#export PYTHONPATH=$HOME/Generative-ConvACs/deps/simnets/python:$PYTHONPATH
alias vim=$HOME/work/squashfs-root/usr/bin/nvim
alias vi=/usr/bin/vim
alias ag=$HOME/anaconda2/envs/pytorch4/bin/ag
alias torch2="source activate pytorch4"
alias torch="source activate torch"
alias fast="source activate fastai"
alias npm="$HOME/anaconda2/envs/pytorch4/bin/npm"
alias mm="python main.py"
alias ptc="cd ~/work/PytorchCaffe/ptcaffe"
del()
{
    mv $@ /tmp/.neo_trash
}
cleardel()
{
    rm -rf /tmp/.neo_trash
}
alias rm=del
mkdir -p /tmp/.neo_trash



. /data/limingyao/torch/install/bin/torch-activate
