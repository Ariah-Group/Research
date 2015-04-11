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

-- Generate new sequence for IRB Protocol Participants (a.k.a. Vulnerable Subjects), using max of existing protocol participants.
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_VULNERABLE_SUB_ID),0)+1) into nextnum from PROTOCOL_VULNERABLE_SUB;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_PARTIC_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;


-- Generate new sequence for IRB Protocol Risk levels, using max of existing protocol risk levels
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_RISK_LEVELS_ID),0)+1) into nextnum from PROTOCOL_RISK_LEVELS;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_RISKLEVEL_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;


-- Generate new sequence for IRB Protocol References, using max of existing protocol references
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_REFERENCE_ID),0)+1) into nextnum from PROTOCOL_REFERENCES;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_REFERENCE_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- Generate new sequence for IRB Protocol Funding Sources, using max of existing protocol funding sources
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_FUNDING_SOURCE_ID),0)+1) into nextnum from PROTOCOL_FUNDING_SOURCE;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_FUNDSRC_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- Generate new sequence for IRB Protocol Special Reviews, using max of existing protocol special reviews
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_SPECIAL_REVIEW_ID),0)+1) into nextnum from PROTOCOL_SPECIAL_REVIEW;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_SPECREV_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- Generate new sequence for IRB Protocol Units, using max of existing protocol Units
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_UNITS_ID),0)+1) into nextnum from PROTOCOL_UNITS;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_UNITS_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- Generate new sequence for IRB Protocol Role Mapping, using max of existing protocol Role Mappings
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(ROLE_MAPPING_ID),0)+1) into nextnum from PROTOCOL_PERSON_ROLE_MAPPING;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_PERROLEMAP_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- module-dsiable feature for funding source type
alter table FUNDING_SOURCE_TYPE add DISABLED_COEUS_MODULE_ID NUMBER;
update FUNDING_SOURCE_TYPE set DISABLED_COEUS_MODULE_ID=0;
update FUNDING_SOURCE_TYPE set DISABLED_COEUS_MODULE_ID=3 where DESCRIPTION='Development Proposal';
update FUNDING_SOURCE_TYPE set DISABLED_COEUS_MODULE_ID=2 where DESCRIPTION='Institutional Proposal';
update FUNDING_SOURCE_TYPE set DISABLED_COEUS_MODULE_ID=1 where DESCRIPTION='Award';




commit;
exit
