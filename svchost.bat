@echo off
::RUN AS ADMINISTRATOR
for /f "skip=1" %%p in ('wmic os get TotalVisibleMemorySize') do (
    set val=%%p
    goto :done
)
:done

set "hex=%val%"
set /A decval=0x%hex%
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d "%decval%" /f >nul 2>&1
