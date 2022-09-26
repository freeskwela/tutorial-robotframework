@echo off

set RENODEBATCH=%~dp0

set RENODEVERSION=1.13.1
set RENODEINST=https://github.com/renode/renode/releases/download/v%RENODEVERSION%/renode_%RENODEVERSION%.zip
set RENODE=%DEVTOOLS%\renode

set CREATEDIRS=%RENODEBATCH%create-workspace.bat

if not exist %WSTMP% (
    call %CREATEDIRS%
)

:: 7zip
set SZ=%1

:: download and extract the installation files
echo.
echo Downloading Renode Framework ver. %RENODEVERSION% (Portable Mode)
curl -# -L -o %WSTMP%\renode.zip %RENODEINST%
echo.
echo Extracting files
%SZ% x %WSTMP%\renode.zip -o%WSTMP%

if exist "%WSTMP%\renode_%RENODEVERSION%" (
    echo Moving installation folder
    move %WSTMP%\renode_%RENODEVERSION% %RENODE%
 )

:: notes
echo.
echo ************************************************************
echo *  NOTES :: Renode (Portable Mode)                         *
echo ************************************************************
echo Add %RENODE%\bin into the User Path Environment Variable.
echo Note: Restart terminal session to use new path.
echo.
echo. >> %USERPATHS%
echo RENODE_PATH: %RENODE%\bin >> %USERPATHS%
echo ************************************************************
echo.