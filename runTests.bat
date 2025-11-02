@echo off
echo ===== Running Tests =====
cd bin
java com.example.AppTest
if %ERRORLEVEL% NEQ 0 (
    echo ❌ Test failed!
    exit /b 1
)
echo ✅ All tests passed!
cd ..
