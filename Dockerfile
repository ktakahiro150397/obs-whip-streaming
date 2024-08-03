FROM ubuntu:22.04

ENV PKG_CONFIG_PATH=/usr/lib/pkgconfig
ENV DEBIAN_FRONTEND=noninteractive

# ----- Install dependencies
RUN apt-get update
RUN apt install -y git make meson \
    libmicrohttpd-dev libjansson-dev \
    libssl-dev libsofia-sip-ua-dev libglib2.0-dev \
    libopus-dev libogg-dev libcurl4-openssl-dev liblua5.3-dev \
    libconfig-dev pkg-config libtool automake


RUN  apt install -y libsrtp2-1

# -----

# ----- Build and install nice
WORKDIR /app
RUN git clone https://gitlab.freedesktop.org/libnice/libnice.git

WORKDIR /app/libnice
RUN meson build
RUN ninja -C build
RUN ninja -C build test
RUN ninja -C build install
# ----- 

# ----- Build janus-gateway
WORKDIR /app

RUN git clone https://github.com/meetecho/janus-gateway.git

WORKDIR /app/janus-gateway
RUN sh autogen.sh

RUN ./configure --prefix=/opt/janus
# ----- 
