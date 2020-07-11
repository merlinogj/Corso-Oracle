# Corso-Oracle
## Accesso LAB studenti:
Nel foglio excel trovate le indicazioni per l'accesso ai labs.

https://cedelcloud-my.sharepoint.com/:x:/g/personal/m_francesca_elis_org/EaXESZWTU7BLs1D4BMU1acAB78QKnzipy6uCBeGgdAldgg?e=I7hmdc

la username e la password dell'utente amministratore della macchina è **student**

Per fare lo start dell'istanza Oracle digitate da shell **start**

Per entrare nella bash shell dell'istanza Oracle digitate **oracle**

Per fare il restart dell'instanza Oracle digitare **restart**

## Accesso al Database:

L'instanza Oracle è composta da un root container Database **ORCLCDB** ed un Pluggable Database **ORCLPDB1**

- username: sys
- role: sysdba
- password: Oradoc_db1
-

## da un client esterno (sqlplus o SQLdeveloper) per connettersi
```
$ sqlplus sys/Oradoc_db1@ORCLCDB as sysdba
```

## Come creare il connettore TNS per accedere dal client a linea di comando

Using this <mapped host port> and <ip-address of host> create tnsnames.ora in the directory pointed to by environment variable TNS_ADMIN.

### creare il file **tnsnames.ora** in /home/student/
```
ORCLCDB=(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1521))
    (CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=ORCLCDB.localdomain)))
ORCLPDB1=(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1521))
    (CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=ORCLPDB1.localdomain)))
```
### esportare la variabile TNS_ADMIN e renderla persistente
```
$ echo 'export TNS_ADMIN=/home/student/' >> .bashrc
```
