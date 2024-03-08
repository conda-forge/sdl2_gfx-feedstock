#!/bin/bash

# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* .

if [[ $target_platform == "osx-arm64" ]] || [[ $target_platform == "linux-aarch64" ]]; then
  ./configure --disable-dependency-tracking --disable-sdltest --disable-mmx --prefix=${PREFIX}
else
  ./configure --disable-dependency-tracking --disable-sdltest --prefix=${PREFIX}
fi
make install
