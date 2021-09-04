FROM i386/ubuntu:14.04

ARG version

RUN apt-get update && DEBIAN_FRONTEND="noninteractive" apt-get install -y \
    tar \
    gzip \
    libfreetype6 && \
    rm -rf /var/lib/apt/lists/*

COPY wine.tar.gz /

RUN tar -xf /wine.tar.gz && rm wine.tar.gz

ENV WINEPREFIX=/D2GS

RUN winecfg

RUN mkdir -p D2GS/drive_c/d2gs${version}

COPY ./${version} /D2GS/drive_c/d2gs${version}

WORKDIR /D2GS/drive_c/d2gs${version}
