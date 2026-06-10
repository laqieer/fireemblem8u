FROM laqieer/gba-disasm-decomp-tools:fireemblem8u

MAINTAINER laqieer <laqieer@126.com>

# Runtime deps for the ROM build: GNU libiconv (CP932 text conversion),
# numpy/pillow (TSA & graphics generators), and git + build-base so the mgfembp
# submodule can build its own agbcc for the FE6 SIO payload. perl is used by a
# few helper scripts.
# Some build scripts hardcode a #!/bin/python3 shebang; Alpine installs python3
# under /usr/bin, so provide /bin/python3.
RUN apk add --no-cache python3 py3-numpy py3-pillow perl bash git build-base gnu-libiconv \
    && ln -sf /usr/bin/python3 /bin/python3 \
    && ln -sf "$(command -v gnu-iconv)" /usr/local/bin/iconv

COPY . .

RUN make

ENTRYPOINT make
