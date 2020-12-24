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

RUN which conda && conda info -e
