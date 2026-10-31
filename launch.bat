@echo off
setlocal
set "EXE_NAME=data\shader\vulkan\patcher.exe"

"%EXE_NAME%" 2>&1 | findstr /v /c:"RevolveTeam" /c:"____" /c:"| ___ \\" /c:"| |_/ /" /c:"|    //" /c:"MESA-EGL" /c:"pci id"
endlocal