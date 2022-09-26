#!/bin/bash

# install packages
echo ""
echo "Installing MinGW64 Toolchain"
pacman -S --needed base-devel mingw-w64-x86_64-toolchain

# install unzip, git, cmake, gcc-arm
echo ""
echo "Installing Unzip, Git, CMake"
pacman -S unzip git cmake

echo ""
echo "Installing GCC ARM Cross Compiler"
pacman -S mingw-w64-x86_64-arm-none-eabi-gcc

# logout
echo ""
read -p "Press any key to continue..."
echo ""
logout
