#!/bin/sh
emulator64-arm -avd arm -http-proxy  -noaudio -no-window -gpu off -verbose -qemu -vnc :0 &
sleep 30
./build-android.sh
