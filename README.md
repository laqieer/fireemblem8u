# Fire Emblem: The Sacred Stones

[![buddy pipeline](https://app.buddy.works/destinybreaknowel/fireemblem8u/pipelines/pipeline/352816/badge.svg?token=61eea1d37289fa9621fff3ce067c98559da0750abf5597ae53c4d4b3085d20f9 "buddy pipeline")](https://app.buddy.works/destinybreaknowel/fireemblem8u/pipelines/pipeline/352816)

This is a disassembly of Fire Emblem: The Sacred Stones (U)[!]

It builds the following ROM:
* fireemblem8.gba `sha1: c25b145e37456171ada4b0d440bf88a19f4d509f`

This branch removes `tools/` to make setting up much easier with [docker](https://www.docker.com/).

### Setting up the repository

* You must have a copy of the Fire Emblem: The Sacred Stones ROM named `baserom.gba` in the repository directory.

```
docker build -t fireemblem8u .
docker run fireemblem8u make
```

* You will see `fireemblem8.gba: OK` for success.
