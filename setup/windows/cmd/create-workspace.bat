@echo off

:: create .workspace folder under %USERPROFILE% directory
set WS=%USERPROFILE%\rf-training\.workspace

:: create folders
set DEVTOOLS=%WS%\devtools
set PROJECTS=%WS%\projects
set WSTMP=%WS%\.tmp
set USERPATHS=%WS%\user_paths.txt

if not exist %USERPATHS% (
    echo User Environment Path > %USERPATHS%
)

if not exist %DEVTOOLS% (
    echo.
    echo Adding .workspace/devtools folder to user environment variables.
    md %DEVTOOLS%
    setx DEVTOOLS %DEVTOOLS%
)

if not exist %PROJECTS% (
    echo.
    echo Adding .workspace/projects folder to user environment variables.
    md %PROJECTS%
    setx PROJECTS %PROJECTS%
)

if not exist %WSTMP% (
    md %WSTMP%
)
