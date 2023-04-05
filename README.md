# Fire Emblem: The Sacred Stones

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

[FE Decomp Portal](https://laqieer.github.io/fe-decomp-portal/)

This is a disassembly of Fire Emblem: The Sacred Stones (U)[!]

It builds the following ROM:
* fireemblem8.gba `sha1: c25b145e37456171ada4b0d440bf88a19f4d509f`

This branch removes `tools/` to make setting up much easier, especially for Windows users, because you needn't install Unix environments to build tools and project anymore.

### Setting up the repository

1. Install [Docker](https://www.docker.com/).

2. You must place a copy of the `Fire Emblem: The Sacred Stones` ROM named `baserom.gba` in the repository directory.

3. Build
  * For Windows users, double-click `build.bat`.
  * For other users, run `./build.sh`.

You will see `fireemblem8.gba: OK` for success.
