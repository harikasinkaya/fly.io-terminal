FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Temel araçları kur
RUN apt-get update && \
    apt-get install -y curl ca-certificates bash htop nano wget && \
    rm -rf /var/lib/apt/lists/*

# sshx'i kur
RUN curl -sSf https://sshx.io/get | sh

# Uygulamayı başlat
CMD ["sshx"]
