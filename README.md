# Corso-Oracle
## Accesso LAB studenti:
Nel foglio excel trovate le indicazioni per l'accesso ai labs.

https://cedelcloud-my.sharepoint.com/:x:/g/personal/m_francesca_elis_org/EaXESZWTU7BLs1D4BMU1acAB78QKnzipy6uCBeGgdAldgg?e=I7hmdc

### Client HTML5

la username e la password dell'utente amministratore della macchina è **student**

- Per entrare nella bash shell dell'istanza Oracle digitate **oracle**
```
student@VM1:~$ oracle
[oracle@VM1 /]$
```

Nel caso di messaggio d'errore:
```
student@VM1:~$ oracle
Error response from daemon: Container adaea30a915b8ffe16ffc7548c3bb6b0529bead3a0013e767d1b61d8973905af is not running
```
- Per fare lo start dell'istanza Oracle digitate da shell **start**
- Per fare il restart dell'instanza Oracle digitare **restart**

## Accesso al Database:

L'instanza Oracle è composta da un root container Database **ORCLCDB** ed un Pluggable Database **ORCLPDB1**

- username: **sys**
- role: **sysdba**
- password: **Oradoc_db1**
- SERVICE_NAME: **ORCLCDB** o **ORCLPDB1**
- domain: **localdomain**

## Usare un client esterno (sqlplus o SQLdeveloper) per connettersi
```
student@VM1:~$ sqlplus sys/Oradoc_db1@ORCLCDB as sysdba
```
### accedere allo schema hr nel pluggable ORCLPDB1
```
student@VM1:~$ oracle
[oracle@VM1 /]$ sqlplus hr/hr@ORCLPDB1

SQL*Plus: Release 12.2.0.1.0 Production on Sat Jul 11 07:58:59 2020

Copyright (c) 1982, 2016, Oracle.  All rights reserved.

Last Successful login time: Fri Jul 10 2020 20:53:11 +00:00

Connected to:
Oracle Database 12c Enterprise Edition Release 12.2.0.1.0 - 64bit Production

SQL>

```
### accedere come sysdba nel pluggable  ORCLPDB1
```
student@VM1:~$ sqlplus sys/Oradoc_db1@ORCLPDB1 as sysdba
```

## Come creare il connettore TNS per accedere dal client ``sqlplus`` a linea di comando

E' possibile accedere tramite **sqlplus** specificando **@<SERVICE_NAME>** creando il file  ``tnsnames.ora`` e farlo puntare dalla vatiabile ambientale **TNS_ADMIN**.

### creare il file **tnsnames.ora** in ``/home/student/``
```
ORCLCDB=(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=127.0.1.1)(PORT=1521))
    (CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=ORCLCDB.localdomain)))
ORCLPDB1=(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=127.0.1.1)(PORT=1521))
    (CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=ORCLPDB1.localdomain)))
```
### esportare la variabile TNS_ADMIN e renderla persistente
```
$ echo 'export TNS_ADMIN=/home/student/' >> .bashrc
```
### Copiare directory labs
```
cd
git clone  https://github.com/merlinogj/Corso-Oracle.git 
mv Corso-Oracle/labs/ labs/
sudo apt install openssh-server
```
