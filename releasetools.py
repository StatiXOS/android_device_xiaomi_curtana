# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

import common

def FullOTA_Assertions(info):
  CheckRecovery(info)
  return

def IncrementalOTA_Assertions(info):
  CheckRecovery(info)
  return

def FullOTA_InstallEnd(info):
  OTA_InstallEnd(info)
  return

def IncrementalOTA_InstallEnd(info):
  OTA_InstallEnd(info)
  return

def CheckRecovery(info):
  info.script.AppendExtra('assert(getprop("ro.statix.version") != "" || ui_print("WARNING: It seems that this is not StatiX recovery. Other recoveries might work but are not supported, so avoid reporting recovery/installation/boot issues if you are on another recovery! Thanks :)"););')
  return

def AddImage(info, basename, dest):
  path = "IMAGES/" + basename
  if path not in info.input_zip.namelist():
    return

  data = info.input_zip.read(path)
  common.ZipWriteStr(info.output_zip, basename, data)
  info.script.AppendExtra('package_extract_file("%s", "%s");' % (basename, dest))

def AddImageRadio(info, basename, dest):
  name = basename
  if ("RADIO/" + basename) in info.input_zip.namelist():
    data = info.input_zip.read("RADIO/" + basename)
    common.ZipWriteStr(info.output_zip, name, data)
    info.script.Print("Patching {} image unconditionally...".format(dest.split('/')[-1]))
    info.script.AppendExtra('package_extract_file("%s", "%s");' % (name, dest))

def OTA_InstallEnd(info):
  info.script.Print("Patching dtbo and vbmeta images...")
  AddImage(info, "dtbo.img", "/dev/block/bootdevice/by-name/dtbo")
  AddImage(info, "vbmeta.img", "/dev/block/bootdevice/by-name/vbmeta")
  AddImage(info, "vbmeta_system.img", "/dev/block/bootdevice/by-name/vbmeta_system")
  
  info.script.Print("Flashing firmware...")
  AddImageRadio(info, "abl.elf", "/dev/block/bootdevice/by-name/abl");
  AddImageRadio(info, "aop.mbn", "/dev/block/bootdevice/by-name/aop");
  AddImageRadio(info, "BTFM.bin", "/dev/block/bootdevice/by-name/bluetooth");
  AddImageRadio(info, "cmnlib.mbn", "/dev/block/bootdevice/by-name/cmnlib");
  AddImageRadio(info, "cmnlib64.mbn", "/dev/block/bootdevice/by-name/cmnlib64");
  AddImageRadio(info, "devcfg.mbn", "/dev/block/bootdevice/by-name/devcfg");
  AddImageRadio(info, "dspso.bin", "/dev/block/bootdevice/by-name/dsp");
  AddImageRadio(info, "hyp.mbn", "/dev/block/bootdevice/by-name/hyp");
  AddImageRadio(info, "imagefv.elf", "/dev/block/bootdevice/by-name/imagefv");
  AddImageRadio(info, "km4.mbn", "/dev/block/bootdevice/by-name/keymaster");
  AddImageRadio(info, "NON-HLOS.bin", "/dev/block/bootdevice/by-name/modem");
  AddImageRadio(info, "qupv3fw.elf", "/dev/block/bootdevice/by-name/qupfw");
  AddImageRadio(info, "storsec.mbn", "/dev/block/bootdevice/by-name/storsec");
  AddImageRadio(info, "tz.mbn", "/dev/block/bootdevice/by-name/tz");
  AddImageRadio(info, "uefi_sec.mbn", "/dev/block/bootdevice/by-name/uefisecapp");
  AddImageRadio(info, "xbl_config.elf", "/dev/block/bootdevice/by-name/xbl_config");
  AddImageRadio(info, "xbl.elf", "/dev/block/bootdevice/by-name/xbl");
  return
