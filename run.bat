@echo off
echo This program optimization windows just for only gaming!
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if %errorLevel% equ 0 (
    sc config sysmain start=disabled > nul && echo [+] Sysmain disabled
    sc config iphlpsvc start=disabled > nul && echo [+] iphlpsvc disabled
    sc config WalletService start=disabled > nul && echo [+] WalletService disabled
    sc config DusmSvc start=disabled > nul && echo [+] DusmSvc disabled
    sc config SEMgrSvc start=disabled > nul && echo [+] SEMgrSvc disabled
    sc config LanmanServer start=disabled > nul && echo [+] LanmanServer disabled
    sc config LanmanWorkstation start=disabled > nul && echo [+] LanmanWorkstation disabled
    sc config AJRouter start=disabled > nul && echo [+] AJRouter disabled
    sc config DPS start=disabled > nul  && echo [+] DPS disabled
    sc config WSearch start=disabled > nul  && echo [+] WSearch disabled
    sc config Themes start=disabled > nul  && echo [+] Themes disabled
    sc config Spooler start=disabled > nul  && echo [+] Spooler disabled
    sc config WbioSrvc start=disabled > nul  && echo [+] WbioSrvc disabled
    sc config DiagTrack start=disabled > nul  && echo [+] DiagTrack disabled
    sc config TrkWks start=disabled > nul  && echo [+] TrkWks disabled
    sc config FDResPub start=disabled > nul  && echo [+] FDResPub disabled
    sc config PcaSvc start=disabled > nul  && echo [+] PcaSvc disabled
    sc config RmSvc start=disabled > nul  && echo [+] RmSvc disabled
    sc config lmhosts start=disabled > nul  && echo [+] lmhosts disabled
    sc config lfsvc start=disabled > nul  && echo [+] lfsvc disabled
    sc config MapsBroker start=disabled > nul  && echo [+] MapsBroker disabled
    fsutil behavior set DisableDeleteNotify 0 > nul && echo [+] TRIM enabled!
    bcdedit /deletevalue useplatformclock > nul && echo [+] HPET disabled.
    bcdedit /set disabledynamictick yes > nul && echo [+] disabledynamictick set to yes!
    powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 > nul && echo [+] New power plan added to battery!.
    reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v SystemUsesLightTheme /t REG_DWORD /d 0 /f > nul
    reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f > nul
    reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_DWORD /d 0 /f > nul
    echo [+] Dark Theme enabled!
    pause
) else (
    echo Run program as administrator!.
    pause
)
