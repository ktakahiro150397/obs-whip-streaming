FROM fedora:rawhide

ENV PKG_CONFIG_PATH=/usr/lib/pkgconfig

# ----- Install dependencies
RUN yum install -y libmicrohttpd-devel jansson-devel \
    openssl-devel libsrtp-devel sofia-sip-devel glib2-devel \
    opus-devel libogg-devel libcurl-devel pkgconfig \
    libconfig-devel libtool autoconf 
RUN yum install -y git make
RUN yum install -y libnice-devel
RUN yum install -y which 
# -----

# ----- Build janus-gateway
WORKDIR /app

RUN git clone https://github.com/meetecho/janus-gateway.git

WORKDIR /app/janus-gateway
RUN sh autogen.sh

RUN ./configure --prefix=/opt/janus
RUN make
RUN make install
RUN make configs

# Add PATH
ENV PATH=$PATH:/opt/janus/bin
# ----- 
