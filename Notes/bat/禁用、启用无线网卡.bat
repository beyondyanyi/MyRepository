@echo off
color 0f
echo ����WLAN���� ........
echo ����WLAN����
netsh interface set interface "WLAN" disabled
echo ����WLAN����
netsh interface set interface "WLAN" enabled
choice /t 5 /d y /n >nul