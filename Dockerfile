FROM i386/ubuntu:20.04

ARG version

RUN apt-get update && DEBIAN_FRONTEND="noninteractive" apt-get install -y \
    libfreetype6 \
    wine32 && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p D2GS/drive_c/d2gs${version}

ENV WINEPREFIX=/D2GS

RUN winecfg

COPY ./${version} /D2GS/drive_C/d2gs${version}

WORKDIR /D2GS/drive_c/d2gs${version}

