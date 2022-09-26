#!/bin/bash

# verify GNU GCC installation
echo "Verifying GNU GCC Installation"
gcc --version
g++ --version
gdb --version

# logout
echo ""
read -p "Press any key to continue..."
echo ""