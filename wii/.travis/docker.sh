#!/bin/bash -ex
export DEVKITPRO=/home/travis/devkitPro
export DEVKITPPC=${DEVKITPRO}/devkitPPC
export PATH=$DEVKITPPC/bin:$PATH
make -C /src/wii/SDL
make -C /src/wii