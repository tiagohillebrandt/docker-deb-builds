FROM ubuntu:noble
LABEL maintainer="Tiago Hillebrandt <tiago@tiagohillebrandt.com>"

ENV TZ=America/Sao_Paulo

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -yq \
    ssh \
    rsync \
    git \
    dput \
    gpg \
    curl \
    wget \
    fakeroot \
    git \
    make \
    packaging-dev \
    vim

RUN useradd -s /bin/bash -d /home/ubuntu/ -m -G sudo ubuntu

RUN echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

RUN echo "su - ubuntu" >> /root/.bashrc
