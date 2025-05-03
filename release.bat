@echo off
REM ==================================================
REM Release Build Script for Rust Console Application
REM ==================================================
REM This script builds the project in release mode
REM and copies the resulting executable to the 'dist'
REM folder so it can be run on any terminal.
REM
REM Note: Replace "first_project.exe" with the
REM actual name of your executable if different.
REM ==================================================

REM Build the project in release mode using Cargo
echo Building the project in release mode...
cargo build --release
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ERROR: Build failed. Please check your code and try again.
    pause
    exit /b %ERRORLEVEL%
)

REM Ensure the 'dist' directory exists; if not, create it.
if not exist "dist" (
    echo Creating dist directory...
    mkdir "dist"
)

REM Copy the executable from target\release to dist folder.
REM Assuming your executable is named "first_project.exe".
echo Copying executable to dist folder...
copy /Y "target\release\first_app.exe" "dist\final.exe"
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ERROR: Failed to copy the executable. Please verify the file name and path.
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo Release build completed successfully.
echo You can find the executable in the 'dist' folder.
pause
