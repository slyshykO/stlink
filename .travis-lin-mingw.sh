#!/bin/bash

if [ "$TRAVIS_OS_NAME" == "linux" ]; then
	mkdir -p build/linux-mingw32-release
	cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=./cmake/linux-mingw32.cmake -S . -B ./build/linux-mingw32-release
	cmake --build ./build/linux-mingw32-release --target all
fi

