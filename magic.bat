@echo off
set arg1=%1
if defined arg1 goto %arg1%
if not defined arg1 exit
:cleanboy
.\bin\fastboot -w
.\bin\fastboot reboot fastboot
.\bin\fastboot flash --slot=all boot .\output\boot.img
.\bin\fastboot flash --slot=all recovery .\output\recovery.img
.\bin\fastboot flash --slot=all dtbo .\output\dtbo.img
.\bin\fastboot flash --slot=all system .\output\system.img
.\bin\fastboot flash --slot=all vendor .\output\vendor.img
.\bin\fastboot flash --slot=all product .\output\product.img
.\bin\fastboot flash --slot=all vbmeta .\output\vbmeta.img
.\bin\fastboot flash --slot=all vbmeta_system .\output\vbmeta_system.img
.\bin\fastboot flash --slot=all system_ext .\output\system_ext.img
.\bin\fastboot flash --slot=all odm .\output\odm.img
.\bin\fastboot flash --slot=all abl .\output\abl.img
.\bin\fastboot flash --slot=all aop .\output\aop.img
.\bin\fastboot flash --slot=all bluetooth .\output\bluetooth.img
.\bin\fastboot flash --slot=all cmnlib .\output\cmnlib.img
.\bin\fastboot flash --slot=all cmnlib64 .\output\cmnlib64.img
.\bin\fastboot flash --slot=all devcfg .\output\devcfg.img
.\bin\fastboot flash --slot=all dsp .\output\dsp.img
.\bin\fastboot flash --slot=all featenabler .\output\featenabler.img
.\bin\fastboot flash --slot=all hyp .\output\hyp.img
.\bin\fastboot flash --slot=all imagefv .\output\imagefv.img
.\bin\fastboot flash --slot=all keymaster .\output\keymaster.img
.\bin\fastboot flash --slot=all logo .\output\logo.img
.\bin\fastboot flash --slot=all mdm_oem_stanvbk .\output\mdm_oem_stanvbk.img
.\bin\fastboot flash --slot=all modem .\output\modem.img
.\bin\fastboot flash --slot=all multiimgoem .\output\multiimgoem.img
.\bin\fastboot flash --slot=all qupfw .\output\qupfw.img
.\bin\fastboot flash --slot=all spunvm .\output\spunvm.img
.\bin\fastboot flash --slot=all storsec .\output\storsec.img
.\bin\fastboot flash --slot=all tz .\output\tz.img
.\bin\fastboot flash --slot=all uefisecapp .\output\uefisecapp.img
.\bin\fastboot flash --slot=all xbl .\output\xbl.img
.\bin\fastboot flash --slot=all xbl_config .\output\xbl_config.img
.\bin\fastboot reboot fastboot
exit
:dirtyboy
.\bin\fastboot reboot fastboot
.\bin\fastboot flash --slot=all boot .\output\boot.img
.\bin\fastboot flash --slot=all recovery .\output\recovery.img
.\bin\fastboot flash --slot=all dtbo .\output\dtbo.img
.\bin\fastboot flash --slot=all system .\output\system.img
.\bin\fastboot flash --slot=all vendor .\output\vendor.img
.\bin\fastboot flash --slot=all product .\output\product.img
.\bin\fastboot flash --slot=all vbmeta .\output\vbmeta.img
.\bin\fastboot flash --slot=all vbmeta_system .\output\vbmeta_system.img
.\bin\fastboot flash --slot=all system_ext .\output\system_ext.img
.\bin\fastboot flash --slot=all odm .\output\odm.img
.\bin\fastboot flash --slot=all abl .\output\abl.img
.\bin\fastboot flash --slot=all aop .\output\aop.img
.\bin\fastboot flash --slot=all bluetooth .\output\bluetooth.img
.\bin\fastboot flash --slot=all cmnlib .\output\cmnlib.img
.\bin\fastboot flash --slot=all cmnlib64 .\output\cmnlib64.img
.\bin\fastboot flash --slot=all devcfg .\output\devcfg.img
.\bin\fastboot flash --slot=all dsp .\output\dsp.img
.\bin\fastboot flash --slot=all featenabler .\output\featenabler.img
.\bin\fastboot flash --slot=all hyp .\output\hyp.img
.\bin\fastboot flash --slot=all imagefv .\output\imagefv.img
.\bin\fastboot flash --slot=all keymaster .\output\keymaster.img
.\bin\fastboot flash --slot=all logo .\output\logo.img
.\bin\fastboot flash --slot=all mdm_oem_stanvbk .\output\mdm_oem_stanvbk.img
.\bin\fastboot flash --slot=all modem .\output\modem.img
.\bin\fastboot flash --slot=all multiimgoem .\output\multiimgoem.img
.\bin\fastboot flash --slot=all qupfw .\output\qupfw.img
.\bin\fastboot flash --slot=all spunvm .\output\spunvm.img
.\bin\fastboot flash --slot=all storsec .\output\storsec.img
.\bin\fastboot flash --slot=all tz .\output\tz.img
.\bin\fastboot flash --slot=all uefisecapp .\output\uefisecapp.img
.\bin\fastboot flash --slot=all xbl .\output\xbl.img
.\bin\fastboot flash --slot=all xbl_config .\output\xbl_config.img
.\bin\fastboot reboot fastboot
exit
:squeeze
python payload_dumper.py .\payloads\payload.bin
exit
:prep
pip install protobuf==3.20.1
pip install six
pip install bsdiff4
exit
:oos-prep
xcopy oos\abl.img output
xcopy oos\aop.img output
xcopy oos\bluetooth.img output
xcopy oos\cmnlib.img output
xcopy oos\cmnlib64.img output
xcopy oos\devcfg.img output
xcopy oos\dsp.img output
xcopy oos\featenabler.img output
xcopy oos\hyp.img output
xcopy oos\imagefv.img output
xcopy oos\keymaster.img output
xcopy oos\logo.img output
xcopy oos\mdm_oem_stanvbk.img output
xcopy oos\modem.img output
xcopy oos\multiimgoem.img output
xcopy oos\qupfw.img output
xcopy oos\spunvm.img output
xcopy oos\storesec.img output
xcopy oos\tz.img output
xcopy oos\uefisecapp.img output
xcopy oos\xbl.img output
xcopy oos\xbl_config.img output
exit