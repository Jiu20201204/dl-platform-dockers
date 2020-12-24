FROM jiu-ubuntu:16.04 

MAINTAINER wayne <jiujiwei@cloudwalk.cn>

COPY sources.list /root

# update sys source
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bk  \
    && mv /root/sources.list /etc/apt/                 \
    && apt-get update                                  \
    && apt-get install -y wget                         \   
# install miniconda3
    && wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3.sh \
    && bash ~/miniconda3.sh -b -p /opt/miniconda3       \
    && rm ~/miniconda3.sh                               
ENV PATH /opt/miniconda3/bin:$PATH

# set sh bash in ubuntu to use source cmd
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# create caffe-cpu env
RUN conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/ \
    && conda config --set show_channel_urls yes            \
    && conda create -n caffe-cpu python=3.8 -y             \
    && source activate caffe-cpu                           \
    && conda info|egrep "conda version|active environment" \
# install jupyter notebook
    && conda install jupyter -y                 

COPY notebook-run.sh /root
