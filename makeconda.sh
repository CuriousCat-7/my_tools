# change qinghua source
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
conda config --set show_channel_urls yes
conda install -y the_silver_searcher  -c anaconda
conda install -y opencv zip
conda install -y git-lfs -c conda-forge
# pytorch
conda create -n torch python=3.6
echo "alias torch='source activate torch'">> ~/.bashrc
torch
conda install -y pytorch torchvision -c pytorch
conda install -y cffi
