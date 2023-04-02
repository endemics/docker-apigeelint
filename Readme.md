# Docker-apigeelint

This repository allows you to build a docker image containing the apigeelint binary.

To build locally, with a copy of this repository, just run `make` on your machine with docker installed.

Example use from the directory where you have your apiproxy configuration, if you want to produce a tap style output
```
docker run \
  -v $PWD/:/src \
  -w /src endemics/docker-apigeelint \
  -s . \
  -f tap.js
```

All options from https://github.com/apigee/apigeelint are available.

