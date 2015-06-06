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




----------------
-- Version 5.3.0 --
------------------


-- Parameters for KRCR_PARM_T table
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DEFAULT_PERFORMING_ORG_ID', sys_guid(),0,'CONFG','000001','Default value for the Performing Organization in a Proposal Development record. Leave blank to not set a default. Value must be an Organization ID matching a value in the ORGANIZATION_ID field in the ORGANIZATION database table.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PROTOCOL','Document','ARIAH_IRB_DEFAULT_PERFORMING_ORG_ID', sys_guid(),0,'CONFG','000001','Default value for Performing Org ID for an IRB Protocol','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PROTOCOL','Document','ARIAH_IRB_PROTOCOL_NUMBER_PATTERN', sys_guid(),0,'CONFG','0000SEQUENCE','A pattern used to populate the Protocol Number field for an IRB Protocol. Only specific patterns can be used including: 0000SEQUENCE (4 zeroes followed by the padded value of the SEQ_IRB_PROTOCOL_NUMBER sequence), SEQUENCE (just the value from the sequence padded in front by zeroes up to a length of 6 digits), YYMMSEQUENCE (2 digit year, 2 digit month, followed by the value of the sequence with padded zeroes up to 6 digits), YYYYMMSEQUENCE (4 digit year, 2 digit month, followed by the value of the sequence with padded zeroes up to 6 digits), YYYYSEQUENCE (4 digit year, followed by the value of the sequence with padded zeroes up to 6 digits).','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IACUC','Document','ARIAH_IACUC_DEFAULT_PERFORMING_ORG_ID', sys_guid(),0,'CONFG','000001','Default value for Performing Org ID for an IACUC Protocol.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IP','Document','ARIAH_INSTPROP_SHOW_INTELLPROPREVIEW_TAB', sys_guid(),0,'CONFG','Y','Flag to determine if the Intellectual Property Review tab is displayed in an Institutional Proposal. If Y then it is displayed, N otherwise.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DEFAULT_ANTICIPATED_AWARD_TYPE', sys_guid(),0,'CONFG','1','Default value for Anticipated Award Type dropdown in a Proposal Development record. Leave blank to not set a default. Value MUST be numeric value and match a value from the AWARD_TYPE_CODE field in the database table AWARD_TYPE.','A','KUALI');

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
VALUES  ('KC-NEGOTIATION','Document','ARIAH_NEGO_HIDE_AND_DEFAULT_NEGO_DOC_DESC', sys_guid(),0,'CONFG','Y','Flag to determine if the Document Description panel is hidden on a Negotiation document and a default document description is provided.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-NEGOTIATION','Document','ARIAH_NEGO_ACTIVITY_FOLLOWUP_DATE_ALLOW_ALL', sys_guid(),0,'CONFG','Y','Flag to determine if the Follow Up Date for a Negotiation Activity allows any date (if set to Y), or only future dates (if set to N).','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IACUC','Document','ARIAH_IACUC_HIDE_AND_DEFAULT_IACUC_PROTOCOL_DOC_DESC', sys_guid(),0,'CONFG','Y','Flag to determine if the Document Description panel is hidden on an IACUC Protocol document and a default document description is provided.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DEFAULT_PROPOSAL_TYPE_CODE', sys_guid(),0,'CONFG','1','Default value for Proposal Development Proposal Type Code from database table PROPOSAL_TYPE','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DEFAULT_ACTIVITY_TYPE_CODE', sys_guid(),0,'CONFG','1','Default value for  Activity Type dropdown field in a Proposal Development record. Leave blank to not set a default value. Value should match code from ACTIVITY_TYPE_CODE field in database table ACTIVITY_TYPE.','A','KUALI');

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

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_SPONSOR_CODE_NIH', sys_guid(),0,'CONFG','000340','Sponsor code representing the NIH sponsor.','A','KUALI');

UPDATE krcr_parm_t set VAL='mail.from@ariahgroup.org' where PARM_NM='EMAIL_NOTIFICATION_FROM_ADDRESS';
UPDATE krcr_parm_t set VAL='mail.from@ariahgroup.org' where PARM_NM='EMAIL_NOTIFICATION_TEST_ADDRESS';
UPDATE krcr_parm_t set VAL='mail.from@ariahgroup.org' where PARM_NM='FROM_ADDRESS';
UPDATE krcr_parm_t set VAL='admin' where PARM_NM='FELLOWSHIP_OSP_ADMIN';
UPDATE krcr_parm_t set VAL='mail.from@ariahgroup.org' where PARM_NM='LOOKUP_CONTACT_EMAIL';
UPDATE krcr_parm_t set VAL='AR' where PARM_NM='SCHOOL_ACRONYM';
UPDATE krcr_parm_t set VAL='Ariah Research' where PARM_NM='SCHOOL_NAME';
UPDATE krcr_parm_t set VAL='NotificationDocument' where PARM_NM='KcNotificationDocumentTypeName';

update KRCR_PARM_T set VAL='Approval signifies that the proposed project fits within the academic framework and resources of the unit, requirements for new or renovated facilities space have been discussed with the appropriate people, contributions listed will be met by the department college unless otherwise approved, that Conflict of Interest requirements have been addressed, and that Sponsored Programs may process the proposal' where PARM_NM='propSummaryDisclaimerText';


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

Insert into KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,OBJ_ID,VER_NBR,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL) values (krim_attr_data_id_s.nextval,SYS_GUID(),1,'894','3','13','AR');
Insert into KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,OBJ_ID,VER_NBR,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL) values (krim_attr_data_id_s.nextval,SYS_GUID(),1,'895','3','13','AR');
Insert into KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,OBJ_ID,VER_NBR,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL) values (krim_attr_data_id_s.nextval,SYS_GUID(),1,'896','3','13','AR');
Insert into KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,OBJ_ID,VER_NBR,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL) values (krim_attr_data_id_s.nextval,SYS_GUID(),1,'897','3','13','AR');
Insert into KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,OBJ_ID,VER_NBR,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL) values (krim_attr_data_id_s.nextval,SYS_GUID(),1,'898','8','13','AR');
Insert into KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,OBJ_ID,VER_NBR,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL) values (krim_attr_data_id_s.nextval,SYS_GUID(),1,'899','59','13','AR');
Insert into KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,OBJ_ID,VER_NBR,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL) values (krim_attr_data_id_s.nextval,SYS_GUID(),1,'900','5','13','AR');
Insert into KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,OBJ_ID,VER_NBR,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL) values (krim_attr_data_id_s.nextval,SYS_GUID(),1,'901','5','13','AR');
Insert into KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,OBJ_ID,VER_NBR,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL) values (krim_attr_data_id_s.nextval,SYS_GUID(),1,'902','5','13','AR');


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

  CREATE TABLE "REPORT_LINK" 
   (	"REPORT_ID" NUMBER NOT NULL ENABLE, 
	"COEUS_MODULE_ID" NUMBER NOT NULL ENABLE, 
	"DESCRIPTION" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"REPORT_URL" VARCHAR2(500 BYTE), 
	"ACTIVE" CHAR(1) NOT NULL ENABLE, 
        "CREATED_USER" VARCHAR2(60 BYTE), 
	"CREATED_DATE" DATE, 
        "UPDATED_USER" VARCHAR2(60 BYTE), 
	"UPDATED_DATE" DATE, 
	"SORT_ORDER" NUMBER, 
	CONSTRAINT "PK_REPORT_LINKS_ID" PRIMARY KEY ("REPORT_ID"),
        CONSTRAINT "FK_REPLINKS_COEUSMODID" FOREIGN KEY ("COEUS_MODULE_ID")
	REFERENCES "COEUS_MODULE" ("MODULE_CODE") ENABLE
  );

  CREATE INDEX "IDX_REPORTLINKS_COEUSMODID" ON "REPORT_LINK" ("COEUS_MODULE_ID");

  CREATE SEQUENCE  "SEQ_REPORT_LINK_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;

  insert into REPORT_LINK (REPORT_ID,COEUS_MODULE_ID,DESCRIPTION,REPORT_URL,ACTIVE,CREATED_USER,CREATED_DATE,UPDATED_USER,UPDATED_DATE,SORT_ORDER) 
         values(SEQ_REPORT_LINK_ID.nextval,1,'Award Report 1','http://www.ariahgroup.org','Y','admin',sysdate,'admin',sysdate,1);

  insert into REPORT_LINK (REPORT_ID,COEUS_MODULE_ID,DESCRIPTION,REPORT_URL,ACTIVE,CREATED_USER,CREATED_DATE,UPDATED_USER,UPDATED_DATE,SORT_ORDER) 
         values(SEQ_REPORT_LINK_ID.nextval,2,'Institutional Proposal Report 1','http://www.ariahgroup.org','Y','admin',sysdate,'admin',sysdate,1);

  insert into REPORT_LINK (REPORT_ID,COEUS_MODULE_ID,DESCRIPTION,REPORT_URL,ACTIVE,CREATED_USER,CREATED_DATE,UPDATED_USER,UPDATED_DATE,SORT_ORDER) 
         values(SEQ_REPORT_LINK_ID.nextval,3,'Proposal Development Report 1','http://www.ariahgroup.org','Y','admin',sysdate,'admin',sysdate,1);


update IACUC_PROTOCOL_CORRESP_TYPE set DESCRIPTION='Amendment Approval letter' where PROTO_CORRESP_TYPE_CODE='6';
update KRIM_PERM_T set NM='Create Amendment', DESC_TXT='Create a new amendment for a protocol' where NM='Create Ammendment';
update KRIM_PERM_ATTR_DATA_T set ATTR_VAL='create_amendment' where ATTR_VAL='create_ammendment';

update NARRATIVE_TYPE set DESCRIPTION='Proprietary_Information' where DESCRIPTION='PropietaryInformation';

update COST_SHARE_TYPE set DESCRIPTION='RNF-Outside Sources' where DESCRIPTION='RNF-OutsiSourcesde';


-- Proposal Development Locking Feature
ALTER TABLE EPS_PROPOSAL ADD LOCKED VARCHAR2(1);
ALTER TABLE EPS_PROPOSAL ADD LOCKED_BY_PRNCPL_NM VARCHAR2(60);
ALTER TABLE EPS_PROPOSAL ADD LOCKED_TIMESTAMP DATE;

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_UNITADMIN_TYPECODES_AUTHORIZED_TO_LOCK_PROPOSAL', sys_guid(),0,'AUTH','999,2','A comma-delimited list of Unit Administrator Type Codes that are authorized to LOCK a Proposal Development record.','A','KUALI');

--add new negotiation association types
Insert into NEGOTIATION_ASSOCIATION_TYPE (NEGOTIATION_ASSC_TYPE_ID,NEGOTIATION_ASSC_TYPE_CODE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,ACTV_IND)
values (6,'PD','Proposal Development',SYSDATE,'admin',0,SYS_GUID(),'Y');

Insert into NEGOTIATION_ASSOCIATION_TYPE (NEGOTIATION_ASSC_TYPE_ID,NEGOTIATION_ASSC_TYPE_CODE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,ACTV_IND)
values (7,'IRB','IRB Protocol',SYSDATE,'admin',0,SYS_GUID(),'Y');

Insert into NEGOTIATION_ASSOCIATION_TYPE (NEGOTIATION_ASSC_TYPE_ID,NEGOTIATION_ASSC_TYPE_CODE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,ACTV_IND) 
values (8,'IAC','IACUC Protocol',SYSDATE,'admin',0,SYS_GUID(),'Y');


----------------
-- Version 5.3.1 --
------------------

-- new budget parameter
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-B','Document','ARIAH_PROPDEV_BUDGET_DEFAULT_SUBMIT_COST_SHARING_FLAG', sys_guid(),0,'CONFG','false','Boolean flag to set the Proposal Development Budget - Submit Cost Sharing Flag to checked or not checked by default.','A','KUALI');




-- award questionnaires
update krcr_parm_t set VAL=VAL||';Maintain Questionnaire Usage:KC-AWARD' where PARM_NM='associateModuleQuestionnairePermission';

Insert into KRIM_PERM_T (PERM_ID,OBJ_ID,VER_NBR,PERM_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND) 
values (KRIM_PERM_ID_S.nextval,SYS_GUID(),1,(select PERM_TMPL_ID from KRIM_PERM_TMPL_ID where NM='Questionnaire Permission'),
'KC-AWARD','Maintain Questionnaire Usage','Add/Edit Questionnaire Usages for Award','Y');


Insert into KRIM_ROLE_T (ROLE_ID,OBJ_ID,VER_NBR,ROLE_NM,NMSPC_CD,DESC_TXT,KIM_TYP_ID,ACTV_IND,LAST_UPDT_DT) 
values (KRIM_ROLE_ID_S.nextval,SYS_GUID(),1,'Maintain Award Questionnaire','KC-AWARD','Grants the ability to maintain award questionnaires.','1','Y',SYSDATE);


drop sequence KRIM_ROLE_PERM_ID_S;
Declare
  nextnum NUMBER;
 BEGIN
  select (MAX(TO_NUMBER(ROLE_PERM_ID))+1) into nextnum from KRIM_ROLE_PERM_T where ROLE_PERM_ID NOT like 'K%';
  execute immediate 'CREATE SEQUENCE "KRIM_ROLE_PERM_ID_S" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;


Insert into KRIM_ROLE_PERM_T (ROLE_PERM_ID,OBJ_ID,VER_NBR,ROLE_ID,PERM_ID,ACTV_IND) values (KRIM_ROLE_PERM_ID_S.nextval,SYS_GUID(),1,
(select ROLE_ID from KRIM_ROLE_T where ROLE_NM='Maintain Award Questionnaire'),
(select PERM_ID from KRIM_PERM_T where NMSPC_CD='KC-AWARD' and NM='Maintain Questionnaire Usage'),'Y');

Insert into KRIM_ROLE_PERM_T (ROLE_PERM_ID,OBJ_ID,VER_NBR,ROLE_ID,PERM_ID,ACTV_IND) values (KRIM_ROLE_PERM_ID_S.nextval,SYS_GUID(),1,
(select ROLE_ID from KRIM_ROLE_T where ROLE_NM='Technical Administrator'),
(select PERM_ID from KRIM_PERM_T where NMSPC_CD='KC-AWARD' and NM='Maintain Questionnaire Usage'),'Y');

Insert into KRIM_ROLE_PERM_T (ROLE_PERM_ID,OBJ_ID,VER_NBR,ROLE_ID,PERM_ID,ACTV_IND) values (KRIM_ROLE_PERM_ID_S.nextval,SYS_GUID(),1,
(select ROLE_ID from KRIM_ROLE_T where ROLE_NM='KC Superuser'),
(select PERM_ID from KRIM_PERM_T where NMSPC_CD='KC-AWARD' and NM='Maintain Questionnaire Usage'),'Y');


-- convert BUDGET_DETAILS.BUDGET_CATEGORY_CODE from NUMBER to VARCHAR
alter table BUDGET_DETAILS add BUDGET_CATEGORY_CODE varchar2(3);
update BUDGET_DETAILS set BUDGET_CATEGORY_CODE_TEMP=TO_CHAR(BUDGET_CATEGORY_CODE);
alter table BUDGET_DETAILS drop column BUDGET_CATEGORY_CODE;
alter table BUDGET_DETAILS add BUDGET_CATEGORY_CODE varchar2(3);
update BUDGET_DETAILS set BUDGET_CATEGORY_CODE = BUDGET_CATEGORY_CODE_TEMP;


-- training enhancment
alter table person_training add constraint FK_PERTRAIN_CODE FOREIGN KEY (TRAINING_CODE) references TRAINING (TRAINING_CODE);

-- IACUC Funding Source Type
alter table FUNDING_SOURCE_TYPE add DISABLED_COEUS_MODULE_ID NUMBER;

update FUNDING_SOURCE_TYPE set DISABLED_COEUS_MODULE_ID=3 where DESCRIPTION='Development Proposal';
update FUNDING_SOURCE_TYPE set DISABLED_COEUS_MODULE_ID=2 where DESCRIPTION='Institutional Proposal';
update FUNDING_SOURCE_TYPE set DISABLED_COEUS_MODULE_ID=1 where DESCRIPTION='Award';

-- support for Negotiation Activity default restricted status
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-NEGOTIATION','Document','ARIAH_NEGO_ACTIVITY_DEFAULT_RESTRICTED_ENABLED', sys_guid(),0,'CONFG','true','If true, the Negotiation Activity is defaulted to Restricted. If false the Negotiation Activity is defaulted to unrestricted.','A','KUALI');

 -- Fix ability for admin used to have Modify Subaward role so admin can use ADD INVOICE functionality on a Subaward
Insert into KRIM_ROLE_MBR_T (ROLE_MBR_ID,VER_NBR,OBJ_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,ACTV_FRM_DT,ACTV_TO_DT,LAST_UPDT_DT) 
values (KRIM_ROLE_MBR_ID_S.nextval,1,SYS_GUID(), (select ROLE_ID FROM KRIM_ROLE_T where ROLE_NM='Modify Subaward') ,'admin','P',null,null,SYSDATE);



-- Parameter to restrict PD Attachments to Specific Unit Admin Types
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_HIDE_PD_INTERNAL_ATTACHMENTS', sys_guid(),0,'CONFG','true','Boolean flag to set the Proposal Development Internal Attachments to be hidden and viewable only by OSP Administrator Unit Admins.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_UNITADMIN_TYPECODES_AUTHORIZED_TO_VIEWINTERNALATTACHMENTS', sys_guid(),0,'CONFG','999,2','A comma-delimited list of Unit Admin Type Codes for Unit Admins that are allowed to see the Proposal Development Internal Attachments if they hidden by the ARIAH_PROPDEV_HIDE_PD_INTERNAL_ATTACHMENTS parameter.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DISPLAY_PROPOSAL_REPORT_BUTTON', sys_guid(),0,'CONFG','true','If true then a button is displayed on the Proposal Development Summary and Actions tabs that when clicked opens a new browser window to a URL of a report specified by the Parameter ARIAH_PROPDEV_PROPOSAL_REPORT_BUTTON_URL.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_PROPOSAL_REPORT_BUTTON_URL', sys_guid(),0,'CONFG','http://demo.ariahgroup.org/myreportingserver/proposals.do?proposalnum=','A URL to what is typically a web-based report in an external reporting system outside of the Ariah Research system.','A','KUALI');


INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-AWARD','Document','ARIAH_AWARD_HEADER_PI_NONEMP_FULLNAME_OVERRIDE', sys_guid(),0,'CONFG','true','If true, when the PI of an Award is a Non-Employee the Award Header grid will attempt to display the Non-Employee Full Name instead of the Non-Employees Organization Name. If the Full Name is not set then it displays the Organization Name. If false, the Organization Name is always displayed regardless of the Full Name field value.','A','KUALI');


update KREW_DOC_TYP_T set blnkt_appr_plcy=null, blnkt_appr_grp_id=(select GRP_ID from KRIM_GRP_T where GRP_NM='ProposalAdmin')
where doc_typ_id IN(select doc_typ_id from KREW_DOC_TYP_T where blnkt_appr_plcy='NONE' and DOC_TYP_NM='ProposalDevelopmentDocument');

-- fix for IACUC Committee Roster Report
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IACUC','Document','ARIAH_IACUC_CORRESP_TYPE_CODE_ROSTER', sys_guid(),0,'CONFG','30','The IACUC Correspondence Type Code representing the IACUC Committee Roster report.','A','KUALI');

Insert into IACUC_PROTOCOL_CORRESP_TYPE (PROTO_CORRESP_TYPE_CODE,DESCRIPTION,MODULE_ID,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ('30','Committee Roster Report','Y',SYSDATE,'admin',1,SYS_GUID());

-- fix for IACUC Committee Scheduled Meetings Report
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IACUC','Document','ARIAH_IACUC_CORRESP_TYPE_CODE_SCHEDULED_MEETINGS', sys_guid(),0,'CONFG','31','The IACUC Correspondence Type Code representing the IACUC Committee Scheduled Meetings report.','A','KUALI');

Insert into IACUC_PROTOCOL_CORRESP_TYPE (PROTO_CORRESP_TYPE_CODE,DESCRIPTION,MODULE_ID,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ('31','Committee Scheduled Meetings','Y',SYSDATE,'admin',1,SYS_GUID());

-- Negotiation - default the Add Activity Panel to open or close by default
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-NEGOTIATION','Document','ARIAH_NEGO_ADD_ACTIVITY_PANEL_OPENED', sys_guid(),0,'CONFG','true','Flag to determine if Add Activity panel in a Negotiation document is open by default or closed to simplify data entry.','A','KUALI');

--specify a default abstract type in a proposal development abstratcs/attachments tab
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DEFAULT_ABSTRACT_TYPE_CODE', sys_guid(),0,'CONFG','1','Sets the default proposal development abstract type code.','A','KUALI');

-- ability to specify whether the Attachments panel on the Award Attachments tab is open or closed by default
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-AWARD','Document','ARIAH_AWARD_DEFAULT_ATTACHMENTS_TAB_OPEN', sys_guid(),0,'CONFG','true','If true, the Attachments panel is open by default on an Award. If false the panel is defaulted to be closed.','A','KUALI');

----------------
-- Version 5.3.2 --
-- NO DB Changes for v5.3.2
------------------

----------------
-- Version 5.3.3 --
------------------

-- new person parameter for Office Phone Type Code
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IDM','All','ARIAH_PERSON_PHONE_TYPE_OFFICE', sys_guid(),0,'CONFG','WRK','Parameter used to specify a persons phone type code representing their primary work or office phone.','A','KUALI');

-- new person parameter for Fax Phone Type Code
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IDM','All','ARIAH_PERSON_PHONE_TYPE_FAX', sys_guid(),0,'CONFG','FAX','Parameter used to specify a persons phone type code representing their fax number.','A','KUALI');

-- new person parameter for Pager Phone Type Code
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IDM','All','ARIAH_PERSON_PHONE_TYPE_PAGER', sys_guid(),0,'CONFG','PGR','Parameter used to specify a persons phone type code representing their pager number.','A','KUALI');

-- new person parameter for Mobile Phone Type Code
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IDM','All','ARIAH_PERSON_PHONE_TYPE_MOBILE', sys_guid(),0,'CONFG','MBL','Parameter used to specify a persons phone type code representing their mobile number.','A','KUALI');


-- Parameter for Budget Category Codes representing Senior Personnel that appear in the PD Sponsor Forms
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_PRINTFORMS_BUDGET_CATCODE_PERSONNEL', sys_guid(),0,'CONFG','1','Budget category code representing Senior Personnel that will appear on the printed Sponsor Forms.','A','KUALI');

-- Parameter for Budget to set Inflation flag to OFF by default for non-personnel line items
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-B','Document','ARIAH_BUDGET_INFLATION_FLAG_NONPERSONNEL_OFF', sys_guid(),0,'CONFG','true','If true, then the Inflation flag is OFF by default for non-personnel line itmes on a budget. If false, then otherwise.','A','KUALI');


-- Institutional Proposals questionnaires
update krcr_parm_t set VAL=VAL||';Maintain Questionnaire Usage:KC-IP' where PARM_NM='associateModuleQuestionnairePermission';

Insert into KRIM_PERM_T (PERM_ID,OBJ_ID,VER_NBR,PERM_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND) 
values (KRIM_PERM_ID_S.nextval,SYS_GUID(),1,(select PERM_TMPL_ID from KRIM_PERM_TMPL_T where NM='Questionnaire Permission'),
'KC-IP','Maintain Questionnaire Usage','Add/Edit Questionnaire Usages for Institutional Proposals','Y');


Insert into KRIM_ROLE_T (ROLE_ID,OBJ_ID,VER_NBR,ROLE_NM,NMSPC_CD,DESC_TXT,KIM_TYP_ID,ACTV_IND,LAST_UPDT_DT) 
values (KRIM_ROLE_ID_S.nextval,SYS_GUID(),1,'Maintain Institutional Proposal Questionnaire','KC-IP','Grants the ability to maintain Institutional Proposals questionnaires.','1','Y',SYSDATE);

Insert into KRIM_ROLE_PERM_T (ROLE_PERM_ID,OBJ_ID,VER_NBR,ROLE_ID,PERM_ID,ACTV_IND) values (KRIM_ROLE_PERM_ID_S.nextval,SYS_GUID(),1,
(select ROLE_ID from KRIM_ROLE_T where ROLE_NM='Maintain Institutional Proposal Questionnaire'),
(select PERM_ID from KRIM_PERM_T where NMSPC_CD='KC-IP' and NM='Maintain Questionnaire Usage'),'Y');

Insert into KRIM_ROLE_PERM_T (ROLE_PERM_ID,OBJ_ID,VER_NBR,ROLE_ID,PERM_ID,ACTV_IND) values (KRIM_ROLE_PERM_ID_S.nextval,SYS_GUID(),1,
(select ROLE_ID from KRIM_ROLE_T where ROLE_NM='Technical Administrator'),
(select PERM_ID from KRIM_PERM_T where NMSPC_CD='KC-IP' and NM='Maintain Questionnaire Usage'),'Y');

Insert into KRIM_ROLE_PERM_T (ROLE_PERM_ID,OBJ_ID,VER_NBR,ROLE_ID,PERM_ID,ACTV_IND) values (KRIM_ROLE_PERM_ID_S.nextval,SYS_GUID(),1,
(select ROLE_ID from KRIM_ROLE_T where ROLE_NM='KC Superuser'),
(select PERM_ID from KRIM_PERM_T where NMSPC_CD='KC-IP' and NM='Maintain Questionnaire Usage'),'Y');




-- Parameter representing top-most unit in hierarchy. Used in various modules to prevent hard-coded unit numbers.
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-UNT','Document','ARIAH_UNIT_TOP_MOST_UNIT_NUMBER', sys_guid(),0,'CONFG','000001','Unit number representing the top-most unit the unit hierarchy.','A','KUALI');

-- Parameter representing the primary Organization used to reflect the Org on Subaward Reporting, particularly for SF-294 and 295.
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-SUBAWARD','Document','ARIAH_SUBAWARD_ORGID_SUBAWARD_REPORTS', sys_guid(),0,'CONFG','000001','Parameter representing the primary Organization ID used to reflect the Org on Subaward Reporting, particularly for SF-294 and 295.','A','KUALI');


-------------------
-- Version 5.3.4 ---
-------------------

-- add missing parameter SQL supposed to have been added to 5.3.0
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_REQUIRE_PROJECT_DATES', sys_guid(),0,'CONFG','true','If true the Project Start and End Dates in a Proposal Development record are required. False the fields are optional.','A','KUALI');
