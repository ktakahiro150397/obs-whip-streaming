FROM node:lts-bullseye-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update

# ----- Install dependencies
RUN apt-get install -y git
# -----

# ----- Install simple-whi-server
WORKDIR /app

RUN git clone https://github.com/ktakahiro150397/simple-whip-server.git

WORKDIR /app/simple-whip-server
RUN npm run build
# -----
