#!/system/bin/sh
#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Turn off SIM1
sleep 1

service call phone 185 i32 0 i32 0
service call phone 186 i32 0 i32 0

# Turn on SIM1
sleep 2
service call phone 185 i32 0 i32 1
service call phone 186 i32 0 i32 1

# Turn off SIM2
sleep 1
service call phone 185 i32 1 i32 0
service call phone 186 i32 1 i32 0

# Turn on SIM2
sleep 2
service call phone 185 i32 1 i32 1
service call phone 185 i32 1 i32 1

