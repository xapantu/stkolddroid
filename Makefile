NDK_PATH=/media/dev/stk/android-ndk-r7/
# target: all - Default target. Build and create the apk.
all: build apk

# target: build - Build the native code
build:
	NDK_CCACHE=ccache ${NDK_PATH}/ndk-build -j3

# target: apk - Make a debug APK
apk:
	ant debug

# target: install - Install the debug APK to the plugged device/emulator
install:
	ant installd

# target: help - Display callable targets.
help:
	egrep "^# target:" [Mm]akefile
