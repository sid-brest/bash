#!/bin/bash
echo "CentOS is a Linux distribution that provides a free, community-supported computing platform functionally compatible with its upstream source, Red Hat Enterprise Linux (RHEL).
GNU xterm or simply Bash is a Unix shell and command language written by Brian Fox for the GNU Project as a free software replacement for the Bourne shell.
Linux is a family of open source Unix-like operating systems based on the Linux kernel." > sed_task
sed -i -e '/Linux/d' \
       -e's/xterm/Bash/g' \
sed_task     
cat sed_task