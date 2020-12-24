# dl-platform-dockers
some deep learning platforms in docker and used by jupyter notebook.

### currently support:
#### 1. caffe-cpu
1. use: 
```
docker run -it -p host-port:8888 -v src-dir:/root/dst-dir jiu-ubuntu16.04-miniconda3:version-id bash
cd /root
. activate caffe-cpu
sh notebook-run.sh
```
输入notebook访问密码，在主机上打开浏览器访问ip:host-port，输入密码即可访问操作。

