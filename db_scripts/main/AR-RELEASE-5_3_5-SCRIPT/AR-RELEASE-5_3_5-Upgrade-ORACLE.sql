set define off
set sqlblanklines on
spool AR-RELEASE-5_3_5-Upgrade-ORACLE-Install.log





-- add a single column primary key to the UNIT_ADMINISTRATOR table while removing the 3-part primary to enable EDIT of a Unit Admin record
CREATE SEQUENCE "SEQ_UNIT_ADMINISTRATOR_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;

alter table UNIT_ADMINISTRATOR add ( UNIT_ADMINISTRATOR_ID NUMBER ); 

UPDATE UNIT_ADMINISTRATOR set UNIT_ADMINISTRATOR_ID=SEQ_UNIT_ADMINISTRATOR_ID.nextval;

ALTER TABLE UNIT_ADMINISTRATOR drop constraint UNIT_ADMINISTRATORP1;

ALTER TABLE UNIT_ADMINISTRATOR add constraint PK_UNIT_ADMINISTRATOR_ID PRIMARY KEY (UNIT_ADMINISTRATOR_ID);

ALTER TABLE UNIT_ADMINISTRATOR ADD CONSTRAINT UNQ_UNITADMINRECORD UNIQUE (UNIT_NUMBER,PERSON_ID,UNIT_ADMINISTRATOR_TYPE_CODE);


-- add new neg agree types, RES-472
Insert into NEGOTIATION_AGREEMENT_TYPE (NEGOTIATION_AGRMNT_TYPE_ID,NEGOTIATION_AGRMNT_TYPE_CODE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,ACTV_IND) values (4,'MOU','Memo of Understanding',sysdate,'admin',0,sys_guid(),'Y');
Insert into NEGOTIATION_AGREEMENT_TYPE (NEGOTIATION_AGRMNT_TYPE_ID,NEGOTIATION_AGRMNT_TYPE_CODE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,ACTV_IND) values (5,'TA','Teaming Agreement',sysdate,'admin',0,sys_guid(),'Y');




CREATE SEQUENCE "SEQ_EPS_PROP_CHANGED_DATA_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;


alter table EPS_PROP_CHANGED_DATA MODIFY COLUMN_NAME VARCHAR2(150);

alter table EPS_PROP_CHANGED_DATA ADD DISPLAY_VALUE_TEMP CLOB;
update EPS_PROP_CHANGED_DATA set DISPLAY_VALUE_TEMP = DISPLAY_VALUE;
alter table EPS_PROP_CHANGED_DATA DROP COLUMN DISPLAY_VALUE;
alter table EPS_PROP_CHANGED_DATA ADD DISPLAY_VALUE CLOB;
update EPS_PROP_CHANGED_DATA set DISPLAY_VALUE = DISPLAY_VALUE_TEMP;
alter table EPS_PROP_CHANGED_DATA DROP COLUMN DISPLAY_VALUE_TEMP;

alter table EPS_PROP_CHANGED_DATA ADD OLD_DISPLAY_VALUE_TEMP CLOB;
update EPS_PROP_CHANGED_DATA set OLD_DISPLAY_VALUE_TEMP = OLD_DISPLAY_VALUE;
alter table EPS_PROP_CHANGED_DATA DROP COLUMN OLD_DISPLAY_VALUE;
alter table EPS_PROP_CHANGED_DATA ADD OLD_DISPLAY_VALUE CLOB;
update EPS_PROP_CHANGED_DATA set OLD_DISPLAY_VALUE = OLD_DISPLAY_VALUE_TEMP;
alter table EPS_PROP_CHANGED_DATA DROP COLUMN OLD_DISPLAY_VALUE_TEMP;

alter table EPS_PROP_CHANGED_DATA ADD CHANGED_DATA_ID NUMBER;
update EPS_PROP_CHANGED_DATA set CHANGED_DATA_ID = SEQ_EPS_PROP_CHANGED_DATA_ID.nextval;
alter table EPS_PROP_CHANGED_DATA MODIFY COLUMN CHANGED_DATA_ID NUMBERNOT NULL ENABLE;
ALTER TABLE EPS_PROP_CHANGED_DATA drop constraint EPS_PROP_CHANGED_DATAP1;
ALTER TABLE EPS_PROP_CHANGED_DATA add constraint EPS_PROP_CHANGED_DATAP1 PRIMARY KEY (CHANGED_DATA_ID);

CREATE INDEX "IDX_EPSPROPCHANGED_PROPNUM" ON "EPS_PROP_CHANGED_DATA" ("PROPOSAL_NUMBER");


INSERT INTO notification_type (NOTIFICATION_TYPE_ID,MODULE_CODE,ACTION_CODE,DESCRIPTION,SUBJECT,MESSAGE,PROMPT_USER,SEND_NOTIFICATION,UPDATE_USER,UPDATE_TIMESTAMP,VER_NBR,OBJ_ID) 
VALUES (SEQ_NOTIFICATION_TYPE_ID.nextval,3,'104','When any data changes in development proposal','Ariah Research Notification - Proposal Data Updates Tracking','The following Development Proposal has been updated as summarized below. Please see the Proposal Summary tab for more information.<br/> Changes by {USER_FULLNAME} at {SEND_TIME} <br/> <br/>Proposal Number : {PROPOSAL_NUMBER}<br/>Proposal Title : {PROPOSAL_TITLE}<br/>Sponsor : {SPONSOR_NAME}<br/>PI : {PI_NAME}<br/><br/>{CHANGE_COMMENTS}','Y','Y','admin',sysdate,1,sys_guid());



CREATE INDEX "IDX_REV_ATTACH_ONLN_FK" ON "REVIEWER_ATTACHMENTS" ("PROTOCOL_ONLN_RVW_FK");
CREATE INDEX "IDX_REV_ATTACH_PROT_FK" ON "REVIEWER_ATTACHMENTS" ("PROTOCOL_ID_FK");
CREATE INDEX "IDX_REV_ATTACH_SUBM_FK" ON "REVIEWER_ATTACHMENTS" ("SUBMISSION_ID_FK");
CREATE INDEX "IDX_REV_ATTACH_PERS_FK" ON "REVIEWER_ATTACHMENTS" ("PERSON_ID");


CREATE INDEX "IDX_IRBPROT_REVS_PROTID_FK" ON "PROTOCOL_REVIEWERS" ("PROTOCOL_ID");
CREATE INDEX "IDX_IRBPROT_REVS_SUBMISID_FK" ON "PROTOCOL_REVIEWERS" ("SUBMISSION_ID_FK");
CREATE INDEX "IDX_IRBPROT_REVS_PERSONID_FK" ON "PROTOCOL_REVIEWERS" ("PERSON_ID");
CREATE INDEX "IDX_IRBPROT_REVS_REVTYPE_FK" ON "PROTOCOL_REVIEWERS" ("REVIEWER_TYPE_CODE");
CREATE INDEX "IDX_IRBPROT_REVS_ROLOID_FK" ON "PROTOCOL_REVIEWERS" ("ROLODEX_ID");


CREATE INDEX "IDX_IRBPROT_PERS_PROTID_FK" ON "PROTOCOL_PERSONS" ("PROTOCOL_ID");
CREATE INDEX "IDX_IRBPROT_PERS_PERSID_FK" ON "PROTOCOL_PERSONS" ("PERSON_ID");
CREATE INDEX "IDX_IRBPROT_PERS_ROLOID_FK" ON "PROTOCOL_PERSONS" ("ROLODEX_ID");
CREATE INDEX "IDX_IRBPROT_PERS_PERROLEID_FK" ON "PROTOCOL_PERSONS" ("PROTOCOL_PERSON_ROLE_ID");
CREATE INDEX "IDX_IRBPROT_PERS_AFFTYPE_FK" ON "PROTOCOL_PERSONS" ("AFFILIATION_TYPE_CODE");

commit;
exit
