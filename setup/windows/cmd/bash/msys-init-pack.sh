#!/bin/bash

# sychronize MSYS2 package databases
pacman -Sy

# logout
echo ""
read -p "Press any key to continue..."
echo ""
logout