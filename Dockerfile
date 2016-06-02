FROM nvidia/cuda:7.5-cudnn5-runtime

RUN apt-get update && \
  apt-get install -yqq --no-install-recommends python-numpy python-scipy python-dev python-pip python-nose g++ libopenblas-dev git && \
  git clone https://github.com/Theano/Theano.git && \
  cd Theano && \
  python setup.py develop && \
  apt-get remove -yqq git && \
  rm -rf /var/lib/apt/lists/*
