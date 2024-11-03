@echo off
set targetPath=%userprofile%\AppData\Roaming\Sublime Text\Packages\User
set sourcePath=%~dp0\ST-plugin

if not exist "%targetPath%" (
    echo Target path does not exist: %targetPath%
    echo Creating target directory...
    mkdir "%targetPath%"
)

echo Target path exists or has been created: %targetPath%
echo Copying folders and files...

xcopy "%sourcePath%\MyCMake" "%targetPath%\MyCMake" /E /I /Y
xcopy "%sourcePath%\MyNSIS" "%targetPath%\MyNSIS" /E /I /Y
copy "%sourcePath%\MyCustomColorScheme.sublime-color-scheme" "%targetPath%" /Y

echo Folders and files copied successfully.

pause
