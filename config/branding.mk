# Set all versions
RAVEN_LAIR ?= Unofficial
KANG_VERSION_BASE := 11-R-Alpha
Kang_CODENAME := Awakening

# Set all versions
BUILD_DATE := $(shell date -u +%d%m%Y)
BUILD_TIME := $(shell date -u +%H%M)
BUILD_DATE_TIME := $(BUILD_TIME)$(BUILD_DATE)
ROM_FINGERPRINT := Kang/$(RAVEN_LAIR)/$(PLATFORM_VERSION)/$(BUILD_ID)/$(BUILD_DATE)/$(BUILD_TIME)

ifeq ($(USE_GAPPS), true)
    KANG_VERSION := Kang_v$(KANG_VERSION_BASE)-$(KANG_CODENAME)-$(KANG_BUILD)-Gapps-$(BUILD_DATE)-$(RAVEN_LAIR)-$(BUILD_TIME)
else
    KANG_VERSION := Kang_v$(KANG_VERSION_BASE)-$(KANG_CODENAME)-$(KANG_BUILD)-$(BUILD_DATE)-$(RAVEN_LAIR)-$(BUILD_TIME)
endif

KANG_PROPERTIES := \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    ro.build.datetime=$(BUILD_DATE_TIME) \
    ro.kang.build.date=$(BUILD_DATE) \
    ro.kang.version=$(KANG_VERSION) \
    ro.kang.codename=$(KANG_CODENAME) \
    ro.kang.build.type=$(RAVEN_LAIR) \
    ro.kang.build.version=$(KANG_VERSION_BASE) \
    ro.kang.fingerprint=$(ROM_FINGERPRINT)
