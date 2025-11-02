@echo off
echo ===== Compiling Java Files =====
if not exist bin mkdir bin
javac -d bin simple-java-devops\src\com\example\App.java simple-java-devops\src\com\example\AppTest.java
if %ERRORLEVEL% NEQ 0 (
    echo ❌ Build failed!
    exit /b 1
)
echo ✅ Compilation successful!
