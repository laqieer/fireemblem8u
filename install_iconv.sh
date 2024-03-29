#!/bin/sh

pushd .

# https://stackoverflow.com/a/76038752

# Install the utilities necessary to build from source:
apk add --no-cache curl build-base

# Download the source:
cd /tmp
curl -O https://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.17.tar.gz
tar xvf libiconv-1.17.tar.gz
cd libiconv-1.17/

# Configure, compile and install iconv to /usr/local/bin:
./configure
make
make install

# Remove the downloaded source:
cd /tmp
rm -rf libiconv-1.17/
rm libiconv-1.17.tar.gz

popd
