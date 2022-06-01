
set serveroutput on

set timing on;
--set echo off;
set echo on;

prompt "Starting Master.sql";
column date_column new_value today_var

select to_char(current_timestamp, 'mmddyyyy_HH24MISS') as date_column from dual;

select current_timestamp from dual;

SPOOL 'C:\temp\Oracle_Scripts_2022\Demo\logs\Master_&today_var..log';

prompt "Starting Excel_PLSQL_Scripts_05292022.sql";

@C:\temp\Oracle_Scripts_2022\Demo\Excel_PLSQL_Scripts_05292022.sql;

prompt "Starting Excel_PLSQL_data_05292022.sql";

@C:\temp\Oracle_Scripts_2022\Demo\Excel_PLSQL_data_05292022.sql;

prompt "End of Master.sql";


spool off;
