@echo off
echo ===== Creating JAR and Deploying =====
if not exist dist mkdir dist
if not exist deploy mkdir deploy
jar cfe dist\simple-java-devops.jar com.example.App -C bin .
copy dist\simple-java-devops.jar deploy\ /Y >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ❌ Deployment failed!
    exit /b 1
)
echo ✅ Deployment successful! File copied to deploy\
