FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y curl git gcc make libbz2-dev libreadline-dev zlib1g-dev libsqlite3-dev libssl-dev

COPY install_pyenv.sh /opt/
RUN chmod 744 /opt/install_pyenv.sh && /opt/install_pyenv.sh
