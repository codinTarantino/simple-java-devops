@echo off
echo ===== Compiling Java Files =====
cd %WORKSPACE%

if exist src\com\example\App.java (
    set SRC_PATH=src\com\example
) else (
    set SRC_PATH=simple-java-devops\src\com\example
)

if not exist bin mkdir bin
javac -d bin %SRC_PATH%\App.java %SRC_PATH%\AppTest.java
if %ERRORLEVEL% NEQ 0 (
    echo ❌ Build failed!
    exit /b 1
)
echo ✅ Compilation successful!

