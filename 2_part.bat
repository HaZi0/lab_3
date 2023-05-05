@echo off
if "%~1"=="" goto :usage
if "%~1"=="-h" goto :usage

set total=0
for %%d in (%*) do (
    if not exist "%%~d" (
        echo Folder "%%~d" does not exist.
        exit /b 1
    )
    pushd "%%~d"
    for %%f in (*) do (
        if exist "%%f" (
            if "%%~af" NEQ "-ra--------" (
                echo File: %%~nf, Size: %%~zf bytes, Atr: %%~af
                set /a total+=%%~zf
            )
        )
    )
    popd
)
echo Total Size: %total% bytes
exit /b 0

:usage
echo Usage: file_size.bat [folder1] [folder2] ...
echo Example: file_size.bat "C:\Folder1" "D:\Folder2"
exit /b 1