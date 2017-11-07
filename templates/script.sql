shu immediate

startup mount;

alter system enable restricted session;

alter database open;

alter database character set internal_use CL8MSWIN1251;

alter system set sec_case_sensitive_logon=false;

alter profile default limit password_life_time unlimited;

alter profile default limit failed_login_attempts unlimited;

alter system set event="28131 trace name context forever" scope=spfile;

shu immediate

startup

exit

