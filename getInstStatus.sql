SET LINES 165 
SET PAGES 9999
SET TIMI ON
SET TIME ON
SET LONG 100000
SET FEEDBACK on
SET SERVEROUTPUT ON SIZE UNLIMITED

COL I_NUM FOR '999'
COL I_NAME FOR A10
COL HOSTNAME FOR A30
COL VERSION FOR A10
COL STATUS FOR A8
COL IN_SHUTDWN FOR A10
COL DB_STATS FOR A10

select INSTANCE_NUMBER as "I_NUM", INSTANCE_NAME as "I_NAME", HOST_NAME as "HOSTNAME", 
	VERSION, TO_CHAR(STARTUP_TIME, 'DD/MM/YYYY HH24:MI') as "STARTUP", STATUS, 
	SHUTDOWN_PENDING as "IN_SHUTDWN", DATABASE_STATUS as "DB_STATS", LOGINS
from gv$instance
;
