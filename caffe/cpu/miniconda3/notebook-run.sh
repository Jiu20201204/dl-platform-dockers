#!/bin/bash

rm -f ~/.jupyter/jupyter_notebook_config.py
jupyter notebook --generate-config
echo jupyter notebook password
jupyter notebook password

password=`sed -n '/word/p' ~/.jupyter/jupyter_notebook_config.json`
password=${password#*word\":}
echo password: $password

echo "c.NotebookApp.password =$password" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.ip='*' # *allow all ip visit"  >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.open_browser = False" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.port =8888" >> ~/.jupyter/jupyter_notebook_config.py
echo "allow_remote_access = True" >> ~/.jupyter/jupyter_notebook_config.py

jupyter notebook --allow-root

