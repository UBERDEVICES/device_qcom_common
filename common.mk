ifneq ($(TARGET_USES_AOSP),true)
TARGET_USES_QCOM_BSP := true
endif

TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_HAS_QC_KERNEL_SOURCE := true
TARGET_USES_QCOM_MM_AUDIO := true

BOARD_USES_ADRENO := true

BOARD_USES_QCNE := true

TARGET_CRYPTFS_HW_PATH := device/qcom/common/cryptfs_hw

# SECCOMP Extension
BOARD_SECCOMP_POLICY += device/qcom/common/seccomp

# Block Dash by default
TARGET_DISABLE_DASH ?= true

# Dash extension
ifeq ($(TARGET_DISABLE_DASH),false)
PRODUCT_BOOT_JARS += qcmediaplayer
endif

