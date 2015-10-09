#
# Copyright (C) 2008 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)

include $(call all-subdir-makefiles)

LOCAL_CC  := $$(TARGET_TOOLCHAIN_ROOT)/../arm-linux-androideabi-5.1/bin/arm-linux-androideabi-gcc$$(HOST_EXECUTABLE_SUFFIX)
LOCAL_CXX := $$(TARGET_TOOLCHAIN_ROOT)/../arm-linux-androideabi-5.1/bin/arm-linux-androideabi-g++$$(HOST_EXECUTABLE_SUFFIX)
  
