
# =====================================================
# ==== P A R A M E T E R S ============================
# =====================================================

# *****************************************************
# Set hostname, user to be created
# and root and user passwords                         *
# *****************************************************
HOSTNAME="OdroidC2"
USER="odroid"
ROOTPASS="odroid"
USERPASS="odroid"


# *****************************************************
# Set timezone, for default (HOST'S) set _timezone="" *
# *****************************************************
_timezone="Etc/UTC"
#_timezone=""


# *****************************************************
# SET IF YOU WANT TO INSTALL SPECIFIC LANGUAGE,       *
# COMMENT FOR DEFAULT (HOST) settings                 *
# *****************************************************
LANGUAGE="en"
LANG="en_US.UTF-8"


# *****************************************************
# Set the base name of your image.                    *
# Distro name is automaticaty appended, and the image *
# will be "image_name-distro.img"                     *
# --------------------------------------------------- *
# IF image_name="", image file won't be created,      *
# installation will be created in local directories    *
# linux-$distro & boot-$distro                        *
# YOU CAN CREATE THE IMAGE LATER RUNNING:             *
# sudo ./image_from_dir <directory> [yes|no]          *
#      yes|no - create or not ext4 only system        *
# === IT IS THE RECOMMENDED WAY OF IMAGE CREATION === *
# --------------------------------------------------- *
# IF image_name is BLOCK DEVICE (/dev/sdXn)           *
# LINUX filesystem will be created directly on it     *
# Partition must exist !                              *
# IF _format="" partition will NOT be formated        *
# otherwyse it will be formated with specified format *
# *****************************************************
image_name=""
#image_name="mini"
#image_name="/dev/sdX2"


# *****************************************************
# Filesystem type for linux partition                 *
# If btrfs is selectet, partition will be mounted     *
# "compressed" option, you can save some sdcard space *
# *****************************************************
_format="ext4"
#_format="btrfs"


# =====================================================
# IF YOU WANT TO HAVE BOOT FILES ON EXT4 PARTITION    =
# AND NOT ON SEPARATE FAT16 PARTITION                 =
# set  _boot_on_ext4="yes"  and                       =
# FAT partitin won't be created                       =
# =====================================================
_boot_on_ext4="no"


# *****************************************************
# SD Card partitions sizes in MB (1024 * 1024 bytes)  *
# --------------------------------------------------- *
# If creating on physical sdcard (not image) you can  *
# set "linuxsize=0" to use maximum sdcard size        *
# *****************************************************
fatsize=128
linuxsize=800


# *****************************************************
#   Select ubuntu/debian distribution and repository  *
#     === SELECT ONLY ONE distro AND ONE repo ===     *
# *****************************************************

# === Ubuntu ===
distro="xenial"
repo="http://ports.ubuntu.com/ubuntu-ports"

# === Debian ===
#distro="jessie"
#repo="http://ftp.hr.debian.org/debian"


# *****************************************************
# Path to odroid u-boot files                         *
# *****************************************************
BL1="uboot/bl1.bin.hardkernel"
UBOOT="uboot/u-boot.bin"


# ******************************************************
# If creating the image, you can xz compress the image *
# after creation and make the md5sum file              *
# set  _compress="yes"                                 *
# ******************************************************
_compress="yes"


# ^^^^ P A R A M E T E R S ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
