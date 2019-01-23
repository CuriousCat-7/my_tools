# change qinghua source
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
conda config --set show_channel_urls yes
conda install -y the_silver_searcher  -c anaconda
#conda install -y pytorch torchvision -c pytorch
conda install -y opencv cffi zip
