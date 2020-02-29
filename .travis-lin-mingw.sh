#!/bin/bash

if [ "$TRAVIS_OS_NAME" == "linux" ]; then
	cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=./cmake/linux-mingw32.cmake -S . -B ./build/linux-mingw32
	cmake --build ./build/linux-mingw32 --target all
fi

