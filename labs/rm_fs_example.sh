#!/bin/sh
#  -- DISCLAIMER:
#  -- This script is provided for educational purposes only. It is
#  -- NOT supported by Oracle World Wide Technical Support.
#  -- The script has been tested and appears to work as intended.
#  -- You should always run new scripts on a test instance initially.
#
# Run as: grid OS user
# Deletes SYSTEM data files in ASM file.
#
# Modified by DKK for non-ASM database January 2014
#
# ORACLE_SID=+ASM
# ORAENV_ASK='NO'
# . oraenv
# ORAENV_ASK=''
echo $ORACLE_SID >> /tmp/break.log
# asmcmd rm -f +DATA/ORCL/DATAFILE/EXAMPLE* >> /tmp/break.log
rm -f /u01/app/oracle/oradata/orcl/example01.dbf
exit

