@echo off

set BATCHDIR=%~dp0
set CMDIR=%BATCHDIR%cmd
set UTDIR=%BATCHDIR%utils

:: create .workspace folder under %USERPROFILE% directory
call %CMDIR%\create-workspace.bat

:: setup basic development tools

:: archiving tool
call %CMDIR%\install-7zip.bat %UTDIR%

:: git
call %CMDIR%\install-git.bat %ZIP%\7z.exe

:: vscode-portable
call %CMDIR%\install-vscode.bat %ZIP%\7z.exe

:: msys2-mingw64
call %CMDIR%\install-msys.bat %ZIP%\7z.exe %CMDIR%\bash

:: renode-portable
call %CMDIR%\install-renode.bat %ZIP%\7z.exe

:: miniconda
@REM call %CMDIR%\install-miniconda.bat

:: clear temporary files
echo.
set /p CLRTMP="Clear temporary folder (Y/N)?: "
if %CLRTMP%=="Y" %CLRTMP%=="y" (
    rd %WSTMP% /S
)
@REM pause
