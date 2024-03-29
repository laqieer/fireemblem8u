FROM laqieer/gba-disasm-decomp-tools:fireemblem8u

MAINTAINER laqieer <laqieer@126.com>

RUN apk add python3

COPY . .

RUN ./install_iconv.sh

RUN make

ENTRYPOINT make
