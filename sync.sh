#!/bin/bash
rsync -avz ../mnt/boot/firmware/kernel8-custom.img root@pi:/boot/firmware
rsync -avz -l ../mnt/root/lib/modules/6.12.67-v8-MY-CUSTOM+ root@pi:/lib/modules
