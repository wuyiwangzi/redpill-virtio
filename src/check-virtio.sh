echo "Checking for VirtIO"
ls -l /sys/devices/virtual/dmi/id/
if (grep -r -q -E "(QEMU|VirtualBox|Parallels)" /sys/devices/virtual/dmi/id/); then
  echo "VirtIO hypervisor detected"
  exit 0
else
  echo "*No* VirtIO hypervisor detected"
  exit 1
fi
