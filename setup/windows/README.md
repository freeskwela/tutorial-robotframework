# Embedded Systems Development Environment (Windows)
## Workspace Folder
* Run *setup.bat*
    * Create ***.workspace*** folder under *%USERPROFILE%* directory.
    * Create *devtools* and *projects* folders.
    * Setup basic development tools.
    * Generate user paths list.
```
+-- .workspace
|   +-- devtools
|   |   +-- miniconda
|   |   |   +-- condabin
|   |   |   +-- envs
|   |   |   |   +-- robot
|   |   |   |   +-- ...
|   |   |   +-- ...
|   |   +-- msys64
|   |   |   +-- clang64
|   |   |   +-- mingw64
|   |   |   +-- ...
|   |   +-- renode
|   |   |   +-- bin
|   |   |   +-- ...
|   |   +-- vscode
|   |   +-- ...
|   +-- projects
|   |   +-- ...
```
### 7-zip Archive Tool
- This 7-zip installation may require an administrator priviledge.
- Succeeding installation uses 7-zip for file extraction.
### Git
### MSYS2 (MinGW64, Clang64)
- GCC, G++, GCC-ARM, CMAKE
### Visual Studio Code
- Portable mode (unable to get updates automatically)
### Renode
- Portable mode
### Miniconda
