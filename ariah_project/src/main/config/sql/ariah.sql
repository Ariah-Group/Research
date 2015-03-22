--Copyright 2015 The Ariah Group, Inc.
--
--Licensed under the Apache License, Version 2.0 (the "License");
--you may not use this file except in compliance with the License.
--You may obtain a copy of the License at
--
--    http://www.apache.org/licenses/LICENSE-2.0
--
--Unless required by applicable law or agreed to in writing, software
--distributed under the License is distributed on an "AS IS" BASIS,
--WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--See the License for the specific language governing permissions and
--limitations under the License.


-- Parameters for KRCR_PARM_T table
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DEFAULT_PERFORMING_ORG_ID', sys_guid(),0,'CONFG','000001','Default value for Performing Org ID for a Proposal Development record','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PROTOCOL','Document','ARIAH_IRB_DEFAULT_PERFORMING_ORG_ID', sys_guid(),0,'CONFG','000001','Default value for Performing Org ID for an IRB Protocol','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PROTOCOL','Document','ARIAH_IRB_PROTOCOL_NUMBER_PATTERN', sys_guid(),0,'CONFG','0000SEQUENCE','A pattern used to populate the Protocol Number field for an IRB Protocol. Only specific patterns can be used including: 0000SEQUENCE (4 zeroes followed by the padded value of the SEQ_IRB_PROTOCOL_NUMBER sequence), SEQUENCE (just the value from the sequence padded in front by zeroes up to a length of 6 digits), YYMMSEQUENCE (2 digit year, 2 digit month, followed by the value of the sequence with padded zeroes up to 6 digits), YYYYMMSEQUENCE (4 digit year, 2 digit month, followed by the value of the sequence with padded zeroes up to 6 digits), YYYYSEQUENCE (4 digit year, followed by the value of the sequence with padded zeroes up to 6 digits).','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IACUC','Document','ARIAH_IACUC_DEFAULT_PERFORMING_ORG_ID', sys_guid(),0,'CONFG','000001','Default value for Performing Org ID for an IACUC Protocol.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DEFAULT_ANTICIPATED_AWARD_TYPE', sys_guid(),0,'CONFG','1','Default value for Anticipated Award Type dropdown. MUST be numeric value. See AWARD_TYPE table in database for sample values.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DEFAULT_SPONSOR_DEADLINE_TYPE', sys_guid(),0,'CONFG','P','Default value for Sponsor Deadline Type.','A','KUALI');
 
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_REQUIRE_SPONSOR_DEADLINE_DATE', sys_guid(),0,'CONFG','Y','Flag to require Sponsor Deadline Date on a Proposal Development record. ','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-AWARD','Document','ARIAH_AWARD_HIDE_AND_DEFAULT_AWARD_DOC_DESC', sys_guid(),0,'CONFG','Y','Flag to determine if the Document Description panel is hidden on an Award document and a default document description is provided.','A','KUALI');
 
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PROTOCOL','Document','ARIAH_IRB_HIDE_AND_DEFAULT_IRB_PROTOCOL_DOC_DESC', sys_guid(),0,'CONFG','Y','Flag to determine if the Document Description panel is hidden on an IRB Protocol document and a default document description is provided.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PROTOCOL','Document','ARIAH_IRB_HIDE_QUESTIONNAIRES_ON_HISTORY', sys_guid(),0,'CONFG','Y','Flag to determine if the Questionnaires are displayed on the IRB Protocol Actions History section.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-SUBAWARD','Document','ARIAH_SUBAWARD_HIDE_AND_DEFAULT_SUBAWARD_DOC_DESC', sys_guid(),0,'CONFG','Y','Flag to determine if the Document Description panel is hidden on a Subaward document and a default document description is provided.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-NEGOTIATION','Document','ARIAH_NEGO_HIDE_AND_DEFAULT_NEGO_DOC_DESC', sys_guid(),0,'CONFG','Y','Flag to determine if the Document Description panel is hidden on a Negottiation document and a default document description is provided.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-NEGOTIATION','Document','ARIAH_NEGO_ACTIVITY_FOLLOWUP_DATE_ALLOW_ALL', sys_guid(),0,'CONFG','Y','Flag to determine if the Follow Up Date for a Negotiation Acitivity allows any date (if set to Y), or only future dates (if set to N).','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IACUC','Document','ARIAH_IACUC_HIDE_AND_DEFAULT_IACUC_PROTOCOL_DOC_DESC', sys_guid(),0,'CONFG','Y','Flag to determine if the Document Description panel is hidden on an IACUC Protocol document and a default document description is provided.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DEFAULT_PROPOSAL_TYPE_CODE', sys_guid(),0,'CONFG','1','Default value for Proposal Development Proposal Type Code from database table PROPOSAL_TYPE','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DEFAULT_ACTIVITY_TYPE_CODE', sys_guid(),0,'CONFG','1','Default value for Proposal Development Activity Type Code from database table ACTIVITY_TYPE','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DEFAULT_SPONSOR_CODE', sys_guid(),0,'CONFG','','Default value for Proposal Development Sponsor Code from database table SPONSOR','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DEFAULT_PROPOSAL_TITLE', sys_guid(),0,'CONFG','To Be Determined','Default value a Proposal Development Title','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DISPLAY_EXECUTIVE_SUMMARY', sys_guid(),0,'CONFG','Y','Flag to determine if the Executive Summary field of a Proposal Development record should be displayed.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_REQUIRE_EXECUTIVE_SUMMARY', sys_guid(),0,'CONFG','N','Flag to determine if the Executive Summary field on a Proposal Development record should be required.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_REQUIRE_PROPOSAL_COORDINATOR_FIELD', sys_guid(),0,'AUTH','N','Should Proposal Coordinator be required for Proposals? Answer Y or N','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DISPLAY_PROPOSAL_COORDINATOR_FIELD', sys_guid(),0,'AUTH','N','Should Proposal Coordinator be displayed for Proposals? Answer Y or N','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_ENABLED', sys_guid(),0,'AUTH','TRUE','Is the Finance step for PD workflow enabled?','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_UNITADMINTYPECODE', sys_guid(),0,'AUTH','8','Unit Admin Type Code number representing Finance Approval in PD workflow','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_WORKFLOW_STEP_PRESIDENT_ENABLED', sys_guid(),0,'AUTH','TRUE','Is the President step for PD workflow enabled?','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_WORKFLOW_STEP_PRESIDENT_UNITADMINTYPECODE', sys_guid(),0,'AUTH','888','Unit Admin Type Code number representing President Approval in PD workflow','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_PROPOSAL_COORDINATOR_UNITADMINTYPECODE', sys_guid(),0,'AUTH','999','Unit Admin Type Code number representing Proposal Coordinator.','A','KUALI');


UPDATE krcr_parm_t set VAL='mail.from@ariahgroup.org' where PARM_NM='EMAIL_NOTIFICATION_FROM_ADDRESS';
UPDATE krcr_parm_t set VAL='mail.from@ariahgroup.org' where PARM_NM='EMAIL_NOTIFICATION_TEST_ADDRESS';
UPDATE krcr_parm_t set VAL='mail.from@ariahgroup.org' where PARM_NM='FROM_ADDRESS';
UPDATE krcr_parm_t set VAL='admin' where PARM_NM='FELLOWSHIP_OSP_ADMIN';
UPDATE krcr_parm_t set VAL='mail.from@ariahgroup.org' where PARM_NM='LOOKUP_CONTACT_EMAIL';
UPDATE krcr_parm_t set VAL='AR' where PARM_NM='SCHOOL_ACRONYM';
UPDATE krcr_parm_t set VAL='Ariah Research' where PARM_NM='SCHOOL_NAME';
UPDATE krcr_parm_t set VAL='NotificationDocument' where PARM_NM='KcNotificationDocumentTypeName';

update KRIM_ROLE_T set KIM_TYP_ID='69' where ROLE_NM='COI Reporter';

-- fix typos in database Financial Entity-related fields
update FIN_ENTITIES_DATA_GROUPS set DATA_GROUP_NAME='Creator of Intellectual Prop.' where DATA_GROUP_NAME='Creator of Intellectual prop.';
update FIN_ENTITIES_DATA_MATRIX set FIN_ENTITIES_DATA_MATRIX.COLUMN_LABEL='Right to Receive Future Income' where FIN_ENTITIES_DATA_MATRIX.COLUMN_NAME='FUTURE_INCOME';


update KRCR_PARM_T set PARM_DESC_TXT='Description of co-investigator for Non-NIH Proposals' where PARM_NM='personrole.coi';
update KRCR_PARM_T set PARM_DESC_TXT='Description of key person for Non-NIH Proposals' where PARM_NM='personrole.kp';
update KRCR_PARM_T set PARM_DESC_TXT='Description of principal investigator multiple for NIH Proposals' where PARM_NM='personrole.nih.coi';
update KRCR_PARM_T set PARM_DESC_TXT='Description of principal investigator multiple for NIH Proposals' where PARM_NM='personrole.nih.coi.mpi';
update KRCR_PARM_T set PARM_DESC_TXT='Description of key person for NIH Proposals' where PARM_NM='personrole.nih.kp';
update KRCR_PARM_T set PARM_DESC_TXT='Description of principal investigator contact for NIH Proposals' where PARM_NM='personrole.nih.pi';
update KRCR_PARM_T set PARM_DESC_TXT='Description of principal investigator for Non-NIH Proposals' where PARM_NM='personrole.pi';

-- Core table modifications
alter table coeus_module add (
   ACTIVE varchar2(1),
   SORT_ORDER NUMBER (5,0)
); 

update coeus_module set active='Y';

-- Dev Proposal DML modifications

alter table proposal_type add (
ACTIVE varchar2(1),
SORT_ORDER NUMBER (5,0),
help_desc varchar2(200)
); 

update proposal_type set active='Y';

alter table activity_type add (
ACTIVE varchar2(1),
SORT_ORDER NUMBER (5,0),
help_desc varchar2(200)
); 

update activity_type set active='Y';

alter table deadline_type add (
ACTIVE varchar2(1),
SORT_ORDER NUMBER (5,0),
help_desc varchar2(200)
); 

update deadline_type set active='Y';

alter table EPS_PROPOSAL add EXECUTIVE_SUMMARY VARCHAR2(800);
alter table EPS_PROPOSAL add PRPSAL_COORD_PRNCPL_NM varchar2(100);
alter table EPS_PROPOSAL add LINK_TO_OPPORTUNITY varchar2(500);

-- AWARD Table Modifications
alter table AWARD MODIFY ACCOUNT_NUMBER VARCHAR2(50);


-- IRB Protocol DML Modifications

CREATE SEQUENCE "SEQ_IRB_PROTOCOL_NUM"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 200000 NOCACHE  NOORDER  NOCYCLE ;

-- Maintenance Document Fix Affecting Permissions to Edit Maintenance Documents
update KRIM_PERM_ATTR_DATA_T set ATTR_VAL='ArMaintenanceDocument' where ATTR_VAL='KcMaintenanceDocument';


-- New Roles for System Admin and System Maintenance

Insert into KRIM_ROLE_T (ROLE_ID,OBJ_ID,VER_NBR,ROLE_NM,NMSPC_CD,DESC_TXT,KIM_TYP_ID,ACTV_IND,LAST_UPDT_DT) 
values (KRIM_ROLE_ID_S.NEXTVAL,SYS_GUID(),1,'System Administrator','KC-SYS','Role for determining the display of the System Admin tab in the navigation menu',
(select KIM_TYP_ID from KRIM_TYP_T where NM='UnitHierarchy'),'Y',SYSDATE);

Insert into KRIM_ROLE_T (ROLE_ID,OBJ_ID,VER_NBR,ROLE_NM,NMSPC_CD,DESC_TXT,KIM_TYP_ID,ACTV_IND,LAST_UPDT_DT) 
values (KRIM_ROLE_ID_S.NEXTVAL,SYS_GUID(),1,'System Maintenance','KC-SYS','Role for determining the display of the Maintenance tab in the navigation menu',
(select KIM_TYP_ID from KRIM_TYP_T where NM='UnitHierarchy'),'Y',SYSDATE);

-- New Roles Assignments to Admin user for new roles.

Insert into KRIM_ROLE_MBR_T (ROLE_MBR_ID,VER_NBR,OBJ_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,ACTV_FRM_DT,ACTV_TO_DT,LAST_UPDT_DT) 
values (KRIM_ROLE_MBR_ID_S.nextval,1,SYS_GUID(), (select ROLE_ID FROM KRIM_ROLE_T where ROLE_NM='System Administrator') ,'admin','P',null,null,SYSDATE);

Insert into KRIM_ROLE_MBR_T (ROLE_MBR_ID,VER_NBR,OBJ_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,ACTV_FRM_DT,ACTV_TO_DT,LAST_UPDT_DT) 
values (KRIM_ROLE_MBR_ID_S.nextval,1,SYS_GUID(), (select ROLE_ID FROM KRIM_ROLE_T where ROLE_NM='System Maintenance') ,'admin','P',null,null,SYSDATE);




Insert into UNIT_ADMINISTRATOR (UNIT_NUMBER,PERSON_ID,UNIT_ADMINISTRATOR_TYPE_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ('000001','admin','4',SYSDATE,'admin',1,SYS_GUID());

Insert into UNIT_ADMINISTRATOR_TYPE (UNIT_ADMINISTRATOR_TYPE_CODE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,DEFAULT_GROUP_FLAG,MULTIPLES_FLAG,OBJ_ID) 
values ('999','Proposal Coordinator',SYSDATE,'admin',1,'C','Y',SYS_GUID());

Insert into UNIT_ADMINISTRATOR (UNIT_NUMBER,PERSON_ID,UNIT_ADMINISTRATOR_TYPE_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ('000001','admin','999',SYSDATE,'admin',1,SYS_GUID());

Insert into UNIT_ADMINISTRATOR_TYPE (UNIT_ADMINISTRATOR_TYPE_CODE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,DEFAULT_GROUP_FLAG,MULTIPLES_FLAG,OBJ_ID) 
values ('888','President',SYSDATE,'admin',1,'C','Y',SYS_GUID());

Insert into UNIT_ADMINISTRATOR (UNIT_NUMBER,PERSON_ID,UNIT_ADMINISTRATOR_TYPE_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ('000001','admin','888',SYSDATE,'admin',1,SYS_GUID());


-- REPORTING

  CREATE TABLE "REPORT_LINKS" 
   (	"REPORT_ID" NUMBER NOT NULL ENABLE, 
	"COEUS_MODULE_ID" NUMBER NOT NULL ENABLE, 
	"DESCRIPTION" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"REPORT_URL" VARCHAR2(500 BYTE), 
	"ACTIVE" NUMBER(1,0) NOT NULL ENABLE, 
        "CREATED_USER" VARCHAR2(60 BYTE), 
	"CREATED_DATE" DATE, 
        "UPDATED_USER" VARCHAR2(60 BYTE), 
	"UPDATED_DATE" DATE, 
	"SORT_ORDER" NUMBER, 
	CONSTRAINT "PK_REPORT_LINKS_ID" PRIMARY KEY ("REPORT_ID"),
        CONSTRAINT "FK_REPLINKS_COEUSMODID" FOREIGN KEY ("COEUS_MODULE_ID")
	REFERENCES "COEUS_MODULE" ("MODULE_CODE") ENABLE
  );

  CREATE INDEX "IDX_REPORTLINKS_COEUSMODID" ON "REPORT_LINKS" ("COEUS_MODULE_ID");

  CREATE SEQUENCE  "SEQ_REPORT_LINK_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;

  insert into REPORT_LINKS (REPORT_ID,COEUS_MODULE_ID,DESCRIPTION,REPORT_URL,ACTIVE,CREATED_USER,CREATED_DATE,UPDATED_USER,UPDATED_DATE,SORT_ORDER) 
         values(SEQ_REPORT_LINK_ID.nextval,1,'Award Report 1','http://www.ariahgroup.org',1,'admin',sysdate,'admin',sysdate,1);

  insert into REPORT_LINKS (REPORT_ID,COEUS_MODULE_ID,DESCRIPTION,REPORT_URL,ACTIVE,CREATED_USER,CREATED_DATE,UPDATED_USER,UPDATED_DATE,SORT_ORDER) 
         values(SEQ_REPORT_LINK_ID.nextval,2,'Institutional Proposal Report 1','http://www.ariahgroup.org',1,'admin',sysdate,'admin',sysdate,1);

  insert into REPORT_LINKS (REPORT_ID,COEUS_MODULE_ID,DESCRIPTION,REPORT_URL,ACTIVE,CREATED_USER,CREATED_DATE,UPDATED_USER,UPDATED_DATE,SORT_ORDER) 
         values(SEQ_REPORT_LINK_ID.nextval,3,'Proposal Development Report 1','http://www.ariahgroup.org',1,'admin',sysdate,'admin',sysdate,1);
