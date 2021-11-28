#!/bin/bash
_gpu_status=$(optimus-manager --print-mode | cut -d ' ' -f 5)
echo "[GameScript] Detected GPU status" $_gpu_status
if [[ "$_gpu_status" != "integrated" ]]; then
        export __NV_PRIME_RENDER_OFFLOAD=1
        export __GLX_VENDOR_LIBRARY_NAME="nvidia" 
        export __VK_LAYER_NV_optimus="NVIDIA_only"
fi
gamemoderun "$@"
