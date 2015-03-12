#!/bin/bash

# Symbolicate a crash using Xcode 6

ARGS=("$@")

XCODE_DIR="/Applications/Xcode.app"
export DEVELOPER_DIR="${XCODE_DIR}/Contents/Developer"

CRASH="${XCODE_DIR}/Contents/SharedFrameworks/DTDeviceKitBase.framework/Versions/Current/Resources/symbolicatecrash"

$CRASH -v $ARGS
