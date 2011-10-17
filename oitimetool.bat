@echo off
set PIN_DIR0=%~dp0
set PIN_DIR=%PIN_DIR0%\pin-2.10-43611-msvc10-ia32_intel64-windows
set PIN_ZIP=%PIN_DIR%.zip

if exist %PIN_DIR% goto found
if exist %PIN_ZIP% goto have_zip
echo Please download PinTool library from http://tiny.pl/h1f3k
echo and save the ZIP file to %PIN_DIR0%.
exit /b 1

:have_zip
%PIN_DIR0%/unzip.exe %PIN_ZIP% -d %PIN_DIR0%

:found
%PIN_DIR%\pin.bat -t %PIN_DIR0%\oitimetool.dll %OITIMETOOL_ARGS% -- %*
