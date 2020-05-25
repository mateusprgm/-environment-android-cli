@ECHO OFF
SETX /M ANDROID_HOME "%cd%"

REM SETTING ENVIRONMENT VARIABLES

SET BUILDTOOLS_PATH=%cd%\build-tools
SET TOOLS_PATH=%cd%\tools
SET PLATAFORMTOOLS_PATH=%cd%\platform-tools
SET PLATFORMS_PATH=%cd%\platforms

SET GROUPTOOLS_PATH=%path%;%BUILDTOOLS_PATH%;%TOOLS_PATH%;%PLATAFORMTOOLS_PATH%;%PLATFORMS_PATH%

SETX /M path "%GROUPTOOLS_PATH%"


REM DOWNLOADING PLATFORMS-TOOLS AND SDK-TOOLS

curl https://dl.google.com/android/repository/platform-tools_r30.0.1-windows.zip -o platform-tools.zip
curl https://dl.google.com/android/repository/sdk-tools-windows-4333796.zip -o tools.zip

jar xf platform-tools.zip
jar xf tools.zip

del "%cd%\platform-tools.zip"
del "%cd%\tools.zip"

"%cd%\tools\bin\/sdkmanager.bat" "platforms;android-28" "platform-tools" "build-tools;28.0.3"

