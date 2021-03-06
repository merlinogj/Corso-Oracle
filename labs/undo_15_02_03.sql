-- DISCLAIMER:
-- This script is provided for educational purposes only. It is 
-- NOT supported by Oracle World Wide Technical Support.
-- The script has been tested and appears to work as intended.
-- You should always run new scripts on a test instance initially.

-- This reverses the updates of the lab_15_02_03.sql file 
--   which is part of the flashback practice.

drop trigger HR.UPDATE_JOB_HISTORY;

UPDATE HR.EMPLOYEES set department_id = 60
   where job_id = 'IT_PROG'
/
commit;
UPDATE HR.EMPLOYEES set SALARY =24000
   WHERE EMPLOYEE_ID = 100;
UPDATE HR.EMPLOYEES set SALARY =17000
   WHERE EMPLOYEE_ID = 101;
UPDATE HR.EMPLOYEES set SALARY =17000
   WHERE EMPLOYEE_ID = 102;
UPDATE HR.EMPLOYEES set SALARY =12008
   WHERE EMPLOYEE_ID = 108;
UPDATE HR.EMPLOYEES set SALARY =9000
   WHERE EMPLOYEE_ID = 109;
UPDATE HR.EMPLOYEES set SALARY =8200
   WHERE EMPLOYEE_ID = 110;
UPDATE HR.EMPLOYEES set SALARY =7700
   WHERE EMPLOYEE_ID = 111;
UPDATE HR.EMPLOYEES set SALARY =7800
   WHERE EMPLOYEE_ID = 112;
UPDATE HR.EMPLOYEES set SALARY =6900
   WHERE EMPLOYEE_ID = 113;
UPDATE HR.EMPLOYEES set SALARY =11000
   WHERE EMPLOYEE_ID = 114;
commit;
UPDATE HR.EMPLOYEES set SALARY =3100
   WHERE EMPLOYEE_ID = 115;
UPDATE HR.EMPLOYEES set SALARY =2900
   WHERE EMPLOYEE_ID = 116;
UPDATE HR.EMPLOYEES set SALARY =2800
   WHERE EMPLOYEE_ID = 117;
UPDATE HR.EMPLOYEES set SALARY =2600
   WHERE EMPLOYEE_ID = 118;
UPDATE HR.EMPLOYEES set SALARY =2500
   WHERE EMPLOYEE_ID = 119;
UPDATE HR.EMPLOYEES set SALARY =8000
   WHERE EMPLOYEE_ID = 120;
UPDATE HR.EMPLOYEES set SALARY =8200
   WHERE EMPLOYEE_ID = 121;
UPDATE HR.EMPLOYEES set SALARY =7900
   WHERE EMPLOYEE_ID = 122;
UPDATE HR.EMPLOYEES set SALARY =6500
   WHERE EMPLOYEE_ID = 123;
UPDATE HR.EMPLOYEES set SALARY =5800
   WHERE EMPLOYEE_ID = 124;
commit;
UPDATE HR.EMPLOYEES set SALARY =3200
   WHERE EMPLOYEE_ID = 125;
UPDATE HR.EMPLOYEES set SALARY =2700
   WHERE EMPLOYEE_ID = 126;
UPDATE HR.EMPLOYEES set SALARY =2400
   WHERE EMPLOYEE_ID = 127;
UPDATE HR.EMPLOYEES set SALARY =2200
   WHERE EMPLOYEE_ID = 128;
UPDATE HR.EMPLOYEES set SALARY =3300
   WHERE EMPLOYEE_ID = 129;
UPDATE HR.EMPLOYEES set SALARY =2800
   WHERE EMPLOYEE_ID = 130;
UPDATE HR.EMPLOYEES set SALARY =2500
   WHERE EMPLOYEE_ID = 131;
UPDATE HR.EMPLOYEES set SALARY =2100
   WHERE EMPLOYEE_ID = 132;
UPDATE HR.EMPLOYEES set SALARY =3300
   WHERE EMPLOYEE_ID = 133;
UPDATE HR.EMPLOYEES set SALARY =2900
   WHERE EMPLOYEE_ID = 134;
commit;
UPDATE HR.EMPLOYEES set SALARY =2400
   WHERE EMPLOYEE_ID = 135;
UPDATE HR.EMPLOYEES set SALARY =2200
   WHERE EMPLOYEE_ID = 136;
UPDATE HR.EMPLOYEES set SALARY =3600
   WHERE EMPLOYEE_ID = 137;
UPDATE HR.EMPLOYEES set SALARY =3200
   WHERE EMPLOYEE_ID = 138;
UPDATE HR.EMPLOYEES set SALARY =2700
   WHERE EMPLOYEE_ID = 139;
UPDATE HR.EMPLOYEES set SALARY =2500
   WHERE EMPLOYEE_ID = 140;
UPDATE HR.EMPLOYEES set SALARY =3500
   WHERE EMPLOYEE_ID = 141;
UPDATE HR.EMPLOYEES set SALARY =3100
   WHERE EMPLOYEE_ID = 142;
UPDATE HR.EMPLOYEES set SALARY =2600
   WHERE EMPLOYEE_ID = 143;
UPDATE HR.EMPLOYEES set SALARY =2500
   WHERE EMPLOYEE_ID = 144;
commit;
UPDATE HR.EMPLOYEES set SALARY =14000
   WHERE EMPLOYEE_ID = 145;
UPDATE HR.EMPLOYEES set SALARY =13500
   WHERE EMPLOYEE_ID = 146;
UPDATE HR.EMPLOYEES set SALARY =12000
   WHERE EMPLOYEE_ID = 147;
UPDATE HR.EMPLOYEES set SALARY =11000
   WHERE EMPLOYEE_ID = 148;
UPDATE HR.EMPLOYEES set SALARY =10500
   WHERE EMPLOYEE_ID = 149;
UPDATE HR.EMPLOYEES set SALARY =10000
   WHERE EMPLOYEE_ID = 150;
UPDATE HR.EMPLOYEES set SALARY =9500
   WHERE EMPLOYEE_ID = 151;
UPDATE HR.EMPLOYEES set SALARY =9000
   WHERE EMPLOYEE_ID = 152;
UPDATE HR.EMPLOYEES set SALARY =8000
   WHERE EMPLOYEE_ID = 153;
UPDATE HR.EMPLOYEES set SALARY =7500
   WHERE EMPLOYEE_ID = 154;
commit;
UPDATE HR.EMPLOYEES set SALARY =7000
   WHERE EMPLOYEE_ID = 155;
UPDATE HR.EMPLOYEES set SALARY =10000
   WHERE EMPLOYEE_ID = 156;
UPDATE HR.EMPLOYEES set SALARY =9500
   WHERE EMPLOYEE_ID = 157;
UPDATE HR.EMPLOYEES set SALARY =9000
   WHERE EMPLOYEE_ID = 158;
UPDATE HR.EMPLOYEES set SALARY =8000
   WHERE EMPLOYEE_ID = 159;
UPDATE HR.EMPLOYEES set SALARY =7500
   WHERE EMPLOYEE_ID = 160;
UPDATE HR.EMPLOYEES set SALARY =7000
   WHERE EMPLOYEE_ID = 161;
UPDATE HR.EMPLOYEES set SALARY =10500
   WHERE EMPLOYEE_ID = 162;
UPDATE HR.EMPLOYEES set SALARY =9500
   WHERE EMPLOYEE_ID = 163;
UPDATE HR.EMPLOYEES set SALARY =7200
   WHERE EMPLOYEE_ID = 164;
commit;
UPDATE HR.EMPLOYEES set SALARY =6800
   WHERE EMPLOYEE_ID = 165;
UPDATE HR.EMPLOYEES set SALARY =6400
   WHERE EMPLOYEE_ID = 166;
UPDATE HR.EMPLOYEES set SALARY =6200
   WHERE EMPLOYEE_ID = 167;
UPDATE HR.EMPLOYEES set SALARY =11500
   WHERE EMPLOYEE_ID = 168;
UPDATE HR.EMPLOYEES set SALARY =10000
   WHERE EMPLOYEE_ID = 169;
UPDATE HR.EMPLOYEES set SALARY =9600
   WHERE EMPLOYEE_ID = 170;
UPDATE HR.EMPLOYEES set SALARY =7400
   WHERE EMPLOYEE_ID = 171;
UPDATE HR.EMPLOYEES set SALARY =7300
   WHERE EMPLOYEE_ID = 172;
UPDATE HR.EMPLOYEES set SALARY =6100
   WHERE EMPLOYEE_ID = 173;
UPDATE HR.EMPLOYEES set SALARY =11000
   WHERE EMPLOYEE_ID = 174;
commit;
UPDATE HR.EMPLOYEES set SALARY =8800
   WHERE EMPLOYEE_ID = 175;
UPDATE HR.EMPLOYEES set SALARY =8600
   WHERE EMPLOYEE_ID = 176;
UPDATE HR.EMPLOYEES set SALARY =8400
   WHERE EMPLOYEE_ID = 177;
UPDATE HR.EMPLOYEES set SALARY =7000
   WHERE EMPLOYEE_ID = 178;
UPDATE HR.EMPLOYEES set SALARY =6200
   WHERE EMPLOYEE_ID = 179;
UPDATE HR.EMPLOYEES set SALARY =3200
   WHERE EMPLOYEE_ID = 180;
UPDATE HR.EMPLOYEES set SALARY =3100
   WHERE EMPLOYEE_ID = 181;
UPDATE HR.EMPLOYEES set SALARY =2500
   WHERE EMPLOYEE_ID = 182;
UPDATE HR.EMPLOYEES set SALARY =2800
   WHERE EMPLOYEE_ID = 183;
UPDATE HR.EMPLOYEES set SALARY =4200
   WHERE EMPLOYEE_ID = 184;
commit;
UPDATE HR.EMPLOYEES set SALARY =4100
   WHERE EMPLOYEE_ID = 185;
UPDATE HR.EMPLOYEES set SALARY =3400
   WHERE EMPLOYEE_ID = 186;
UPDATE HR.EMPLOYEES set SALARY =3000
   WHERE EMPLOYEE_ID = 187;
UPDATE HR.EMPLOYEES set SALARY =3800
   WHERE EMPLOYEE_ID = 188;
UPDATE HR.EMPLOYEES set SALARY =2600
   WHERE EMPLOYEE_ID = 189;
UPDATE HR.EMPLOYEES set SALARY =2900
   WHERE EMPLOYEE_ID = 190;
UPDATE HR.EMPLOYEES set SALARY =2500
   WHERE EMPLOYEE_ID = 191;
UPDATE HR.EMPLOYEES set SALARY =4000
   WHERE EMPLOYEE_ID = 192;
UPDATE HR.EMPLOYEES set SALARY =3900
   WHERE EMPLOYEE_ID = 193;
UPDATE HR.EMPLOYEES set SALARY =3200
   WHERE EMPLOYEE_ID = 194;
commit;
UPDATE HR.EMPLOYEES set SALARY =2800
   WHERE EMPLOYEE_ID = 195;
UPDATE HR.EMPLOYEES set SALARY =3100
   WHERE EMPLOYEE_ID = 196;
UPDATE HR.EMPLOYEES set SALARY =3000
   WHERE EMPLOYEE_ID = 197;
UPDATE HR.EMPLOYEES set SALARY =2600
   WHERE EMPLOYEE_ID = 198;
UPDATE HR.EMPLOYEES set SALARY =2600
   WHERE EMPLOYEE_ID = 199;
UPDATE HR.EMPLOYEES set SALARY =4400
   WHERE EMPLOYEE_ID = 200;
UPDATE HR.EMPLOYEES set SALARY =13000
   WHERE EMPLOYEE_ID = 201;
UPDATE HR.EMPLOYEES set SALARY =6000
   WHERE EMPLOYEE_ID = 202;
UPDATE HR.EMPLOYEES set SALARY =6500
   WHERE EMPLOYEE_ID = 203;
UPDATE HR.EMPLOYEES set SALARY =10000
   WHERE EMPLOYEE_ID = 204;
UPDATE HR.EMPLOYEES set SALARY =12008
   WHERE EMPLOYEE_ID = 205;
UPDATE HR.EMPLOYEES set SALARY =8300
   WHERE EMPLOYEE_ID = 206;
commit;