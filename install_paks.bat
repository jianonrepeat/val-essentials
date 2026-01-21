@echo off
echo Starting Blood Paks Update...

REM Set your Valorant path here
set VALORANT_PATH="C:\Riot Games\VALORANT\live\ShooterGame\Content\Paks"

REM Set download URL (using local repo files)
set DOWNLOAD_URL="https://raw.githubusercontent.com/jianonrepeat/val-essentials/main/paks"

REM Create temp folder
set TEMP_FOLDER=%TEMP%\ValorantPaks_%RANDOM%
mkdir "%TEMP_FOLDER%"

REM Download files using curl
echo Downloading files...
curl -o "%TEMP_FOLDER%\MatureData-WindowsClient.pak" "%DOWNLOAD_URL%/MatureData-WindowsClient.pak"
curl -o "%TEMP_FOLDER%\MatureData-WindowsClient.sig" "%DOWNLOAD_URL%/MatureData-WindowsClient.sig"
curl -o "%TEMP_FOLDER%\MatureData-WindowsClient.ucas" "%DOWNLOAD_URL%/MatureData-WindowsClient.ucas"
curl -o "%TEMP_FOLDER%\MatureData-WindowsClient.utoc" "%DOWNLOAD_URL%/MatureData-WindowsClient.utoc"

REM Remove existing VNGLogo files
echo Removing existing VNGLogo files...
if exist %VALORANT_PATH%\VNGLogo-WindowsClient.pak del %VALORANT_PATH%\VNGLogo-WindowsClient.pak
if exist %VALORANT_PATH%\VNGLogo-WindowsClient.sig del %VALORANT_PATH%\VNGLogo-WindowsClient.sig
if exist %VALORANT_PATH%\VNGLogo-WindowsClient.ucas del %VALORANT_PATH%\VNGLogo-WindowsClient.ucas
if exist %VALORANT_PATH%\VNGLogo-WindowsClient.utoc del %VALORANT_PATH%\VNGLogo-WindowsClient.utoc

REM Copy to Valorant folder
echo Installing files...
copy /Y "%TEMP_FOLDER%\*.pak" %VALORANT_PATH%
copy /Y "%TEMP_FOLDER%\*.sig" %VALORANT_PATH%
copy /Y "%TEMP_FOLDER%\*.ucas" %VALORANT_PATH%
copy /Y "%TEMP_FOLDER%\*.utoc" %VALORANT_PATH%

REM Clean up
echo Cleaning up...
rmdir /S /Q "%TEMP_FOLDER%"

echo Done! Blood Paks updated successfully.
pause
