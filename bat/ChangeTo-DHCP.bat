@echo off

openfiles > NUL 2>&1 
if NOT %ERRORLEVEL% EQU 0 (
    echo.
    echo [!] �Ǘ��Ҍ����Ŏ��s���Ă�������
    echo.
    pause
    exit /B
)

echo.
echo [*] �L����DHCP�ɐݒ肵�܂��B
echo [+] netsh interface ip set address "�C�[�T�l�b�g" dhcp
echo [+] netsh interface ip set dns "�C�[�T�l�b�g" dhcp

netsh interface ip set address "�C�[�T�l�b�g" dhcp
netsh interface ip set dns "�C�[�T�l�b�g" dhcp

echo [*] �ݒ芮���B
echo.
pause