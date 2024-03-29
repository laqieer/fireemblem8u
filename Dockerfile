FROM laqieer/gba-disasm-decomp-tools:fireemblem8u

MAINTAINER laqieer <laqieer@126.com>

RUN apk add bash python3

COPY . .

RUN ./install_iconv.sh && make

ENTRYPOINT make
