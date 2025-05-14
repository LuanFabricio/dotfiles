#!/bin/bash

GIT_LIBS=$HOME/git-libs
mkdir -p $GIT_LIBS

# asesprite
cd $GIT_LIBS
git clone --recursive https://github.com/aseprite/aseprite.git
cd aseprite
git pull
git submodule update --init --recursive

# asesprite's skia
mkdir $HOME/deps
cd $HOME/deps
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
git clone -b aseprite-m124 https://github.com/aseprite/skia.git
export PATH="${PWD}/depot_tools:${PATH}"
cd skia
python3 tools/git-sync-deps
python3 bin/fetch-ninja
gn gen out/Release-x64 --args="is_debug=false is_official_build=true skia_use_system_expat=false skia_use_system_icu=false skia_use_system_libjpeg_turbo=false skia_use_system_libpng=false skia_use_system_libwebp=false skia_use_system_zlib=false skia_use_freetype=true skia_use_harfbuzz=true skia_pdf_subset_harfbuzz=true skia_use_system_freetype2=false skia_use_system_harfbuzz=false"
ninja -C out/Release-x64 skia modules

# Installing dependecies
sudo pacman -S gcc clang cmake ninja libx11 libxcursor mesa-libgl fontconfig libwebp


echo $HOME/deps/skia
cd $GIT_LIBS/aseprite
./build.sh
