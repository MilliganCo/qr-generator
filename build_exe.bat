@echo off
setlocal

REM Build a standalone Windows executable using PyInstaller.
REM Usage: run from repository root after installing requirements.

where pyinstaller >nul 2>nul
if errorlevel 1 (
    echo PyInstaller not found. Installing...
    python -m pip install --upgrade pip
    python -m pip install pyinstaller
)

pyinstaller --noconfirm --onefile --windowed ^
    --name "QRGenerator" ^
    --add-data "requirements.txt;." ^
    main.py

echo.
echo Build complete. Executable located in dist\QRGenerator.exe

endlocal

