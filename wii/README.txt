Wii port uses SDL-wii, which has only 1.2 version.
Build environment: DevKitPPC
Debug requirement: wii_dev_debug

=================================================
git clone https://github.com/RickyL1213/sdl-wii.git

git submodule update --init

docker run -dit --name devkit-sdlpal -v $(pwd):/cache -v ~/sdlpal:/src ricky1213/sdlpal-wii-env bash

cd sdlpal/wii

docker exec -it devkit-sdlpal /bin/bash -ex /src/wii/.travis/docker.sh

tar cvjf ../deploy/sdlpal-wii.tar.bz2 icon.png meta.xml boot.dol