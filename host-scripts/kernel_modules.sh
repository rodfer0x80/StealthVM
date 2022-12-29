#!/bin/s

if [[ "$1" == "on" ]]; then
    modprobe virtio-net virtio-blk virtio-scsi virtio-serial virtio-baloon
    modprobe kvm kvmgt mdev vfio irqbypass
    modprobe -r kvm_intel
    modprobe kvm_intel nested=1
elif [[ "$1" == "off" ]]; then
    modprobe -r virtio-net virtio-blk virtio-scsi virtio-serial virtio-baloon
    modprobe -r kvm kvmgt mdev vfio
    modprobe -r kvm_intel
else
    exit 1
fi
exit 0
