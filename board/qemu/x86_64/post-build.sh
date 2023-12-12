#!/bin/sh

set -u
set -e

# Add a console on tty1
if [ -e ${TARGET_DIR}/etc/inittab ]; then
    grep -qE '^tty1::' ${TARGET_DIR}/etc/inittab || \
	sed -i '/GENERIC_SERIAL/a\
tty1::respawn:/sbin/getty -L  tty1 0 vt100 # QEMU graphical window' ${TARGET_DIR}/etc/inittab
fi

KLISH_PATH=${BASE_DIR}/../klish
cp -r ${KLISH_PATH}/clish ${TARGET_DIR}/etc
cp -r ${KLISH_PATH}/clish-enable ${TARGET_DIR}/etc
cp ${KLISH_PATH}/init.d/klish-init "${TARGET_DIR}/etc/init.d/S50klish-init"
cp ${KLISH_PATH}/startup-config "${TARGET_DIR}/etc/startup-config"

