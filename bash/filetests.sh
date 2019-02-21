#!/bin/bash
# This script demonstrates file testing

# Test for the existence of the /etc/resolv.conf file
# TASK 1: Add a test to see if the /etc/resolv.conf file is a regular file
# TASK 2: Add a test to see if the /etc/resolv.conf file is a symbolic link
# TASK 3: Add a test to see if the /etc/resolv.conf file is a directory
# TASK 4: Add a test to see if the /etc/resolv.conf file is readable
# TASK 5: Add a test to see if the /etc/resolv.conf file is writable
# TASK 6: Add a test to see if the /etc/resolv.conf file is executable
[ -e /etc/resolv.conf ] && echo "/etc/resolv.conf exists" || echo "/etc/resolv.conf does not exist"

#TASK-1
[ -f /etc/resolv.conf ] && echo "/etc/resolv.conf it is a regular file" || echo "/etc/resolv.conf it is not a reqular file"
#TASK-2
[ -L /etc/resolv.conf ] && echo "/etc/resolv.conf it is a symbolic link" || echo "/etc/resolv.conf it is not a symbolic file"
#TASK-3
[ -d /etc/resolv.conf ] && echo "/etc/resolv.conf it is a directory" || echo "/etc/resolv.conf it is not a directory"
#TASK-4
[ -r /etc/resolv.conf ] && echo "/etc/resolv.conf it is a readable" || echo "/etc/resolv.conf it is not readable"
#TASK-5
[ -w /etc/resolv.conf ] && echo "/etc/resolv.conf it is writable" || echo "/etc/resolv.conf it is not writable"
#TASK-6
[ -x /etc/resolv.conf ] && echo "/etc/resolv.conf it is executable" || echo "/etc/resolv.conf it is not executable"

# Tests if /tmp is a directory
# TASK 4: Add a test to see if the /tmp directory is readable
# TASK 5: Add a test to see if the /tmp directory is writable
# TASK 6: Add a test to see if the /tmp directory can be accessed
[ -d /tmp ] && echo "/tmp is a directory" || echo "/tmp is not a directory"

#TASK-4
[ -r /tmp ] && echo "/tmp it is a readable directory" || echo "/tmp it is not a readable directory"
#TASK-5
[ -w /tmp ] && echo "/tmp it is a writable directory" || echo "/tmp it is not a writable directory"
#TASK-6
[ -x /tmp ] && echo "/tmp it is a accessible directory" || echo "/tmp it is not a accessible directory"
# Tests if one file is newer than another
# TASK 7: Add testing to print out which file newest, or if they are the same age
[ /etc/hosts -nt /etc/resolv.conf ] && echo "/etc/hosts is newer than /etc/resolv.conf"
[ /etc/hosts -ot /etc/resolv.conf ] && echo "/etc/resolv.conf is newer than /etc/hosts"
[ ! /etc/hosts -nt /etc/resolv.conf -a ! /etc/hosts -ot /etc/resolv.conf ] && echo "/etc/hosts is the same age as /etc/resolv.conf"
