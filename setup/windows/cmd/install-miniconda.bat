@echo off

set CONDABATCH=%~dp0

set CONDAVERSION=latest
set CONDAINST=https://repo.anaconda.com/miniconda/Miniconda3-%CONDAVERSION%-Windows-x86_64.exe
set CONDA=%DEVTOOLS%\miniconda

set CREATEDIRS=%GITBATCH%create-workspace.bat

if not exist %WSTMP% (
    call %CREATEDIRS%
)

:: download miniconda version
echo.
echo Downloading Miniconda for Windows 64-bit ver. %CONDAVERSION%
curl -# -L -o %WSTMP%\miniconda-%CONDAVERSION%.exe %CONDAINST%

:: start the miniconda installation
echo.
echo Installing Miniconda @ %CONDA%
start /W %WSTMP%\miniconda-%CONDAVERSION%.exe /InstallationType=JustMe /RegisterPython=0 /AddToPath=0 /S /D=%CONDA%
echo Installation finished

echo.
echo Verifying Miniconda installation
call %CONDA%\condabin\conda activate base
call python -V -V
call %CONDA%\condabin\conda deactivate

:: notes
echo.
echo ************************************************************
echo *  NOTES :: Miniconda for Windows                          *
echo ************************************************************
echo Add %CONDA%\condabin into the User Path Environment Variable.
echo Note: Restart terminal session to use new path.
echo Note: Uninstall using the Windows 'Add/Remove Program'.
echo.
echo. >> %USERPATHS%
echo CONDA_PATH: %CONDA%\condabin >> %USERPATHS%
echo ************************************************************
echo.
