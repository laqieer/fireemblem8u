#!/bin/sh

# The FE6 SIO payload is built from the mgfembp submodule, so make sure it (and
# any nested submodules) are checked out before the Docker build copies them in.
git submodule update --init --recursive && docker build -t fireemblem8u . && docker run fireemblem8u
