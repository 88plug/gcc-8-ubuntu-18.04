FROM ubuntu:18.04

# Maintainer Information
LABEL maintainer="88plug"
LABEL maintainer_website="https://88plug.com"

RUN apt-get update ; apt-get upgrade -y ; apt-get install -y gcc-8 g++-8 && \
  update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 60 --slave /usr/bin/g++ g++ /usr/bin/g++-8 && \
  update-alternatives --config gcc