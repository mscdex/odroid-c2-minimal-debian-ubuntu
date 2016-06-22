
echo "Creating \"boot.ini\""

cat > $_bootd << _EOF_
ODROIDC2-UBOOT-CONFIG

# Possible screen resolutions
# Uncomment only a single Line! The line with setenv written.
# At least one mode must be selected.

# 480 Lines (720x480)
# setenv m "480i60hz" # Interlaced 60Hz
# setenv m "480i_rpt" # Interlaced for Rear Projection Televisions 60Hz
# setenv m "480p60hz" # 480 Progressive 60Hz
# setenv m "480p_rpt" # 480 Progressive for Rear Projection Televisions 60Hz

# 576 Lines (720x576)
# setenv m "576i50hz" # Interlaced 50Hz
# setenv m "576i_rpt" # Interlaced for Rear Projection Televisions 50Hz
# setenv m "576p50hz" # Progressive 50Hz
# setenv m "576p_rpt" # Progressive for Rear Projection Televisions 50Hz

# 720 Lines (1280x720)
# setenv m "720p50hz" # 50Hz
# setenv m "720p60hz" # 60Hz

# 1080 Lines (1920x1080)
# setenv m "1080i60hz" # Interlaced 60Hz
setenv m "1080p60hz" # Progressive 60Hz
# setenv m "1080i50hz" # Interlaced 50Hz
# setenv m "1080p50hz" # Progressive 50Hz
# setenv m "1080p24hz" # Progressive 24Hz

# 4K (3840x2160)
# setenv m "2160p30hz"    # Progressive 30Hz
# setenv m "2160p25hz"    # Progressive 25Hz
# setenv m "2160p24hz"    # Progressive 24Hz
# setenv m "smpte24hz"    # Progressive 24Hz SMPTE
# setenv m "2160p50hz"    # Progressive 50Hz
# setenv m "2160p60hz"    # Progressive 60Hz
# setenv m "2160p50hz420" # Progressive 50Hz with YCbCr 4:2:0 (Requires TV/Monitor that supports it)
# setenv m "2160p60hz420" # Progressive 60Hz with YCbCr 4:2:0 (Requires TV/Monitor that supports it)

### VESA modes ###
# setenv m "640x480p60hz"
# setenv m "800x480p60hz"
# setenv m "800x600p60hz"
# setenv m "1024x600p60hz"
# setenv m "1024x768p60hz"  
# setenv m "1280x800p60hz"
# setenv m "1280x1024p60hz"
# setenv m "1360x768p60hz"
# setenv m "1440x900p60hz"
# setenv m "1600x900p60hz"
# setenv m "1680x1050p60hz"
# setenv m "1920x1200p60hz"


# HDMI BPP Mode
setenv m_bpp "32"
# setenv m_bpp "24"
# setenv m_bpp "16"

# HDMI DVI/VGA modes
# Uncomment only a single Line! The line with setenv written.
# At least one mode must be selected.
# setenv vout "dvi"
# setenv vout "vga"
setenv vout "hdmi"

# HDMI HotPlug Detection control
# Allows you to force HDMI thinking that the cable is connected.
# true = HDMI will believe that cable is always connected
# false = will let board/monitor negotiate the connection status
setenv hpd "true"
# setenv hpd "false"

# Default Console Device Setting
setenv condev "console=ttyS0,115200n8 console=tty0"   # on both

# Meson Timer
# 1 - Meson Timer
# 0 - Arch Timer 
# Using meson_timer improves the video playback whoever it breaks KVM (virtualization).
# Using arch timer allows KVM/Virtualization to work however you'll experience poor video
setenv mesontimer "1"

# Server Mode (aka. No Graphics)
# Setting nographics to 1 will disable all video subsystem
# This mode is ideal of server type usage. (Saves ~300Mb of RAM)
setenv nographics "0"

# Set Linux partition UUID
setenv linuuid "$ext4uuid"

###########################################

# Boot Arguments
setenv bootargs "root=UUID=\${linuuid} rootwait ro \${condev} no_console_suspend hdmimode=\${m} m_bpp=\${m_bpp} vout=\${vout} fsck.repair=yes net.ifnames=0 elevator=noop disablehpd=\${hpd}"

# Booting
setenv loadaddr "0x11000000"
setenv dtb_loadaddr "0x1000000"
setenv initrd_loadaddr "0x13000000"

$_ul1
$_ul2
$_ul3
fdt addr \${dtb_loadaddr}

if test "\${mesontimer}" = "0"; then fdt rm /meson_timer; fdt rm /cpus/cpu@0/timer; fdt rm /cpus/cpu@1/timer; fdt rm /cpus/cpu@2/timer; fdt rm /cpus/cpu@3/timer; fi
if test "\${mesontimer}" = "1"; then fdt rm /timer; fi
if test "\${nographics}" = "1"; then fdt rm /reserved-memory; fdt rm /aocec; fi


booti \${loadaddr} \${initrd_loadaddr} \${dtb_loadaddr}
_EOF_
