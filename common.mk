TARGET_CRYPTFS_HW_PATH := device/qcom/common/cryptfs_hw

# SECCOMP Extension
BOARD_SECCOMP_POLICY += device/qcom/common/seccomp

# Block Dash by default
TARGET_DISABLE_DASH ?= true

# Dash extension
ifeq ($(TARGET_DISABLE_DASH),false)
PRODUCT_BOOT_JARS += qcmediaplayer
endif

