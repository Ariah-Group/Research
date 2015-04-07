set define off
set sqlblanklines on
spool AR-RELEASE-5_3_1-Upgrade-ORACLE-Install.log


-- convert BUDGET_DETAILS.BUDGET_CATEGORY_CODE from NUMBER to VARCHAR
alter table BUDGET_DETAILS add BUDGET_CATEGORY_CODE varchar2(3);
update BUDGET_DETAILS set BUDGET_CATEGORY_CODE_TEMP=TO_CHAR(BUDGET_CATEGORY_CODE);
alter table BUDGET_DETAILS drop column BUDGET_CATEGORY_CODE;
alter table BUDGET_DETAILS add BUDGET_CATEGORY_CODE varchar2(3);
update BUDGET_DETAILS set BUDGET_CATEGORY_CODE = BUDGET_CATEGORY_CODE_TEMP;

-- person traing enhancement
alter table person_training add constraint FK_PERTRAIN_CODE FOREIGN KEY (TRAINING_CODE) references TRAINING (TRAINING_CODE);


-- Generate new sequence for IRB Protocol Person ID, using max of existing protocol person id's.
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_PERSON_ID),0)+1) into nextnum from PROTOCOL_PERSONS;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_PERSON_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- Generate new sequence for IRB Protocol Research Area, using max of existing protocol research areas.
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(ID),0)+1) into nextnum from PROTOCOL_RESEARCH_AREAS;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_RESRCHAREA_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- Generate new sequence for IRB Protocol Locations, using max of existing protocol locations.
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_LOCATION_ID),0)+1) into nextnum from PROTOCOL_LOCATION;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_LOCATION_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- Generate new sequence for IRB Protocol Notepad, using max of existing protocol notepads.
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_NOTEPAD_ID),0)+1) into nextnum from PROTOCOL_NOTEPAD;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_NOTEPAD_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

commit;
exit
