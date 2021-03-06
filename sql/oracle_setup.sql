create user test identified by test default tablespace users temporary tablespace temp quota unlimited on users;
grant connect to test;
grant create table to test;
create table t as select rownum id from dual connect by level <= 3;
alter table t add constraint t_pk primary key (id);
