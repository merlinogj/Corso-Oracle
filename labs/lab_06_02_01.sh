#!/bin/sh
#  -- DISCLAIMER:
#  -- This script is provided for educational purposes only. It is
#  -- NOT supported by Oracle World Wide Technical Support.
#  -- The script has been tested and appears to work as intended.
#  -- You should always run new scripts on a test instance initially.
#
#
cd $LABS
. $LABS/set_db.sh

sqlplus /nolog <<EOF
connect / as sysdba

DROP TABLESPACE INVENTORY INCLUDING CONTENTS and DATAFILES;

CREATE SMALLFILE TABLESPACE "INVENTORY"
 DATAFILE '/u01/backup/orcl/inventory01.dbf' SIZE 30M,
          '/u01/app/oracle/oradata/inventory02.dbf' size 40M REUSE
 AUTOEXTEND ON NEXT 1M MAXSIZE UNLIMITED LOGGING
 EXTENT MANAGEMENT LOCAL SEGMENT SPACE MANAGEMENT AUTO;

drop user inventory cascade;

create user inventory identified by oracle_4U
default tablespace inventory;

grant connect, resource to inventory;
ALTER USER inventory QUOTA UNLIMITED ON INVENTORY;

exit;
EOF


sqlplus / as sysdba <<EOF

CREATE TABLE INVENTORY.PRODUCT_MASTER 
( PRODUCT_ID NUMBER(7)
, PRODUCT_NAME VARCHAR2(50) NOT NULL 
, CODE VARCHAR2(10) NOT NULL 
, REORDER_THRESHOLD NUMBER(5)
, COST NUMBER(5, 2)
, PRICE NUMBER(5, 2)
, CONSTRAINT PK_INV PRIMARY KEY (PRODUCT_ID) VALIDATE ,
CONSTRAINT CHK_GT_0 CHECK (reorder_threshold > 0) VALIDATE ) TABLESPACE INVENTORY;

CREATE TABLE INVENTORY.PRODUCT_ON_HAND
(
WAREHOUSE_ID NUMBER(3),
PRODUCT_ID NUMBER(7),
QUANTITY NUMBER(5),
WAREHOUSE_CITY VARCHAR2(30),
LAST_UPDATE DATE,
  CONSTRAINT PK_POH 
    PRIMARY KEY (WAREHOUSE_ID, PRODUCT_ID) VALIDATE,
  CONSTRAINT FK_PROD_ON_HAND_PROD_ID
    FOREIGN KEY (PRODUCT_ID) REFERENCES
      INVENTORY.PRODUCT_MASTER (PRODUCT_ID) VALIDATE
);

CREATE TABLE INVENTORY.OBSOLETE_PRODUCTS 
AS select product_id, product_name, code, cost, price
from inventory.product_master;

CREATE INDEX INVENTORY.OBS_CODE ON INVENTORY.OBSOLETE_PRODUCTS (CODE);

create index inventory.prod_name_code
on inventory.product_master(product_name,code);

create index inventory.poh_prod_id_qty on
inventory.product_on_hand(product_id, quantity);


set echo on
alter table inventory.product_master nologging
/
insert /*+ append */ into INVENTORY.PRODUCT_MASTER
select
100000 + rownum,
'NAME' || dbms_random.string('a',mod(abs(dbms_random.random),30) + 16),
dbms_random.string('a',10),
mod(abs(dbms_random.random),1000) + 100,
25.25,
50.88
from dba_objects
/
commit
/
insert /*+ append */ into inventory.product_master
select
200000 + rownum,
'NAME' || dbms_random.string('a',mod(abs(dbms_random.random),30) + 16),
dbms_random.string('a',10),
mod(abs(dbms_random.random),1000) + 100,
25.25,
50.88
from dba_objects
/
commit
/
insert /*+ append */ into inventory.product_master
select
300000 + rownum,
'NAME' || dbms_random.string('a',mod(abs(dbms_random.random),30) + 16),
dbms_random.string('a',10),
mod(abs(dbms_random.random),1000) + 100,
25.25,
50.88
from dba_objects
/
commit
/
alter table inventory.product_master logging
/

create index inventory.code_func on inventory.product_master (upper(substr(code,5,2)));

alter table inventory.product_master add (primary_source varchar2(50), secondary_source varchar2(50));

alter table inventory.product_master add (obsoleted date);


quit
EOF
exit
