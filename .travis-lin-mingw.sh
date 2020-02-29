#!/bin/bash

DIR=$PWD

if [ "$TRAVIS_OS_NAME" == "linux" ]; then
	echo $PWD
	echo "DIR=$DIR"
	mkdir -p $DIR/build/linux-mingw32-release
	cd $DIR/build/linux-mingw32-release
	echo "cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=./cmake/linux-mingw32.cmake -S $DIR -B $DIR/build/linux-mingw32-release"
	cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=./cmake/linux-mingw32.cmake $DIR 
	echo "cmake --build $DIR/build/linux-mingw32-release --target all"
	cmake --build $DIR/build/linux-mingw32-release --target all
fi

