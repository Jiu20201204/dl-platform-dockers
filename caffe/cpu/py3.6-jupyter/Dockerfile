FROM spellrun/caffe-cpu-jupyter:latest

COPY notebook-run.sh /workspace/

RUN apt-get update && apt-get install -y vim \
    && pip install prompt-toolkit==1.0.15

