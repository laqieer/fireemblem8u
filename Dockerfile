FROM laqieer/gba-disasm-decomp-tools

MAINTAINER laqieer <laqieer@126.com>

RUN apt-get -y install python3

ENV LOCAL_PREFIX=$DEVKITARM/bin/ TOOL_PREFIX=/usr/local/bin/tools/

COPY . .
