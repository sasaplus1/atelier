FROM ubuntu:20.04

WORKDIR /root

RUN sed -i.bak -e 's|archive.ubuntu.com|ftp.jaist.ac.jp/pub/Linux|' /etc/apt/sources.list

RUN apt-get --yes update && \
  DEBIAN_FRONTEND=noninteractive apt-get --yes install \
  build-essential curl file git tzdata

ENV TZ Asia/Tokyo

RUN DEBIAN_FRONTEND=noninteractive apt-get --yes install \
  bash bash-completion bat fd-find fzf tig tmux

RUN git clone https://github.com/sasaplus1/dotfiles.git ~/.ghq/github.com/sasaplus1/dotfiles && \
  rm -f ~/.bashrc && \
  make deploy -C ~/.ghq/github.com/sasaplus1/dotfiles
