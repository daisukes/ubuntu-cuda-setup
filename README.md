# ubuntu-cuda-setup

- [install Ubuntu Desktop 16.04](https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-desktop-1604#0)
- Run script in the order of script name


### for CUDA installation

- accept EULA
- install NVIDIA accelerated driver : no (00 script installed latest one but if you skip the script maybe yes)
- install CUDA : yes
- toolkit location : default
- symbolic link : yes
- samples : no


# For computers with Killer AX1650 wireless card
## To enable WiFi
If you have wired network, follow this instruction
https://support.killernetworking.com/knowledge-base/killer-ax1650-in-debian-ubuntu-16-04/

If you do not have wired network, follow the official instruction, but slightly modified
https://support.killernetworking.com/knowledge-base/killer-ax1650-in-debian-ubuntu-16-04-without-internet-access/

### Step 1 – Download Backport-Iwlwifi-Dkms, it’s Dependencies, and the Linux-Firmware.git Repository

On the Computer with Internet Access, open a Terminal and then copy and paste the following commands one at a time. Press ENTER after each command.
```
$ mkdir -p backport-iwlwifi-dkms/dependencies
$ cd backport-iwlwifi-dkms
$ sudo add-apt-repository ppa:canonical-hwe-team/backport-iwlwifi
$ sudo apt-get update
$ apt download backport-iwlwifi-dkms

$ cd dependencies/
$ apt download build-essential cpp cpp-7 dkms dpkg-dev fakeroot g++ g++-7 gcc gcc-7 gcc-7-base gcc-8-base libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl libasan4 libatomic1 libc-dev-bin libc6-dev libcc1-0 libcilkrts5 libdpkg-perl libfakeroot libgcc-7-dev libgcc1 libgomp1 libitm1 liblsan0 libmpx2 libquadmath0 libstdc++-7-dev libstdc++6 libtsan0 libubsan0 linux-libc-dev make manpages-dev
$ cd ..

$ git clone git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git
```

### Step 2 – Move those downloaded files / folder to your Offline Computer using a USB Flash Drive.


### Step 3 – Install the Dependencies, copy the Iwlwifi Firmware files, and install Backport-Iwlwifi-
```
$ cd backport-iwlwifi-dkms​/
```
~~```$ sudo dpkg -i dependencies/*.deb```~~
This line breaks dependency tree

```
$ sudo dpkg -i dependencies/dkms*
$ sudo cp linux-firmware/iwlwifi-* /lib/firmware/
$ sudo dpkg -i backport-iwlwifi-dkms_8042-0ubuntu2_all.deb
$ sudo update-initramfs -u
```


## To enable Bluetooth
copy latest intel bluetooth firmware 
https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/

For example

```
$ wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/snapshot/linux-firmware-20200122.tar.gz
$ tar -xf linux-firmware-20200122.tar.gz
$ sudo cp -r linux-firmware-20200122/intel/* /lib/firmware/intel
```
