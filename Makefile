# Define variables
NDK_VERSION := 26.1.10909125
NDK_PATH := $(HOME)/android-sdk/ndk/$(NDK_VERSION)/build

# Add NDK_PATH to PATH
export PATH := $(PATH):$(NDK_PATH)

# Set the environment variable for ANDROID_NDK
export ANDROID_NDK := $(NDK_PATH)

# Define the default target
all: build

# Target to build the APK
build:
	ndk-build NDK_PROJECT_PATH="." APP_BUILD_SCRIPT="Android.mk" NDK_APPLICATION_MK="Application.mk"

# Optional clean target
clean:
	rm -rf libs obj
