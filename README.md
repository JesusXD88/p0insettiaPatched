# p0insettia
A tool for [(semi-){un-(tethered jailbreak)}] of iOS 10.3.4 ~~32-bit devices~~ iPhone 5 with checkm8 BootROM exploit.  

Fork of dora2ios' p0insettia that fixes some errors when building (mainly missing some IOKit library headers), so the project can be built OOB even on a fresh macOS installation.

## Note
- All at your own risk!  
- The package used for this jailbreak can be obtained via Cydia from the following repository.  
`https://dora2ios.github.io/repo`  

## Supported devices
- iPhone 5 (N41/N42) - iOS 10.3.4  

## Supported environments
- macOS 10.13 (or later?) (intel/x86_64)
- Works using a QEMU VM from a Linux host with proper PCIe USB controller passthrough:
   - Setup a QEMU VM using [OSX-KVM](https://github.com/kholia/OSX-KVM). Virt-Manager and GNOME-Boxes (Libvirt) method is also working fine.
   - Once macOS is installed and set-up, check [this repo](https://github.com/Silfalion/Iphone_docker_osx_passthrough) and follow the instructions in order to passtrhough your USB controller to the macOS VM.

## Prerequisites
Before trying to build p0insettia, you need to get the ARM Embedded Toolchain v4.7 from [here](https://launchpad.net/gcc-arm-embedded/4.7/4.7-2013-q1-update).
Once downloaded, extract the archive and move the contents to /opt/gnuarm .
Otherwise the build will fail as the iBoot payload hook needs an old version of the toolchain. 

## Make
```
git clone https://github.com/JesusXD88/p0insettiaPatched --recursive && cd p0insettiaPatched
./build.sh all
```

## semi-tethered jailbreak
Please refer to the build/ directory.  

## semi-untethered jailbreak
It uses an IPA App based jailbreak. (reloader/ directory)   
In order to use this, you need to jailbreak your device with "semi-tethered jailbreak" first.  
The pre-built IPA file can be obtained from: [p0insettia](https://dora2ios.web.app/p0insettia.html)  
You can use ReProvision Reborn (via [Packix](https://repo.packix.com/)) or similar to install and use IPA files on your device. All at your own risk.   

## untethered jailbreak
It uses an iBoot(iOS 7 iBoot) exploit based jailbreak. (ETA NOW)   

## Note for this jailbreak environment (iOS 10.3 or higher)  
This jailbreak will not apply the nuke sandbox patch used by h3lix.  
In iOS 10.3 and later, apps under /Applications will also be sandboxed. so, Apps such as Cydia will be sandboxed and will not work. For this reason, this jailbreak adds a key to Cydia's entitlements to disable sandbox.  

- Key `com.apple.private.security.no-container`  

Some other jailbreak apps may require this entitlement.  

- entitlement key
```
<key>com.apple.private.security.no-container</key>
<true/>
```

## credits
- @dora2ios for this incredible tool [p0insettia](https://github.com/dora2-iOS/p0insettia)
- @axi0mX for the [checkm8 exploit](https://github.com/axi0mX/ipwndfu)  
- @LinusHenze for the [Fugu](https://github.com/LinusHenze/Fugu)  
- @planetbeing for [XPwn](https://github.com/planetbeing/xpwn) and [ios-jailbreak-patchfinder](https://github.com/planetbeing/ios-jailbreak-patchfinder)  
- @xerub for the [ibex](https://github.com/xerub/ibex)  
- @libimobiledevice for the [libirecovery](https://github.com/libimobiledevice/libirecovery)  
- @synackuk for the [atropine](https://github.com/synackuk/atropine)  
- checkra1n team for the kernel patch method  
