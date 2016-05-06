**********************************************
Scripts to install Ubuntu/Debian for Odroid-C2
**********************************************

Tested on Ubuntu xenial host.
-----------------------------------------------

You need to install following packages on your machine:

sudo apt-get install debootstrap qemu-user-static

Edit "params.sh" file to configure installer to your needs.

View "params.sh" and script comments for more details.

============================================================================================
Script create minimal system whitch can be the base for installing server or desktop system.
============================================================================================


****************************
* RESIZING ROOT PARTITION: *
****************************

run:
sudo fs_resize
