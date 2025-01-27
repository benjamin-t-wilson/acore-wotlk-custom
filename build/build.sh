#!/bin/bash

cmake ../ \
    -DCMAKE_INSTALL_PREFIX=$HOME/azerothcore/env/dist/ \
    -DCMAKE_C_COMPILER=/usr/bin/clang \
    -DCMAKE_CXX_COMPILER=/usr/bin/clang++ \
    -DWITH_WARNINGS=1 \
    -DTOOLS_BUILD=all \
    -DSCRIPTS=static \
    -DMODULES=static \
    -DCONF_DIR=../etc && \
make -j 8 && \
make install
