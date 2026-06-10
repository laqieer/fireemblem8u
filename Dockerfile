FROM laqieer/gba-disasm-decomp-tools:fireemblem8u

MAINTAINER laqieer <laqieer@126.com>

# Runtime deps for the ROM build: GNU libiconv (CP932 text conversion) and
# numpy/pillow (TSA & graphics generators). Some build scripts hardcode a
# #!/bin/python3 shebang; Alpine installs python3 under /usr/bin, so provide
# /bin/python3.
RUN apk add --no-cache python3 py3-numpy py3-pillow perl gnu-libiconv \
    && ln -sf /usr/bin/python3 /bin/python3

COPY . .

RUN make

ENTRYPOINT make
