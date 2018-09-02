@echo off

openfiles > NUL 2>&1 
if NOT %ERRORLEVEL% EQU 0 (
    echo.
    echo [!] 管理者権限で実行してください
    echo.
    pause
    exit /B
)

echo.
echo [*] 有線を無効化します
echo [+] netsh interface set interface "イーサネット" disable

netsh interface set interface "イーサネット" disable

echo.
echo [*] chromeを起動します
echo [+] start "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

start "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
timeout 5

echo.
echo [*] 有線を有効化します
echo [+] netsh interface set interface "イーサネット" enable

netsh interface set interface "イーサネット" enable
timeout 3
