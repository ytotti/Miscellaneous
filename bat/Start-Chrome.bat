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
echo [*] �L���𖳌������܂�
echo [+] netsh interface set interface "�C�[�T�l�b�g" disable

netsh interface set interface "�C�[�T�l�b�g" disable

echo.
echo [*] chrome���N�����܂�
echo [+] start "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

start "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
timeout 5

echo.
echo [*] �L����L�������܂�
echo [+] netsh interface set interface "�C�[�T�l�b�g" enable

netsh interface set interface "�C�[�T�l�b�g" enable
timeout 3
