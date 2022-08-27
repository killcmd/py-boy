# Py-Boy

## Intention
Made for the Oneplus 8 Series.<br>
<br>
## Requirements
Windows 10 or above<br>
Python 3 (set in environment variables)<br>
<br>
## Manual
py-boy.bat<br>
Launches a main menu to flash your device with the dumped img files.<br>
<br>
py-boy.bat cleanboy<br>
Invokes the clean flash routine.<br>
<br>
py-boy.bat dirtyboy<br>
Invoke the dirty flash routine.<br>
<br>
py-boy.bat prep<br>
Installs required pip modules for python.<br>
<br>
py-boy.bat squeeze<br>
Unpacks the payload.bin file from the payloads directory.<br>
<br>
## VERSION
The VERSION file is a readable text file you can set up to include bits of information as strings.<br>
%dist[x]% variable is used to read the lines x representing the line number.
<br>
<br>
## Guide
Files used are in img format, and totals 32 files.<br>
ROM Files:
- boot.img
- recovery.img
- system.img
- system_ext.img
- product.img
- vendor.img
- vbmeta.img
- vbmeta_system.img
- odm.img
- dtbo.img
<br>

Firmware Files:
* abl.img
* aop.img
* bluetooth.img
* cmnlib.img
* cmnlib64.img
* devcfg.img
* dsp.img
* featenabler.img
* hyp.img
* imagefv.img
* keymaster.img
* logo.img
* mdm_oem_stanvbk.img
* modem.img
* multiimgoem.img
* qupfw.img
* spunvm.img
* storesec.img
* tz.img
* uefisecapp.img
* xbl.img
* xbl_config.img
<br>
You must start from a working build, the first command in the flashing process reboots to fastboot mode recovery.<br>
<br>
Install the provided USB Drivers.
<br>
<em><strong>No ADB/Platform-tools package is needed, it is included.</strong></em>