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
echo [*] 有線をDHCPに設定します。
echo [+] netsh interface ip set address "イーサネット" dhcp
echo [+] netsh interface ip set dns "イーサネット" dhcp

netsh interface ip set address "イーサネット" dhcp
netsh interface ip set dns "イーサネット" dhcp

echo [*] 設定完了。
echo.
pause