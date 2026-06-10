FROM laqieer/gba-disasm-decomp-tools:fireemblem8u

MAINTAINER laqieer <laqieer@126.com>

# Runtime deps for the ROM build: GNU libiconv (CP932 text conversion),
# numpy/pillow (TSA & graphics generators), and git + build-base so the mgfembp
# submodule can build its own agbcc for the FE6 SIO payload. perl is used by a
# few helper scripts.
RUN apk add --no-cache python3 py3-numpy py3-pillow perl git build-base gnu-libiconv

COPY . .

RUN make

ENTRYPOINT make
