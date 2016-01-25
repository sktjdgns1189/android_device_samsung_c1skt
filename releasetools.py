# Copyright (C) 2012 The Android Open Source Project
# Copyright (C) 2015 The Dokdo Project
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

"""Custom OTA commands for C1SKT devices"""

def FullOTA_InstallEnd(info):
  info.script.AppendExtra('mount("ext4", "EMMC", "/dev/block/mmcblk0p9", "/system", "");')
  info.script.AppendExtra('set_metadata("/system/bin/check.sh", "uid", 0, "gid", 0, "mode", 0755);')
  info.script.AppendExtra('run_program("/system/bin/check.sh");')
  info.script.AppendExtra('delete("/system/bin/check.sh");')
  info.script.AppendExtra('unmount("/system");')
