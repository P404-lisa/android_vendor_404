#
# Copyright (C) 2020 P404 Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Fonts
include vendor/p404/configs/fonts.mk

# Common overlays
DEVICE_PACKAGE_OVERLAYS += vendor/404/overlay

# Packages
include vendor/p404/configs/packages.mk

# World APN list
PRODUCT_COPY_FILES += \
    vendor/p404/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Backup Services whitelist
PRODUCT_COPY_FILES += \
    vendor/p404/configs/permissions/backup.xml:system/etc/sysconfig/backup.xml

# Branding stuffs
LUCID_VERSION := 1.0
LUCID_VERSION_CODE := Queen-Cake
LUCID_BUILD_NUMBER := LPBN.Q0202.$(shell date -u +%d).$(shell date -u +%m)001

ifndef LUCID_BUILDTYPE
  LUCID_BUILDTYPE := unofficial
endif

LUCID_TARGET_ZIP := p404-$(LUCID_BUILD)-Q-$(LUCID_VERSION)-$(shell date -u +%Y%m%d)-$(LUCID_BUILDTYPE).zip

# Props
include vendor/p404/configs/props.mk
