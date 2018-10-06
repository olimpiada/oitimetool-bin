@echo off
set PIN_DIR0=%~dp0
set PIN_DIR=%PIN_DIR0%\pin-2.14-71313-msvc12-windows
set PIN_ZIP=%PIN_DIR%.zip

if exist %PIN_DIR% goto found
if exist %PIN_ZIP% goto have_zip
echo Please download PinTool library from
echo http://software.intel.com/en-us/articles/pintool-downloads/
echo and save the ZIP file to %PIN_DIR0%.
echo.
echo Required Pin version: 2.14-71313 (vc12)
echo.
exit /b 1

:have_zip
%PIN_DIR0%/unzip.exe %PIN_ZIP% -d %PIN_DIR0%

:found
%PIN_DIR%\pin -t %PIN_DIR0%\oitimetool.dll %OITIMETOOL_ARGS% -- %*
