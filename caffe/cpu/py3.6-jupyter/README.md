### use: 
```
docker run -it --rm -p host-port:8888 -v src-dir:/root/dst-dir py3.6-jupyter-caffe:v1 bash
cd /workspace
sh notebook-run.sh
```
输入notebook访问密码，在主机上打开浏览器访问ip:host-port，输入密码即可访问操作。

