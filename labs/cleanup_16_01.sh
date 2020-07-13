#!/bin/sh
#  -- DISCLAIMER:
#  -- This script is provided for educational purposes only. It is
#  -- NOT supported by Oracle World Wide Technical Support.
#  -- The script has been tested and appears to work as intended.
#  -- You should always run new scripts on a test instance initially.
#  -- Run as ORACLE OS user

#  -- rman target / > /tmp/cleanup.log 2>&1 <<EOF
#  -- delete NOPROMPT copy of tablespace bartbs;
#  -- exit;
#  -- EOF

. $LABS/set_db.sh > /tmp/cleanup.log
sqlplus -S /nolog >> /tmp/cleanup.log 2>&1 <<EOF
connect / as sysdba

-- CLEANUP from previous run
DROP USER bar CASCADE;
DROP TABLESPACE bartbs INCLUDING CONTENTS AND DATAFILES;
EXIT;
EOF

. $LABS/set_rcat.sh >> /tmp/cleanup.log
sqlplus -S /nolog >> /tmp/cleanup.log 2>&1 <<EOF
connect / as sysdba

-- CLEANUP from previous run
DROP USER bar CASCADE;
DROP TABLESPACE bartbs INCLUDING CONTENTS AND DATAFILES;
EXIT;
EOF

rm -f /u01/backup/test.dmp
rm -f /u01/backup/test.bck
echo 'Cleanup complete.' >> /tmp/cleanup.log