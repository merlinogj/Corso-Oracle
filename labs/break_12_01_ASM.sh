#!/bin/sh
#  -- DISCLAIMER:
#  -- This script is provided for educational purposes only. It is
#  -- NOT supported by Oracle World Wide Technical Support.
#  -- The script has been tested and appears to work as intended.
#  -- You should always run new scripts on a test instance initially.
#
# Written by Jim Spiller, Modified for 12c by MBillings

. $LABS/set_db.sh > /tmp/break.log

# Shutdown the database abort
srvctl stop database -d orcl -o abort
sleep 10
echo 'ORCL should not be listed:'   >>/tmp/break.log
pgrep -lf pmon >>/tmp/break.log

# delete the SPFILE from ASM
su - grid -c $LABS/rm_asm_spfile.sh >> /tmp/break.log
echo 'Issue created.'  >> /tmp/break.log

exit
