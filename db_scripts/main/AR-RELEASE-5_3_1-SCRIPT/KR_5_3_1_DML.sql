set define off
set sqlblanklines on

drop sequence KRIM_ROLE_PERM_ID_S;


Declare
  nextnum NUMBER;
 BEGIN
  select (MAX(TO_NUMBER(ROLE_PERM_ID))+1) into nextnum from KRIM_ROLE_PERM_T where ROLE_PERM_ID NOT like 'K%';
  execute immediate 'CREATE SEQUENCE "KRIM_ROLE_PERM_ID_S" MINVALUE 1 MAXVALUE 999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

/