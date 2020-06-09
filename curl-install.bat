jar xf curl.zip

SET CURL_PATH=%cd%\curl\bin

SET GROUPTOOLS_PATH=%path%;%CURL_PATH%

SETX /M path "%GROUPTOOLS_PATH%"