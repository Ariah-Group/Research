set define off
set sqlblanklines on
spool AR-RELEASE-5_4_0-Upgrade-ORACLE-Install.log


Declare
  nextnum NUMBER;
 BEGIN
  select (MAX(TO_NUMBER(TBN_ID))+1) into nextnum from TBN;
  execute immediate 'CREATE SEQUENCE "SEQ_TBN_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;


commit;
exit
