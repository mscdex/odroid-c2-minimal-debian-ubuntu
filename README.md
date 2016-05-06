Description
===========

This is a collection of scripts originally from [here](http://forum.odroid.com/viewtopic.php?f=112&t=8075)
that I tweaked to make compatible with the Odroid C2, that are used to build a
minimal Debian/Ubuntu installation.

The changes I've made are mostly limited to the obvious things (CPU arch and
model name changes), but also some (now) irrelevant pieces have been removed,
such as the root deb.odroid.in repo (which does not have arm64 packages) and
various system changes/hacks that either no longer exist with the C2 or are now
handled by the `bootini` package.

**NOTE:** These scripts have not been tested with anything graphical, so I'm not
sure if all of the binary blobs and other such files are all there or not. My
primary use case was server usage where this kind of thing is not really a
concern.
