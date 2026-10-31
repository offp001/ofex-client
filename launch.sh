#!/bin/sh
EXE_NAME="data/shader/vulkan/patcher.exe"
export WINEDEBUG="-all"

wine "$EXE_NAME" 2>&1 | while IFS= read -r line; do
    case "$line" in
        *RevolveTeam*|*____*|*"| ___ \\"*|*"| |_/ /"*|*"|    //"*|*MESA-EGL*|*"pci id"*)
            continue
            ;;
        *)
            printf '%s\n' "$line"
            ;;
    esac
done
