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
values (KRIM_ROLE_MBR_ID_S.nextval,1,SYS_GUID(), (select ROLE_ID FROM KRIM_ROLE_T where ROLE_NM='System Administrator' and NMSPC_CD='KC-SYS') ,'admin','P',null,null,SYSDATE);

Insert into KRIM_ROLE_MBR_T (ROLE_MBR_ID,VER_NBR,OBJ_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,ACTV_FRM_DT,ACTV_TO_DT,LAST_UPDT_DT) 
values (KRIM_ROLE_MBR_ID_S.nextval,1,SYS_GUID(), (select ROLE_ID FROM KRIM_ROLE_T where ROLE_NM='System Maintenance'  and NMSPC_CD='KC-SYS') ,'admin','P',null,null,SYSDATE);




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
values (KRIM_ROLE_MBR_ID_S.nextval,1,SYS_GUID(), (select ROLE_ID FROM KRIM_ROLE_T where ROLE_NM='Modify Subaward' and NMSPC_CD='KC-SUBAWARD') ,'admin','P',null,null,SYSDATE);



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
VALUES  ('KC-B','Document','ARIAH_BUDGET_INFLATION_FLAG_NONPERSONNEL_OFF', sys_guid(),0,'CONFG','true','If true, then the Inflation flag is OFF by default for non-personnel line items on a budget. If false, then otherwise.','A','KUALI');


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


-- Add Active flag to BUDGET_CATEGORY_TYPE table
alter table BUDGET_CATEGORY_TYPE add ( ACTIVE varchar2(1) ); 
-- set all default values to Y Active)
update BUDGET_CATEGORY_TYPE set active='Y';


-- Add Active flag to BUDGET_CATEGORY table
alter table BUDGET_CATEGORY add ( ACTIVE varchar2(1) ); 
-- set all default values to Y Active)
update BUDGET_CATEGORY set active='Y'; 


-- Add Active flag to APPOINTMENT_TYPE table
alter table APPOINTMENT_TYPE add ( ACTIVE varchar2(1) ); 
-- set all default values to Y (Active)
update APPOINTMENT_TYPE set active='Y';

-- Add Active flag to PROTOCOL_TYPE table
alter table PROTOCOL_TYPE add ( ACTIVE varchar2(1) ); 
-- set all default values to Y (Active)
update PROTOCOL_TYPE set active='Y';


-- Add Active flag to VULNERABLE_SUBJECT_TYPE table
alter table VULNERABLE_SUBJECT_TYPE add ( ACTIVE varchar2(1) ); 
-- set all default values to Y (Active)
update VULNERABLE_SUBJECT_TYPE set active='Y';


-- Add Active flag to PROTOCOL_ATTACHMENT_TYPE table
alter table PROTOCOL_ATTACHMENT_TYPE add ( ACTIVE varchar2(1) ); 
-- set all default values to Y (Active)
update PROTOCOL_ATTACHMENT_TYPE set active='Y';



-- Add Active flag to ACCOUNT_TYPE table
alter table ACCOUNT_TYPE add ( ACTIVE varchar2(1) ); 
-- set all default values to Y (Active)
update ACCOUNT_TYPE set active='Y';


-- Add Active flag to AWARD_TYPE table
alter table AWARD_TYPE add ( ACTIVE varchar2(1) ); 
-- set all default values to Y (Active)
update AWARD_TYPE set active='Y';


-- Add Active flag to NSF_CODES table
alter table NSF_CODES add ( ACTIVE varchar2(1) ); 
-- set all default values to Y (Active)
update NSF_CODES set active='Y';


-- Add Active flag to AWARD_TRANSACTION_TYPE table
alter table AWARD_TRANSACTION_TYPE add ( ACTIVE varchar2(1) ); 
-- set all default values to Y (Active)
update AWARD_TRANSACTION_TYPE set active='Y';


-- Add Active flag to ORGANIZATION table
alter table ORGANIZATION add ( ACTIVE varchar2(1) ); 
-- set all default values to Y (Active)
update ORGANIZATION set active='Y';


-- Add Active flag to COST_SHARE_TYPE table
alter table COST_SHARE_TYPE add ( ACTIVE varchar2(1) ); 
-- set all default values to Y (Active)
update COST_SHARE_TYPE set ACTIVE='Y';


-- Add Active flag to SCIENCE_KEYWORD table
alter table SCIENCE_KEYWORD add ( ACTIVE varchar2(1) ); 
-- set all default values to Y (Active)
update SCIENCE_KEYWORD set ACTIVE='Y';


-- Parameter for PropDev approval question certification
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DISPLAY_APPROVAL_CERT_QUESTION', sys_guid(),0,'CONFG','true','If true display a certification question upon routing, approving, or blanket approving a Proposal Development record. If false then no question is shown.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_TEXT_APPROVAL_CERT_QUESTION', sys_guid(),0,'CONFG','SUBMISSION INTO ROUTING BY THE PI SIGNIFIES: That the information submitted within the application is true, complete and accurate to the best of my knowledge; that any false, fictitious, or fraudulent statements or claims may subject me to criminal, civil, or administrative penalties; and that I agree to accept responsibility for the scientific conduct of the project and to provide the required progress reports if a grant is awarded as a result of the application. *************************************** APPROVAL BY CHAIR/DEAN/DIRECTOR OR SUBSEQUENT PARTIES CERTIFIES: The proposal/proposal summary has been reviewed; The research or program proposed is in keeping with Department/College/Center/Institute educational objectives; Approval is given for any cost-sharing, equipment or space as described in the budget; and Approval is given for the budget request and the work proposed.','The text of the proposal development approval certification question presented to all staff upon approving a PD record.','A','KUALI');


-- remove unused column from table
alter table AWARD_AMT_FNA_DISTRIBUTION drop column AWARD_AMOUNT_INFO_ID;


-- Parameter representing PD notificatino for modified narrative
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_ACTIONCODE_NARRATIVE_MODIFY', sys_guid(),0,'CONFG','102','Action code representing Notification sent when a narrative is added to a proposal that is not in pending status.','A','KUALI');



-------------------
-- Version 5.3.5 ---
-------------------

-- ensure ADMIN user can create and manage negotiation records
Insert into KRIM_ROLE_MBR_T (ROLE_MBR_ID,VER_NBR,OBJ_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,ACTV_FRM_DT,ACTV_TO_DT,LAST_UPDT_DT) 
values (KRIM_ROLE_MBR_ID_S.nextval,1,SYS_GUID(), (select ROLE_ID FROM KRIM_ROLE_T where ROLE_NM='Negotiation Administrator') ,'admin','P',null,null,SYSDATE);


-- add a single column primary key to the UNIT_ADMINISTRATOR table while removing the 3-part primary to enable EDIT of a Unit Admin record
CREATE SEQUENCE "SEQ_UNIT_ADMINISTRATOR_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;

alter table UNIT_ADMINISTRATOR add ( UNIT_ADMINISTRATOR_ID NUMBER ); 

UPDATE UNIT_ADMINISTRATOR set UNIT_ADMINISTRATOR_ID=SEQ_UNIT_ADMINISTRATOR_ID.nextval;

ALTER TABLE UNIT_ADMINISTRATOR drop constraint UNIT_ADMINISTRATORP1;

ALTER TABLE UNIT_ADMINISTRATOR add constraint PK_UNIT_ADMINISTRATOR_ID PRIMARY KEY (UNIT_ADMINISTRATOR_ID);

ALTER TABLE UNIT_ADMINISTRATOR ADD CONSTRAINT UNQ_UNITADMINRECORD UNIQUE (UNIT_NUMBER,PERSON_ID,UNIT_ADMINISTRATOR_TYPE_CODE);



-- add new neg agree types, RES-472
Insert into NEGOTIATION_AGREEMENT_TYPE (NEGOTIATION_AGRMNT_TYPE_ID,NEGOTIATION_AGRMNT_TYPE_CODE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,ACTV_IND) values (NEGOTIATION_AGREEMENT_TYPE_S.nextval,'MOU','Memo of Understanding',sysdate,'admin',0,sys_guid(),'Y');
Insert into NEGOTIATION_AGREEMENT_TYPE (NEGOTIATION_AGRMNT_TYPE_ID,NEGOTIATION_AGRMNT_TYPE_CODE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,ACTV_IND) values (NEGOTIATION_AGREEMENT_TYPE_S.nextval,'TA','Teaming Agreement',sysdate,'admin',0,sys_guid(),'Y');

-- add feature to enable copy custom data for IRB protocol : RES-481
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PROTOCOL','Document','ARIAH_IRB_PROTOCOL_COPY_CUSTOM_DATA_ENABLED', sys_guid(),0,'CONFG','false','Flag to enable copying of custom data values for an IRB Protocol when the protocol is copied','A','KUALI');

-- add feature to enable copy notes for IRB protocol : RES-483
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PROTOCOL','Document','ARIAH_IRB_PROTOCOL_COPY_NOTES_ENABLED', sys_guid(),0,'CONFG','false','Flag to enable copying of notes values for an IRB Protocol when the protocol is copied','A','KUALI');

-- add feature to enable copy attachments for IRB protocol : RES-484
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PROTOCOL','Document','ARIAH_IRB_PROTOCOL_COPY_ATTACHMENTS_ENABLED', sys_guid(),0,'CONFG','false','Flag to enable copying of attachments values for an IRB Protocol when the protocol is copied','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PROTOCOL','Document','ARIAH_IRB_PROTOCOL_SEARCH_REQUIRE_FIELD_ENABLED', sys_guid(),0,'CONFG','false','If true, then when using the IRB Protocol search a user must enter a value for at least one of the search fields. If false they can search without entering any search fields.','A','KUALI');


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
ALTER TABLE EPS_PROP_CHANGED_DATA MODIFY (CHANGED_DATA_ID NOT NULL);
ALTER TABLE EPS_PROP_CHANGED_DATA drop constraint EPS_PROP_CHANGED_DATAP1;
ALTER TABLE EPS_PROP_CHANGED_DATA add constraint EPS_PROP_CHANGED_DATANEWP1 PRIMARY KEY (CHANGED_DATA_ID);

CREATE INDEX "IDX_EPSPROPCHANGED_PROPNUM" ON "EPS_PROP_CHANGED_DATA" ("PROPOSAL_NUMBER");


INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_LOG_CHANGEDATA_ENABLED', sys_guid(),0,'CONFG','true','Flag to enable the logging of changed data fields in a Dev Proposal record.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_SUMMARY_CHANGEDATA_PANEL_ENABLED', sys_guid(),0,'CONFG','Y','Flag to enable the Changed Data panel to be displayed in the Summary tab of a Dev Proposal','A','KUALI');


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

CREATE INDEX "IDX_IRBPROT_PROTTYPE" ON "PROTOCOL" ("PROTOCOL_TYPE_CODE");
CREATE INDEX "IDX_IRBPROT_STATUSCODE" ON "PROTOCOL" ("PROTOCOL_STATUS_CODE");
CREATE INDEX "IDX_IRBPROT_DOCNUM" ON "PROTOCOL" ("DOCUMENT_NUMBER");

CREATE INDEX "IDX_DEVPROP_MAILINGADD" ON "EPS_PROPOSAL" ("MAILING_ADDRESS_ID");
CREATE INDEX "IDX_DEVPROP_PRIMESPONSOR" ON "EPS_PROPOSAL" ("PRIME_SPONSOR_CODE");

CREATE INDEX "IDX_DEVPROPPERSON_ROLE" ON "EPS_PROP_PERSON" ("PROP_PERSON_ROLE_ID");
CREATE INDEX "IDX_DEVPROPPERSON_PERS" ON "EPS_PROP_PERSON" ("PERSON_ID");
CREATE INDEX "IDX_DEVPROPPERSON_ROLO" ON "EPS_PROP_PERSON" ("ROLODEX_ID");
CREATE INDEX "IDX_DEVPROPPERSON_UNIT" ON "EPS_PROP_PERSON" ("HOME_UNIT");


CREATE INDEX "IDX_SUBAWD_ORGID" ON "SUBAWARD" ("ORGANIZATION_ID");
CREATE INDEX "IDX_SUBAWD_TYPECODE" ON "SUBAWARD" ("SUBAWARD_TYPE_CODE");
CREATE INDEX "IDX_SUBAWD_STATUS" ON "SUBAWARD" ("STATUS_CODE");
CREATE INDEX "IDX_SUBAWD_REQUNIT" ON "SUBAWARD" ("REQUISITIONER_UNIT");
CREATE INDEX "IDX_SUBAWD_SITEINVEST" ON "SUBAWARD" ("SITE_INVESTIGATOR");
CREATE INDEX "IDX_SUBAWD_DOCNUM" ON "SUBAWARD" ("DOCUMENT_NUMBER");
CREATE INDEX "IDX_SUBAWD_SUBCODE" ON "SUBAWARD" ("SUBAWARD_CODE");
CREATE INDEX "IDX_SUBAWD_COSTTYPE" ON "SUBAWARD" ("COST_TYPE");



-- add IRB Administrator to 'admin' user by default
Insert into KRIM_ROLE_MBR_T (ROLE_MBR_ID,VER_NBR,OBJ_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,ACTV_FRM_DT,ACTV_TO_DT,LAST_UPDT_DT) 
values (KRIM_ROLE_MBR_ID_S.nextval,1,SYS_GUID(), (select ROLE_ID FROM KRIM_ROLE_T where ROLE_NM='IRB Administrator') ,'admin','P',null,null,SYSDATE);

Insert into KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,OBJ_ID,VER_NBR,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL)
values (KRIM_ATTR_DATA_ID_S.nextval,SYS_GUID(),3,(select ROLE_MBR_ID FROM KRIM_ROLE_MBR_T where 
ROLE_ID=(select ROLE_ID FROM KRIM_ROLE_T where ROLE_NM='IRB Administrator') AND MBR_ID='admin' ),
(select KIM_TYP_ID from KRIM_TYP_T where NM='UnitHierarchy'),
(select KIM_ATTR_DEFN_ID from KRIM_ATTR_DEFN_T where NM='unitNumber' and NMSPC_CD='KC-SYS'),'000001');

Insert into KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,OBJ_ID,VER_NBR,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL) 
values (KRIM_ATTR_DATA_ID_S.nextval,SYS_GUID(),3,
(select ROLE_MBR_ID FROM KRIM_ROLE_MBR_T where ROLE_ID=(select ROLE_ID FROM KRIM_ROLE_T where ROLE_NM='IRB Administrator') AND MBR_ID='admin' ),
(select KIM_TYP_ID from KRIM_TYP_T where NM='UnitHierarchy'),
(select KIM_ATTR_DEFN_ID from KRIM_ATTR_DEFN_T where NM='subunits' and NMSPC_CD='KC-SYS'),'Y');




Insert into COEUS_MODULE (MODULE_CODE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,ACTIVE) values (12,'Subaward',SYSDATE,'admin',1,SYS_GUID(),'Y');

update NOTIFICATION_TYPE set MODULE_CODE=12 where ACTION_CODE=501;

Insert into NOTIFICATION_MODULE_ROLE (NOTIFICATION_MODULE_ROLE_ID,OBJ_ID,VER_NBR,UPDATE_TIMESTAMP,UPDATE_USER,MODULE_CODE,ROLE_NAME)
values (SEQ_NTFCTN_MODULE_ROLE_ID.nextval,SYS_GUID(),1,sysdate,'admin',12,'KC-SUBAWARD:Subaward Requisitioner Review Approver');


-------------------
-- Version 5.4.0 --
-------------------


-- change TBN.TBN_ID from VARCHAR to NUMBER
alter table TBN add TBN_ID_2 NUMBER;
update TBN set TBN_ID_2 = TO_NUMBER(TBN_ID);
ALTER TABLE    TBN drop constraint    TBNP1;
update TBN set TBN_ID = null;
alter table TBN modify (TBN_ID NUMBER);
update TBN set TBN_ID = TBN_ID_2;
alter table TBN ADD CONSTRAINT PK_TBNID PRIMARY KEY (TBN_ID);
alter table TBN drop column TBN_ID_2;

-- change BUDGET_PERSONS.TBN_ID from VARCHAR to NUMBER
alter table BUDGET_PERSONS add TBN_ID_2 NUMBER;
update BUDGET_PERSONS set TBN_ID_2 = TO_NUMBER(TBN_ID);
update BUDGET_PERSONS set TBN_ID = null;
alter table BUDGET_PERSONS modify (TBN_ID NUMBER);
update BUDGET_PERSONS set TBN_ID = TBN_ID_2;
alter table BUDGET_PERSONS drop column TBN_ID_2;


-- RES-559
Insert into KRCR_CMPNT_T (NMSPC_CD,CMPNT_CD,OBJ_ID,VER_NBR,NM,ACTV_IND) values ('KC-IDM','All',SYS_GUID(),1,'All','Y');


-- RES-583
CREATE INDEX "IX_AWARD_SPONSORCODE" ON "AWARD" ("SPONSOR_CODE");
CREATE INDEX "IX_AWARD_STATUSCODE" ON "AWARD" ("STATUS_CODE") ;
CREATE INDEX "IX_AWARD_UNITNUM" ON "AWARD" ("LEAD_UNIT_NUMBER");
CREATE INDEX "IX_AWARD_TRANSTYPECODE" ON "AWARD" ("TRANSACTION_TYPE_CODE");
CREATE INDEX "IX_AWARD_ACTTYPECODE" ON "AWARD" ("ACTIVITY_TYPE_CODE");
CREATE INDEX "IX_AWARD_AWARDTYPECODE" ON "AWARD" ("AWARD_TYPE_CODE");
CREATE INDEX "IX_AWARD_PRIMESPONSOR" ON "AWARD" ("PRIME_SPONSOR_CODE");
CREATE INDEX "IX_AWARD_METHPAYCODE" ON "AWARD" ("METHOD_OF_PAYMENT_CODE");
CREATE INDEX "IX_AWARD_PROCPRIORCODE" ON "AWARD" ("PROCUREMENT_PRIORITY_CODE");
CREATE INDEX "IX_AWARD_BASISPAYCODE" ON "AWARD" ("BASIS_OF_PAYMENT_CODE");
CREATE INDEX "IX_AWARD_TEMPLATECODE" ON "AWARD" ("TEMPLATE_CODE");
CREATE INDEX "IX_AWARD_NSFCODE" ON "AWARD" ("NSF_CODE");
CREATE INDEX "IX_AWARD_ACCOUNTCODE" ON "AWARD" ("ACCOUNT_TYPE_CODE");
CREATE INDEX "IX_AWARD_FINCHARTSCODE" ON "AWARD" ("FIN_CHART_OF_ACCOUNTS_CODE");

-- RES-584
CREATE INDEX "IX_AWARDCOM_TYPECODE" ON "AWARD_COMMENT" ("COMMENT_TYPE_CODE");

-- RES-585
CREATE INDEX "IX_AWDREPTRMS_REPCLASSCODE" ON "AWARD_REPORT_TERMS" ("REPORT_CLASS_CODE");
CREATE INDEX "IX_AWDREPTRMS_REPCODE" ON "AWARD_REPORT_TERMS" ("REPORT_CODE");
CREATE INDEX "IX_AWDREPTRMS_FREQCODE" ON "AWARD_REPORT_TERMS" ("FREQUENCY_CODE");
CREATE INDEX "IX_AWDREPTRMS_FREQBASECODE" ON "AWARD_REPORT_TERMS" ("FREQUENCY_BASE_CODE");
CREATE INDEX "IX_AWDREPTRMS_OSPDISTCODE" ON "AWARD_REPORT_TERMS" ("OSP_DISTRIBUTION_CODE");

-- RES-586
CREATE INDEX "IX_AWDREPTRK_01" ON "AWARD_REPORT_TRACKING" ("AWARD_REPORT_TERM_ID");
CREATE INDEX "IX_AWDREPTRK_02" ON "AWARD_REPORT_TRACKING" ("AWARD_NUMBER");
CREATE INDEX "IX_AWDREPTRK_03" ON "AWARD_REPORT_TRACKING" ("PI_PERSON_ID");
CREATE INDEX "IX_AWDREPTRK_04" ON "AWARD_REPORT_TRACKING" ("PI_ROLODEX_ID");
CREATE INDEX "IX_AWDREPTRK_05" ON "AWARD_REPORT_TRACKING" ("LEAD_UNIT_NUMBER");
CREATE INDEX "IX_AWDREPTRK_06" ON "AWARD_REPORT_TRACKING" ("REPORT_CLASS_CODE");
CREATE INDEX "IX_AWDREPTRK_07" ON "AWARD_REPORT_TRACKING" ("REPORT_CODE");
CREATE INDEX "IX_AWDREPTRK_08" ON "AWARD_REPORT_TRACKING" ("FREQUENCY_CODE");
CREATE INDEX "IX_AWDREPTRK_09" ON "AWARD_REPORT_TRACKING" ("FREQUENCY_BASE_CODE");
CREATE INDEX "IX_AWDREPTRK_10" ON "AWARD_REPORT_TRACKING" ("OSP_DISTRIBUTION_CODE");
CREATE INDEX "IX_AWDREPTRK_11" ON "AWARD_REPORT_TRACKING" ("STATUS_CODE");
CREATE INDEX "IX_AWDREPTRK_12" ON "AWARD_REPORT_TRACKING" ("SPONSOR_CODE");
CREATE INDEX "IX_AWDREPTRK_13" ON "AWARD_REPORT_TRACKING" ("SPONSOR_AWARD_NUMBER");


-- RES-587
CREATE INDEX "IX_AWDSPONCON_01" ON "AWARD_SPONSOR_CONTACTS" ("AWARD_ID");
CREATE INDEX "IX_AWDSPONCON_02" ON "AWARD_SPONSOR_CONTACTS" ("AWARD_NUMBER","SEQUENCE_NUMBER");
CREATE INDEX "IX_AWDSPONCON_03" ON "AWARD_SPONSOR_CONTACTS" ("ROLODEX_ID");
CREATE INDEX "IX_AWDSPONCON_04" ON "AWARD_SPONSOR_CONTACTS" ("CONTACT_ROLE_CODE");

-- RES-588
CREATE INDEX "IX_AWDUNITCONTACTS_01" ON "AWARD_UNIT_CONTACTS" ("AWARD_ID");
CREATE INDEX "IX_AWDUNITCONTACTS_02" ON "AWARD_UNIT_CONTACTS" ("AWARD_NUMBER","SEQUENCE_NUMBER");
CREATE INDEX "IX_AWDUNITCONTACTS_03" ON "AWARD_UNIT_CONTACTS" ("PERSON_ID");
CREATE INDEX "IX_AWDUNITCONTACTS_04" ON "AWARD_UNIT_CONTACTS" ("UNIT_ADMINISTRATOR_TYPE_CODE");
CREATE INDEX "IX_AWDUNITCONTACTS_05" ON "AWARD_UNIT_CONTACTS" ("UNIT_ADMINISTRATOR_UNIT_NUMBER");

-- RES-589
CREATE INDEX "IX_AWDSPONTERM_02" ON "AWARD_SPONSOR_TERM" ("AWARD_NUMBER","SEQUENCE_NUMBER");

-- RES-590
CREATE INDEX "IX_AWDAMTINFO_01" ON "AWARD_AMOUNT_INFO" ("TNM_DOCUMENT_NUMBER");

-- RES-591
CREATE INDEX "IX_AWDHIER_01" ON "AWARD_HIERARCHY" ("AWARD_NUMBER","ACTIVE");
CREATE INDEX "IX_AWDHIER_02" ON "AWARD_HIERARCHY" ("ROOT_AWARD_NUMBER","ACTIVE");

-- RES-592
CREATE INDEX "IX_AWDPERUNITS_AWDPERSID" ON "AWARD_PERSON_UNITS" ("AWARD_PERSON_ID");
CREATE INDEX "IX_AWDPERUNITS_UNITNUM" ON "AWARD_PERSON_UNITS" ("UNIT_NUMBER");


-- RES-600
update KRCR_PARM_T set VAL='Summary' where PARM_NM='proposaldevelopment.approver.view.title' AND VAL='Proposal Summary';


 -- RES-514
  CREATE TABLE "PROTOCOL_KEYWORD" 
   (	"PROTOCOL_KEYWORD_ID" NUMBER(12,0), 
	"PROTOCOL_ID" NUMBER(22,0) NOT NULL ENABLE, 
	"VER_NBR" NUMBER(8,0) DEFAULT 1 NOT NULL ENABLE, 
	"KEYWORD_CODE" VARCHAR2(15 BYTE) NOT NULL ENABLE, 
	"UPDATE_TIMESTAMP" DATE NOT NULL ENABLE, 
	"UPDATE_USER" VARCHAR2(60 BYTE) NOT NULL ENABLE, 
	"OBJ_ID" VARCHAR2(36 BYTE) NOT NULL ENABLE, 
	 CONSTRAINT "PROTOCOL_KEYWORDP1" PRIMARY KEY ("PROTOCOL_KEYWORD_ID")
  USING INDEX COMPUTE STATISTICS  ENABLE, 
	 CONSTRAINT "FK_PROTOCOL_KEYWORD2" FOREIGN KEY ("KEYWORD_CODE")
	  REFERENCES "SCIENCE_KEYWORD" ("SCIENCE_KEYWORD_CODE") ENABLE, 
	 CONSTRAINT "FK_PROTOCOL_KEYWORD" FOREIGN KEY ("PROTOCOL_ID")
	  REFERENCES "PROTOCOL" ("PROTOCOL_ID") ENABLE
   );

  CREATE INDEX "IX_PROTOCOL_KEY_PROT_ID" ON "PROTOCOL_KEYWORD" ("PROTOCOL_ID") COMPUTE STATISTICS; 
  CREATE INDEX "IX_PROTOCOL_KEY_SCICODE" ON "PROTOCOL_KEYWORD" ("KEYWORD_CODE") COMPUTE STATISTICS; 


  CREATE SEQUENCE "SEQ_PROTOCOL_KEYWORD_ID"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE;

 -- end RES-514

-- RES-515

  CREATE TABLE "IACUC_PROTOCOL_KEYWORD" 
   (	"IACUC_PROTOCOL_KEYWORD_ID" NUMBER(12,0), 
	"IACUC_PROTOCOL_ID" NUMBER(22,0) NOT NULL ENABLE, 
	"VER_NBR" NUMBER(8,0) DEFAULT 1 NOT NULL ENABLE, 
	"KEYWORD_CODE" VARCHAR2(15 BYTE) NOT NULL ENABLE, 
	"UPDATE_TIMESTAMP" DATE NOT NULL ENABLE, 
	"UPDATE_USER" VARCHAR2(60 BYTE) NOT NULL ENABLE, 
	"OBJ_ID" VARCHAR2(36 BYTE) NOT NULL ENABLE, 
	 CONSTRAINT "IACUC_PROTOCOL_KEYWORDP1" PRIMARY KEY ("IACUC_PROTOCOL_KEYWORD_ID")
  USING INDEX COMPUTE STATISTICS  ENABLE, 
	 CONSTRAINT "FK_IACUC_PROTOCOL_KEYWORD2" FOREIGN KEY ("KEYWORD_CODE")
	  REFERENCES "SCIENCE_KEYWORD" ("SCIENCE_KEYWORD_CODE") ENABLE, 
	 CONSTRAINT "FK_IACUC_PROTOCOL_KEYWORD" FOREIGN KEY ("IACUC_PROTOCOL_ID")
	  REFERENCES "IACUC_PROTOCOL" ("PROTOCOL_ID") ENABLE
   );

  CREATE INDEX "IX_IACUC_PROTOCOL_KEY_PROT_ID" ON "IACUC_PROTOCOL_KEYWORD" ("IACUC_PROTOCOL_ID") COMPUTE STATISTICS; 
  CREATE INDEX "IX_IACUC_PROTOCOL_KEY_SCICODE" ON "IACUC_PROTOCOL_KEYWORD" ("KEYWORD_CODE") COMPUTE STATISTICS; 


  CREATE SEQUENCE "SEQ_IACUC_PROTOCOL_KEYWORD_ID"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE;


 -- RES-517
  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-AWARD','Document','ARIAH_AWARD_HIDE_KEYWORDS_PANEL', sys_guid(),0,'CONFG','N','Flag to determine if the Keywords Panel is hidden on an Award.','A','KUALI');
 

 -- RES-518
  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-PROTOCOL','Document','ARIAH_IRBPROTOCOL_HIDE_KEYWORDS_PANEL', sys_guid(),0,'CONFG','N','Flag to determine if the Keywords Panel is hidden on an IRB Protocol.','A','KUALI');


 -- RES-519
  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-IACUC','Document','ARIAH_IACUCPROTOCOL_HIDE_KEYWORDS_PANEL', sys_guid(),0,'CONFG','N','Flag to determine if the Keywords Panel is hidden on an IACUC Protocol.','A','KUALI');


 -- RES-516
  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-IP','Document','ARIAH_INSTPROPOSAL_HIDE_KEYWORDS_PANEL', sys_guid(),0,'CONFG','N','Flag to determine if the Keywords Panel is hidden on an Inst Proposal.','A','KUALI');

 -- RES-548
update NARRATIVE_TYPE set DESCRIPTION='Project Summary' where DESCRIPTION='ProjectSummary';
update NARRATIVE_TYPE set DESCRIPTION='Budget Justification' where DESCRIPTION='BudgetJustification';
update NARRATIVE_TYPE set DESCRIPTION='Subaward Budget' where DESCRIPTION='SubawardBudget';
update NARRATIVE_TYPE set DESCRIPTION='Table of Contents' where DESCRIPTION='TableofContents';
update NARRATIVE_TYPE set DESCRIPTION='Supplementary Documentation' where DESCRIPTION='SupplementaryDocumentation';
update NARRATIVE_TYPE set DESCRIPTION='Additional Congressional Districts' where DESCRIPTION='AdditionalCongressionalDistricts';
update NARRATIVE_TYPE set DESCRIPTION='Personal Data' where DESCRIPTION='PersonalData';
update NARRATIVE_TYPE set DESCRIPTION='Additional Equipment' where DESCRIPTION='Additionalequipment';
update NARRATIVE_TYPE set DESCRIPTION='Additional Key Persons' where DESCRIPTION='Additionalkeypersons';
update NARRATIVE_TYPE set DESCRIPTION='Current Pending' where DESCRIPTION='CurrentPending';


 -- RES-627
  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-COIDISCLOSURE','Document','ARIAH_COI_HIDE_AND_DEFAULT_COI_DOC_DESC', sys_guid(),0,'CONFG','Y','Flag to determine if the document description panel is hidden on a COI Disclosure record.','A','KUALI');


-- RES-642
delete from KRIM_PERM_ATTR_DATA_T where
PERM_ID=(select PERM_ID from KRIM_PERM_T where NM='Ad Hoc Review Document - Approve')
and KIM_TYP_ID=(select KIM_TYP_ID from KRIM_TYP_T where NM='Ad Hoc Review')
and KIM_ATTR_DEFN_ID=(select KIM_ATTR_DEFN_ID from KRIM_ATTR_DEFN_T where NM='documentTypeName')
and ATTR_VAL='KC';

delete from KRIM_PERM_ATTR_DATA_T where
PERM_ID=(select PERM_ID from KRIM_PERM_T where NM='Ad Hoc Review Document - FYI')
and KIM_TYP_ID=(select KIM_TYP_ID from KRIM_TYP_T where NM='Ad Hoc Review')
and KIM_ATTR_DEFN_ID=(select KIM_ATTR_DEFN_ID from KRIM_ATTR_DEFN_T where NM='documentTypeName')
and ATTR_VAL='KC';

delete from KRIM_PERM_ATTR_DATA_T where
PERM_ID=(select PERM_ID from KRIM_PERM_T where NM='Ad Hoc Review Document - Acknowledge')
and KIM_TYP_ID=(select KIM_TYP_ID from KRIM_TYP_T where NM='Ad Hoc Review')
and KIM_ATTR_DEFN_ID=(select KIM_ATTR_DEFN_ID from KRIM_ATTR_DEFN_T where NM='documentTypeName')
and ATTR_VAL='KC';


 -- RES-645
  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-PD','Document','ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_RECIP_SENDTO', sys_guid(),0,'CONFG','UNITADMIN','Parameter to determine which type of entity to assign the PD Finance Workflow step to. Allowed values are PERSON, ROLE, or UNITADMIN.','A','KUALI');

  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-PD','Document','ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_RECIP_PRINCIPALIDS', sys_guid(),0,'CONFG','','Parameter to specify a comma-delimited list of Principal/Person IDs for whom to send the PD Finance approval step to if the workflow step is active and triggered.','A','KUALI');

  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-PD','Document','ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_RECIP_ROLEIDS', sys_guid(),0,'CONFG','','Parameter to specify a comma-delimited list of Role IDs for whom to send the PD Finance approval step to if the workflow step is active and triggered','A','KUALI');

  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-PD','Document','ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_TRIGGER_UNDERRECOV_ENABLED', sys_guid(),0,'CONFG','N','Parameter to specify if the PD Finance workflow step should be triggered if a Budget that is FINAL has an amount of Underrecovery GREATER than a certain value specified in the ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_TRIGGER_UNDERRECOV_AMOUNT parameter.','A','KUALI');

  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-PD','Document','ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_TRIGGER_UNDERRECOV_AMOUNT', sys_guid(),0,'CONFG','0','Numeric amount to use if the ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_TRIGGER_UNDERRECOV_ENABLED parameter is enabled.','A','KUALI');

  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-PD','Document','ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_TRIGGER_COSTSHARE_ENABLED', sys_guid(),0,'CONFG','N','Parameter to specify if the PD Finance workflow step should be triggered if a Budget that is FINAL has an amount of Costsharing GREATER than a certain value specified in the ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_TRIGGER_COSTSHARE_AMOUNT parameter.','A','KUALI');

  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-PD','Document','ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_TRIGGER_COSTSHARE_AMOUNT', sys_guid(),0,'CONFG','0','Numeric amount to use if the ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_TRIGGER_COSTSHARE_ENABLED parameter is enabled.','A','KUALI');

   update krcr_parm_t set PARM_NM='ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_TRIGGER_ALWAYS_ENABLED' where PARM_NM='ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_ENABLED';
   update krcr_parm_t set PARM_NM='ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_RECIP_UNITADMINTYPECODE' where PARM_NM='ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_UNITADMINTYPECODE';


-- RES-647
alter table COI_DISCL_PROJECTS MODIFY COI_PROJECT_TITLE VARCHAR2(2000);


-- RES-648
alter table AWARD_TEMPLATE disable constraint FK_AWARD_TEMPLATE_SPONSOR;
alter table NEGOTIATION_UNASSOC_DETAIL disable constraint NEGOTIATION_UNASSOC_DETAIL_FK3;
alter table NEGOTIATION_UNASSOC_DETAIL disable constraint NEGOTIATION_UNASSOC_DETAIL_FK4;
alter table PROPOSAL disable constraint FK_PROPOSAL_SPONSOR_CODE;
alter table SPONSOR_HIERARCHY disable constraint FK_SPONSOR_HIERARCHY_KRA;
alter table SPONSOR_FORMS disable constraint FK_SPONSOR_FORMS;
alter table SPONSOR_FORMS disable constraint SPONSOR_FORMSU1;
alter table AWARD_TRANSFERRING_SPONSOR disable constraint FK2_AWARD_TRANSFERRING_SPONSOR;

alter table AWARD_REPORT_TRACKING MODIFY SPONSOR_CODE VARCHAR2(12);
alter table SPONSOR_HIERARCHY_MT MODIFY SPONSOR_CODE VARCHAR2(12);
alter table PERSON_FIN_INT_DISCLOSURE MODIFY SPONSOR_CODE VARCHAR2(12);
alter table ROLODEX MODIFY SPONSOR_CODE VARCHAR2(12);
alter table PROPOSAL_LOG MODIFY SPONSOR_CODE VARCHAR2(12);
alter table EPS_PROPOSAL MODIFY SPONSOR_CODE VARCHAR2(12);
alter table EPS_PROPOSAL MODIFY PRIME_SPONSOR_CODE VARCHAR2(12);
alter table AWARD MODIFY SPONSOR_CODE VARCHAR2(12);
alter table AWARD MODIFY PRIME_SPONSOR_CODE VARCHAR2(12);

alter table NEGOTIATION_UNASSOC_DETAIL drop constraint "NEGOTIATION_UNASSOC_DETAIL_FK3";
alter table NEGOTIATION_UNASSOC_DETAIL drop constraint "NEGOTIATION_UNASSOC_DETAIL_FK4";
alter table NEGOTIATION_UNASSOC_DETAIL MODIFY SPONSOR_CODE VARCHAR2(12);
alter table NEGOTIATION_UNASSOC_DETAIL MODIFY PRIME_SPONSOR_CODE VARCHAR2(12);

alter table AWARD_TRANSFERRING_SPONSOR drop constraint "FK2_AWARD_TRANSFERRING_SPONSOR";
alter table AWARD_TRANSFERRING_SPONSOR MODIFY SPONSOR_CODE VARCHAR2(12);

alter table AWARD_TEMPLATE drop CONSTRAINT "FK_AWARD_TEMPLATE_SPONSOR";
alter table AWARD_TEMPLATE MODIFY PRIME_SPONSOR_CODE VARCHAR2(12);

alter table PROPOSAL drop CONSTRAINT "FK_PROPOSAL_SPONSOR_CODE";
alter table PROPOSAL MODIFY SPONSOR_CODE VARCHAR2(12);
alter table PROPOSAL MODIFY PRIME_SPONSOR_CODE VARCHAR2(12);

alter table SPONSOR_HIERARCHY drop CONSTRAINT "FK_SPONSOR_HIERARCHY_KRA";
alter table SPONSOR_HIERARCHY MODIFY SPONSOR_CODE VARCHAR2(12);

alter table SPONSOR_FORMS drop CONSTRAINT "FK_SPONSOR_FORMS";
alter table SPONSOR_FORMS MODIFY SPONSOR_CODE VARCHAR2(12);

alter table SPONSOR MODIFY SPONSOR_CODE VARCHAR2(12);

alter table NEGOTIATION_UNASSOC_DETAIL add CONSTRAINT "NEGOTIATION_UNASSOC_DETAIL_FK3" FOREIGN KEY ("SPONSOR_CODE") REFERENCES "SPONSOR" ("SPONSOR_CODE") ENABLE;
alter table NEGOTIATION_UNASSOC_DETAIL add CONSTRAINT "NEGOTIATION_UNASSOC_DETAIL_FK4" FOREIGN KEY ("PRIME_SPONSOR_CODE") REFERENCES "SPONSOR" ("SPONSOR_CODE") ENABLE;
alter table AWARD_TRANSFERRING_SPONSOR add CONSTRAINT "FK2_AWARD_TRANSFERRING_SPONSOR" FOREIGN KEY ("SPONSOR_CODE") REFERENCES "SPONSOR" ("SPONSOR_CODE") ENABLE;
alter table AWARD_TEMPLATE add CONSTRAINT "FK_AWARD_TEMPLATE_SPONSOR" FOREIGN KEY ("PRIME_SPONSOR_CODE") REFERENCES "SPONSOR" ("SPONSOR_CODE") ENABLE;
alter table PROPOSAL add CONSTRAINT "FK_PROPOSAL_SPONSOR_CODE" FOREIGN KEY ("SPONSOR_CODE") REFERENCES "SPONSOR" ("SPONSOR_CODE") ENABLE;
alter table SPONSOR_HIERARCHY add CONSTRAINT "FK_SPONSOR_HIERARCHY_KRA" FOREIGN KEY ("SPONSOR_CODE") REFERENCES "SPONSOR" ("SPONSOR_CODE") ON DELETE CASCADE ENABLE;
alter table SPONSOR_FORMS add CONSTRAINT "FK_SPONSOR_FORMS" FOREIGN KEY ("SPONSOR_CODE") REFERENCES "SPONSOR" ("SPONSOR_CODE") ENABLE;


-- RES-671
alter table PERSON_CUSTOM_DATA add PERSON_ID_NEW VARCHAR2(40);
update PERSON_CUSTOM_DATA set PERSON_ID_NEW=PERSON_ID;
update BUDGET_PERSONS set PERSON_ID = null;
alter table PERSON_CUSTOM_DATA modify PERSON_ID VARCHAR2(40);
update PERSON_CUSTOM_DATA set PERSON_ID=PERSON_ID_NEW;
alter table PERSON_CUSTOM_DATA drop column PERSON_ID_NEW;


 -- RES-545
alter table AWARD add ACTIVITY_TYPE_CODE_2 NUMBER;
update AWARD set ACTIVITY_TYPE_CODE_2 = ACTIVITY_TYPE_CODE;
alter table AWARD drop column ACTIVITY_TYPE_CODE;
alter table AWARD add ACTIVITY_TYPE_CODE VARCHAR2(3);
update AWARD set ACTIVITY_TYPE_CODE = ACTIVITY_TYPE_CODE_2;
alter table AWARD drop column ACTIVITY_TYPE_CODE_2;
alter table AWARD modify ACTIVITY_TYPE_CODE VARCHAR2(3) NOT NULL;


-- RES-674
update krcr_parm_t set PARM_DESC_TXT='Flag in a dev proposal record to display the Delivery Info subpanel on the main Proposal tab. If Y then the subpanel is displayed. If N then the subpanel is not displayed.' where PARM_NM='deliveryInfoDisplayIndicator';

update krcr_parm_t set PARM_DESC_TXT='A semi-colon delimited list of regular expressions that identify potentially sensitive data in strings.  These patterns will be matched against notes, document explanations, and routing annotations.' where PARM_NM='SENSITIVE_DATA_PATTERNS';

update krcr_parm_t set PARM_DESC_TXT='Code corresponding to Proposal Type Participant Tuition Category' where PARM_NM='s2sBudgetParticipantTutionCategory';

update krcr_parm_t set PARM_DESC_TXT='When set to BS, key person certification questionnaire must be completed Before Submitting a proposal to workflow. A value of BA indicates the questionnaire can be completed at any point Before Approval.' where PARM_NM='KEY_PERSON_CERTIFICATION_DEFERRAL';

update krcr_parm_t set PARM_DESC_TXT='Flag to enable all sponsor to NIH MultiPI Hierarchy' where PARM_NM='ALL_SPONSOR_HIERARCHY_NIH_MULTI_PI';

update krcr_parm_t set PARM_DESC_TXT='Determines the length of time that default follow up date is set to on the subaward closeout panel.  Valid setting is a number followed by a D or a W.  6W means six weeks, 10D means 10 days.' where PARM_NM='Subaward Follow Up';

update krcr_parm_t set PARM_DESC_TXT='Institutional Proposal Intellectual Property Review Activity Help' where PARM_NM='permissionsHelpUrl';
update krcr_parm_t set PARM_DESC_TXT='Institutional Proposal Intellectual Property Review Activity Help' where PARM_NM='IntellectualPropertyReviewActivityHelpUrl';

update krcr_parm_t set PARM_DESC_TXT='A Negotiation Document Overview' where PARM_NM='negotiationNegotiationHelp';
update krcr_parm_t set PARM_DESC_TXT='Reference id is configurable at impl time' where PARM_NM='irb.protocol.referenceID1';
update krcr_parm_t set PARM_DESC_TXT='Reference id is configurable at impl time' where PARM_NM='irb.protocol.referenceID2';
update krcr_parm_t set PARM_DESC_TXT='Comma seperated list of Document Types to exclude from the Rule Quicklinks.' where PARM_NM='RESTRICT_DOCUMENT_TYPES';
update krcr_parm_t set PARM_DESC_TXT='Defines whether the debug transform is enabled for eDocLite.' where PARM_NM='DEBUG_TRANSFORM_IND';

-- RES-677
  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-PROTOCOL','Document','ARIAH_IRB_PROTOCOL_ATTACHMENT_TYPECODE_OTHER', sys_guid(),0,'CONFG','9','The IRB Protocol Attachment Type Code representing the OTHER type.','A','KUALI');

 -- RES-695
   INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-B','Document','ARIAH_PROPDEV_BUDGET_CATEGORY_TYPECODE_SUBPROJECTS', sys_guid(),0,'CONFG','H','Budget Category Type code representing Proposal Hierarchy Subprojects/Subcontracts.','A','KUALI');

   INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-B','Document','ARIAH_PROPDEV_BUDGET_CATEGORY_TYPECODE_TRAVEL', sys_guid(),0,'CONFG','T','Budget Category Type code representing Travel.','A','KUALI');

   INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-B','Document','ARIAH_PROPDEV_BUDGET_CATEGORY_TYPECODE_EQUIPMENT', sys_guid(),0,'CONFG','E','Budget Category Type code representing Equipment.','A','KUALI');

 INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-B','Document','ARIAH_PROPDEV_BUDGET_CATEGORY_TYPECODE_SUPPMATRL', sys_guid(),0,'CONFG','O','Budget Category Type code representing Supplies/Materials.','A','KUALI');


  --RES-702
  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-PD','Document','HIERARCHY_LEVEL', sys_guid(),0,'CONFG','1','Parameter to specify how deep in a unit hierarchy to iterate when determining the Division Name of a PI for the S2S RR Key Person Expanded v2.0 form.','A','KUALI');


 -- RES-709 : NSF CoverPage v1.6
Insert into NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,SYSTEM_GENERATED,ALLOW_MULTIPLE,NARRATIVE_TYPE_GROUP,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
  values ('400','NSF Mentoring Plan','N','N','P',sysdate,'admin',1,sys_guid());

insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'NSF_CoverPage_1_6-V1.6',400,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'NSF_CoverPage_1_6-V1.6',200,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'NSF_CoverPage_1_6-V1.6',13,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'NSF_CoverPage_1_6-V1.6',14,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'NSF_CoverPage_1_6-V1.6',87,'N',sysdate,'admin',sys_guid())
/

INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100000,'NSFCoverPageFundingMechanism','RAPID','RAPID',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100001,'NSFCoverPageFundingMechanism','EAGER','EAGER',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100002,'NSFCoverPageFundingMechanism','Research - Other than RAPID or EAGER','Research - Other than RAPID or EAGER',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100003,'NSFCoverPageFundingMechanism','Ideas Lab','Ideas Lab',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100004,'NSFCoverPageFundingMechanism','International Travel','International Travel',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100005,'NSFCoverPageFundingMechanism','Conference','Conference',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100006,'NSFCoverPageFundingMechanism','Equipment','Equipment',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100007,'NSFCoverPageFundingMechanism','Fellowship','Fellowship',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100008,'NSFCoverPageFundingMechanism','Facility/Center','Facility/Center',sysdate,'admin',1,SYS_GUID());


Insert into QUESTIONNAIRE (QUESTIONNAIRE_REF_ID,QUESTIONNAIRE_ID,SEQUENCE_NUMBER,NAME,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,IS_FINAL,VER_NBR,OBJ_ID,FILE_NAME,DOCUMENT_NUMBER) 
   values (SEQ_QUESTIONNAIRE_REF_ID.nextval,SEQ_QUESTIONNAIRE_ID.nextval,1,'NSF Cover Page v1.6 S2S form supporting questions',
   'These questions support  NSF Cover Page v1.6 Grants.gov forms.',
   sysdate,'admin','Y',1,sys_guid(),null,null);

Insert into QUESTIONNAIRE_USAGE (QUESTIONNAIRE_USAGE_ID,MODULE_ITEM_CODE,MODULE_SUB_ITEM_CODE,QUESTIONNAIRE_REF_ID_FK,QUESTIONNAIRE_SEQUENCE_NUMBER,QUESTIONNAIRE_LABEL,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,IS_MANDATORY,RULE_ID)
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,3,2,
  (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='NSF Cover Page v1.6 S2S form supporting questions'),
  1,'NSF Cover Page v1.6 S2S form supporting questions', sysdate,'admin',1,sys_guid(),'N',null);

Insert into S2S_FORM_TO_QUESTIONNAIRE (S2S_FORM_TO_QUESTIONNAIRE_ID,OPP_NAME_SPACE,FORM_NAME,QUESTIONNAIRE_ID,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID,VER_NBR) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,'http://apply.grants.gov/forms/NSF_CoverPage_1_6-V1.6','NSF_CoverPage_1_6-V1.6',
     (select MAX(QUESTIONNAIRE_ID) from QUESTIONNAIRE where NAME='NSF Cover Page v1.6 S2S form supporting questions'),sysdate,'admin',sys_guid(),1);




Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
   values (SEQ_QUESTIONNAIRE_REF_ID.nextval,101000,1,'A','Please select a Funding Mechanism.',
   'A',2,6,'org.kuali.kra.bo.ArgValueLookup','NSFCoverPageFundingMechanism',null,1,null,sysdate,'admin',1,sys_guid(),null);
   
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,
     CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
  (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='NSF Cover Page v1.6 S2S form supporting questions'),
  (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=101000),
  5,0,'N',null,null,sysdate,'admin',5,1,SYS_GUID(),null);


Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,
     CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
  (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='NSF Cover Page v1.6 S2S form supporting questions'),
  (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=52),
  1,0,'N',null,null,sysdate,'admin',1,1,SYS_GUID(),null);

Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,
     CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
  (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='NSF Cover Page v1.6 S2S form supporting questions'),
  (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=53),
  2,0,'N',null,null,sysdate,'admin',2,1,SYS_GUID(),null);

Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,
     CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
  (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='NSF Cover Page v1.6 S2S form supporting questions'),
  (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=56),
  3,0,'N',null,null,sysdate,'admin',3,1,SYS_GUID(),null);

Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,
     CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
  (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='NSF Cover Page v1.6 S2S form supporting questions'),
  (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=10088),
  4,0,'N',null,null,sysdate,'admin',4,1,SYS_GUID(),null);

Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,
     CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
  (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='NSF Cover Page v1.6 S2S form supporting questions'),
  (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=65),
  6,3,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);




 --RES-696 : Forms-D work

Insert into NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,SYSTEM_GENERATED,ALLOW_MULTIPLE,NARRATIVE_TYPE_GROUP,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
  values ('146','PHS_ResearchPlan_KeyBiologicalAndOrChemicalResources','N','N','P',sysdate,'admin',1,sys_guid());


insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchPlan_3_0',146,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchPlan_3_0',111,'Y',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchPlan_3_0',20,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchPlan_3_0',21,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchPlan_3_0',25,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchPlan_3_0',26,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchPlan_3_0',28,'N',sysdate,'admin',sys_guid())
/ 
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchPlan_3_0',29,'N',sysdate,'admin',sys_guid())
/    
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchPlan_3_0',30,'N',sysdate,'admin',sys_guid())
/  
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchPlan_3_0',31,'N',sysdate,'admin',sys_guid())
/  
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchPlan_3_0',32,'N',sysdate,'admin',sys_guid())
/  
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchPlan_3_0',33,'N',sysdate,'admin',sys_guid())
/  
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchPlan_3_0',34,'N',sysdate,'admin',sys_guid())
/  
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchPlan_3_0',44,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchPlan_3_0',45,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchPlan_3_0',46,'N',sysdate,'admin',sys_guid())
/  

-- RES-696 : Forms-D work : phs-assignment-request-form
Insert into QUESTIONNAIRE (QUESTIONNAIRE_REF_ID,QUESTIONNAIRE_ID,SEQUENCE_NUMBER,NAME,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,IS_FINAL,VER_NBR,OBJ_ID,FILE_NAME,DOCUMENT_NUMBER) 
   values (SEQ_QUESTIONNAIRE_REF_ID.nextval,SEQ_QUESTIONNAIRE_ID.nextval,1,
            'PHS Assignment Request Form V1.0','The responses are used to populate the PHS Assignment Request Form version 1.0 for submission via Grants.gov.',
            sysdate,'admin','Y',1,SYS_GUID(),null,null);
            
            
Insert into S2S_FORM_TO_QUESTIONNAIRE (S2S_FORM_TO_QUESTIONNAIRE_ID,OPP_NAME_SPACE,FORM_NAME,QUESTIONNAIRE_ID,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID,VER_NBR) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,'http://apply.grants.gov/forms/PHS_AssignmentRequestForm-V1.0','PHS_AssignmentRequestForm',
     (select MAX(QUESTIONNAIRE_ID) from QUESTIONNAIRE where NAME='PHS Assignment Request Form V1.0'),sysdate,'admin',sys_guid(),1);


Insert into QUESTIONNAIRE_USAGE (QUESTIONNAIRE_USAGE_ID,MODULE_ITEM_CODE,MODULE_SUB_ITEM_CODE,QUESTIONNAIRE_REF_ID_FK,QUESTIONNAIRE_SEQUENCE_NUMBER,QUESTIONNAIRE_LABEL,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,IS_MANDATORY,RULE_ID)
   values (SEQ_QUESTIONNAIRE_REF_ID.nextval,3,2, (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Assignment Request Form V1.0'), 1,'PHS Assignment Request Form V1.0',sysdate,'admin',1,sys_guid(),'Y',null);

-- 1. Awarding Component Assignment?
Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
   values (SEQ_QUESTIONNAIRE_REF_ID.nextval,100025,1,'A','If you have a preference for an Awarding Component (e.g., NIH Institute/Center) assignment, please use the link https://grants.nih.gov/grants/phs_assignment_information.htm#AwardingComponents to identify the most appropriate assignment then enter the short abbreviation (e.g., NCI for National Cancer Institute) in Assign to/Do Not Assign To Awarding Component sections below. Do you have a preference for an Awarding Component assignment?',
   'A',2,1,null,null,null,1,1,sysdate,'admin',1,sys_guid(),null);
   
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,
     CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
  (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Assignment Request Form V1.0'),
  (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=100025),
  1,0,'N',null,null,sysdate,'admin',1,1,SYS_GUID(),null);

-- 1. Awarding Component Assignment?
Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
   values (SEQ_QUESTIONNAIRE_REF_ID.nextval,100025,1,'A','If you have a preference for an Awarding Component (e.g., NIH Institute/Center) assignment, please use the link https://grants.nih.gov/grants/phs_assignment_information.htm#AwardingComponents to identify the most appropriate assignment then enter the short abbreviation (e.g., NCI for National Cancer Institute) in Assign to/Do Not Assign To Awarding Component sections below. Do you have a preference for an Awarding Component assignment?',
   'A',2,1,null,null,null,1,1,sysdate,'admin',1,sys_guid(),null);
   
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,
     CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
  (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Assignment Request Form V1.0'),
  (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=100025),
  1,0,'N',null,null,sysdate,'admin',1,1,SYS_GUID(),null);

-- 1a. Assign to Awarding Component?
Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
   values (SEQ_QUESTIONNAIRE_REF_ID.nextval,100026,1,'A','Do you need to assign to Awarding Component?',
   'A',2,1,null,null,null,1,1,sysdate,'admin',1,sys_guid(),null);
   
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,
     CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
  (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Assignment Request Form V1.0'),
  (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=100026),
  2,1,'Y','4','Y',sysdate,'admin',2,1,SYS_GUID(),null);

-- 1ai. Assign to Awarding Component Fields?
Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
   values (SEQ_QUESTIONNAIRE_REF_ID.nextval,100027,1,'A','Assign to Awarding Component.',
   'A',4,5,null,null,null,3,7,sysdate,'admin',1,sys_guid(),null);
   
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,
     CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
  (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Assignment Request Form V1.0'),
  (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=100027),
  3,2,'Y','4','Y',sysdate,'admin',3,1,SYS_GUID(),null);

-- 1b. Do Not Assign to Awarding Component?
Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
   values (SEQ_QUESTIONNAIRE_REF_ID.nextval,100028,1,'A','Are there Awarding Components that you do NOT want assigned?',
   'A',2,1,null,null,null,1,1,sysdate,'admin',1,sys_guid(),null);
   
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,
     CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
  (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Assignment Request Form V1.0'),
  (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=100028),
  4,1,'Y','4','Y',sysdate,'admin',4,1,SYS_GUID(),null);

-- 1bi. Assign to Awarding Component Fields?
Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
   values (SEQ_QUESTIONNAIRE_REF_ID.nextval,100029,1,'A','Do NOT assign to Awarding Component.',
   'A',4,5,null,null,null,3,7,sysdate,'admin',1,sys_guid(),null);
   
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,
     CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
  (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Assignment Request Form V1.0'),
  (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=100029),
  5,4,'Y','4','Y',sysdate,'admin',5,1,SYS_GUID(),null);

-- QUESTION 2 STUDY SECTION
-- 2. Study Section Assignment?

Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
   values (SEQ_QUESTIONNAIRE_REF_ID.nextval,100030,1,'A','If you have a preference for a study section assignment, please use the link https://grants.nih.gov/grants/phs_assignment_information.htm#StudySection to identify the most appropriate study section then enter the short abbreviation for that study section in Assign to/Do not Assign to Study Section sections below. Do you have a preference for a Study Section Assignment?',
   'A',2,1,null,null,null,1,1,sysdate,'admin',1,sys_guid(),null);
   
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,
     CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
  (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Assignment Request Form V1.0'),
  (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=100030),
  6,0,'N',null,null,sysdate,'admin',6,1,SYS_GUID(),null);

-- 2a. Assign to Study Section?
Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
   values (SEQ_QUESTIONNAIRE_REF_ID.nextval,100031,1,'A','Do you need to assign to Study Section?',
   'A',2,1,null,null,null,1,1,sysdate,'admin',1,sys_guid(),null);
   
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,
     CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
  (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Assignment Request Form V1.0'),
  (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=100031),
  7,6,'Y','4','Y',sysdate,'admin',7,1,SYS_GUID(),null);

-- 2ai. Assign to Study Section Fields?
Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
   values (SEQ_QUESTIONNAIRE_REF_ID.nextval,100032,1,'A','Assign to Study Section.',
   'A',4,5,null,null,null,3,20,sysdate,'admin',1,sys_guid(),null);
   
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,
     CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
  (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Assignment Request Form V1.0'),
  (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=100032),
  8,7,'Y','4','Y',sysdate,'admin',8,1,SYS_GUID(),null);


-- 2b. Do Not Assign to Study Section?
Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
   values (SEQ_QUESTIONNAIRE_REF_ID.nextval,100033,1,'A','Are there Study Sections that you do NOT want assigned?',
   'A',2,1,null,null,null,1,1,sysdate,'admin',1,sys_guid(),null);
   
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,
     CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
  (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Assignment Request Form V1.0'),
  (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=100033),
  9,6,'Y','4','Y',sysdate,'admin',9,1,SYS_GUID(),null);

-- 2bi. Assign to Awarding Component Fields?
Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
   values (SEQ_QUESTIONNAIRE_REF_ID.nextval,100034,1,'A','Do NOT assign to Study Section.',
   'A',4,5,null,null,null,3,20,sysdate,'admin',1,sys_guid(),null);
   
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,
     CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
  (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Assignment Request Form V1.0'),
  (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=100034),
  10,9,'Y','4','Y',sysdate,'admin',10,1,SYS_GUID(),null);

-- QUESTION 3 INDIVIDUALS WHOM SHOULD NOT REVIEW
-- 3. Are there individuals whom should not review your application?
Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
   values (SEQ_QUESTIONNAIRE_REF_ID.nextval,100035,1,'A','Are there individuals whom should NOT review your application?',
   'A',2,1,null,null,null,1,1,sysdate,'admin',1,sys_guid(),null);
   
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,
     CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
  (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Assignment Request Form V1.0'),
  (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=100035),
  11,0,'N',null,null,sysdate,'admin',11,1,SYS_GUID(),null);

-- 3b. Assign to Awarding Component Fields?
Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
   values (SEQ_QUESTIONNAIRE_REF_ID.nextval,100036,1,'A','List Individuals who should NOT review your application and why.',
   'A',4,5,null,null,null,1,1000,sysdate,'admin',1,sys_guid(),null);
   
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,
     CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
  (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Assignment Request Form V1.0'),
  (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=100036),
  12,11,'Y','4','Y',sysdate,'admin',12,1,SYS_GUID(),null);

-- QUESTION 4 IDENTIFY SCIENTIFIC AREAS OF EXPERTISE 
-- 4. Are there scientific areas of expertise needed to review your application?
Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
   values (SEQ_QUESTIONNAIRE_REF_ID.nextval,100037,1,'A','Are there scientific areas of expertise needed to review your application?',
   'A',2,1,null,null,null,1,1,sysdate,'admin',1,sys_guid(),null);
   
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,
     CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
  (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Assignment Request Form V1.0'),
  (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=100037),
  13,0,'N',null,null,sysdate,'admin',13,1,SYS_GUID(),null);

-- 4b. Identify Scientific areas of expertise needed to review your application
Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
   values (SEQ_QUESTIONNAIRE_REF_ID.nextval,100038,1,'A','Identify Scientific areas of expertise needed to review your application. Please do NOT provide names of individuals.',
   'A',4,5,null,null,null,5,40,sysdate,'admin',1,sys_guid(),null);
   
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,
     CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
  (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Assignment Request Form V1.0'),
  (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=100038),
  14,13,'Y','4','Y',sysdate,'admin',14,1,SYS_GUID(),null);



-- forms-D : PHS398_ResearchTrainingProgramPlan_3_0

Insert into NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,SYSTEM_GENERATED,ALLOW_MULTIPLE,NARRATIVE_TYPE_GROUP,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
  values ('129','PHS_ResTrainingPlan_DataSafetyMonitoringPlan','N','N','P',sysdate,'admin',1,sys_guid());

Insert into NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,SYSTEM_GENERATED,ALLOW_MULTIPLE,NARRATIVE_TYPE_GROUP,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
  values ('145','PHS_ResTrainingPlan_MethodsForEnhancingReproducibility','N','N','P',sysdate,'admin',1,sys_guid());

insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchTrainingProgramPlan_3_0',112,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchTrainingProgramPlan_3_0',114,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchTrainingProgramPlan_3_0',116,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchTrainingProgramPlan_3_0',117,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchTrainingProgramPlan_3_0',118,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchTrainingProgramPlan_3_0',119,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchTrainingProgramPlan_3_0',120,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchTrainingProgramPlan_3_0',121,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchTrainingProgramPlan_3_0',122,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchTrainingProgramPlan_3_0',123,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchTrainingProgramPlan_3_0',124,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchTrainingProgramPlan_3_0',125,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchTrainingProgramPlan_3_0',126,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchTrainingProgramPlan_3_0',129,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS398_ResearchTrainingProgramPlan_3_0',145,'N',sysdate,'admin',sys_guid())
/
-- PHS398 Fellowship Supplement v3.1
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS_Fellowship_Supplemental_3_1',96,'N',sysdate,'admin',sys_guid())
/

Insert into NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,SYSTEM_GENERATED,ALLOW_MULTIPLE,NARRATIVE_TYPE_GROUP,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
  values ('153','PHS_Fellowship_Applicant_BackgroundGoals','N','N','P',sysdate,'admin',1,sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS_Fellowship_Supplemental_3_1',153,'Y',sysdate,'admin',sys_guid())
/

Insert into NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,SYSTEM_GENERATED,ALLOW_MULTIPLE,NARRATIVE_TYPE_GROUP,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
  values ('154','PHS_Fellowship_LettersOfSupport','N','N','P',sysdate,'admin',1,sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS_Fellowship_Supplemental_3_1',154,'N',sysdate,'admin',sys_guid())
/

Insert into NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,SYSTEM_GENERATED,ALLOW_MULTIPLE,NARRATIVE_TYPE_GROUP,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
  values ('155','PHS_Fellowship_InstEnvironmentCommitment','N','N','P',sysdate,'admin',1,sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS_Fellowship_Supplemental_3_1',155,'N',sysdate,'admin',sys_guid())
/

Insert into NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,SYSTEM_GENERATED,ALLOW_MULTIPLE,NARRATIVE_TYPE_GROUP,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
  values ('156','PHS_Fellowship_DataAndSafetyMonitoringPlan','N','N','P',sysdate,'admin',1,sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS_Fellowship_Supplemental_3_1',156,'N',sysdate,'admin',sys_guid())
/

Insert into NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,SYSTEM_GENERATED,ALLOW_MULTIPLE,NARRATIVE_TYPE_GROUP,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
  values ('157','PHS_Fellowship_KeyBiologicalAndOrChemicalResources','N','N','P',sysdate,'admin',1,sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS_Fellowship_Supplemental_3_1',157,'N',sysdate,'admin',sys_guid())
/

insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS_Fellowship_Supplemental_3_1',97,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS_Fellowship_Supplemental_3_1',98,'Y',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS_Fellowship_Supplemental_3_1',127,'Y',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS_Fellowship_Supplemental_3_1',103,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS_Fellowship_Supplemental_3_1',104,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS_Fellowship_Supplemental_3_1',105,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS_Fellowship_Supplemental_3_1',107,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS_Fellowship_Supplemental_3_1',108,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS_Fellowship_Supplemental_3_1',109,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS_Fellowship_Supplemental_3_1',110,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS_Fellowship_Supplemental_3_1',88,'Y',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS_Fellowship_Supplemental_3_1',89,'Y',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS_Fellowship_Supplemental_3_1',90,'Y',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS_Fellowship_Supplemental_3_1',134,'N',sysdate,'admin',sys_guid())
/
insert into VALID_NARR_FORMS (VALID_NARR_FORMS_ID,FORM_NAME,NARRATIVE_TYPE_CODE,MANDATORY,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID) 
	values (SEQ_VALID_NARR_FORMS_ID.nextval,'PHS_Fellowship_Supplemental_3_1',91,'N',sysdate,'admin',sys_guid())
/
update NARRATIVE_TYPE set DESCRIPTION='PHS_Fellow_Sponsor_CoSponsor_Statements' where DESCRIPTION='PHS_Fellow_Sponsor_CoSponsor_Info';

-- Questionnaire for PHS Fellowship Supplemental Form V3-1
Insert into QUESTIONNAIRE (QUESTIONNAIRE_REF_ID,QUESTIONNAIRE_ID,SEQUENCE_NUMBER,NAME,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,IS_FINAL,VER_NBR,OBJ_ID,FILE_NAME,DOCUMENT_NUMBER) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,SEQ_QUESTIONNAIRE_ID.nextval,1,'PHS Fellowship Supplemental Form V3-1', 
          'The responses are used to populate the PHS Fellowship Supplemental Form version 3-1 for submission via Grants.gov.', sysdate,'admin','Y',1, SYS_GUID(), null, null);

Insert into S2S_FORM_TO_QUESTIONNAIRE (S2S_FORM_TO_QUESTIONNAIRE_ID,OPP_NAME_SPACE,FORM_NAME,QUESTIONNAIRE_ID,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID,VER_NBR) 
  values (SEQ_QUESTIONNAIRE_REF_ID.nextval,'http://apply.grants.gov/forms/PHS_Fellowship_Supplemental_3_1-V3.1','PHS_Fellowship_Supplemental_3_1',
     (select MAX(QUESTIONNAIRE_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),sysdate,'admin',sys_guid(),1);

Insert into QUESTIONNAIRE_USAGE (QUESTIONNAIRE_USAGE_ID,MODULE_ITEM_CODE,MODULE_SUB_ITEM_CODE,QUESTIONNAIRE_REF_ID_FK,QUESTIONNAIRE_SEQUENCE_NUMBER,QUESTIONNAIRE_LABEL,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,IS_MANDATORY,RULE_ID)
   values (SEQ_QUESTIONNAIRE_REF_ID.nextval,3,2, (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'), 1,'PHS Fellowship Supplemental Form V3-1',sysdate,'admin',1,sys_guid(),'Y',null);


Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,102002,1,'A','If No to AVMA guidelines, describe method and provide scientific justification.','A',2,5,null,null,1,1,2000,sysdate,'admin',2,SYS_GUID(),null);
Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,102003,1,'C','Is method consistent with American Veterinary Medical Association (AVMA) guidelines?','A',2,1,null,null,null,null,null,sysdate,'admin',1,SYS_GUID(),null);
Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,102004,1,'C','Are vertebrate animals euthanized?','A',2,1,null,null,null,null,null,sysdate,'admin',1,SYS_GUID(),null);
Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,102005,1,'C','Select the Field of Training for the Current Proposal.','A',2,6,'org.kuali.kra.bo.ArgValueLookup','PHS_FellowSupp_FieldOfTraining',null,1,100,sysdate,'admin',1,SYS_GUID(),null);


Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=102002),161,159,'Y','4','N',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=102003),159,158,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=102004),158,156,'Y','4','Y',sysdate,'admin',2,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=4),157,156,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=1),155,154,'N',null,null,sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=27),270,269,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=27),516,515,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=27),479,478,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=27),397,396,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=46),269,26,'Y','4','Y',sysdate,'admin',5,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=46),515,489,'Y','4','Y',sysdate,'admin',5,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=46),478,416,'Y','4','Y',sysdate,'admin',5,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=46),396,298,'Y','4','Y',sysdate,'admin',5,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=45),239,238,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=45),512,511,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=45),466,465,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=45),375,374,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=49),238,26,'Y','4','Y',sysdate,'admin',4,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=49),511,489,'Y','4','Y',sysdate,'admin',4,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=49),465,416,'Y','4','Y',sysdate,'admin',4,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=49),374,298,'Y','4','Y',sysdate,'admin',4,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=44),206,205,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=44),506,505,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=44),451,450,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=44),351,350,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=43),205,26,'Y','4','Y',sysdate,'admin',3,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=43),505,489,'Y','4','Y',sysdate,'admin',3,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=43),450,416,'Y','4','Y',sysdate,'admin',3,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=43),350,298,'Y','4','Y',sysdate,'admin',3,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=33),171,26,'Y','4','Y',sysdate,'admin',2,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=33),498,489,'Y','4','Y',sysdate,'admin',2,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=33),434,416,'Y','4','Y',sysdate,'admin',2,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=33),325,298,'Y','4','Y',sysdate,'admin',2,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=32),27,26,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=32),490,489,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=32),417,416,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=32),299,298,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=31),298,26,'Y','4','Y',sysdate,'admin',6,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=31),489,416,'Y','4','Y',sysdate,'admin',6,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=31),416,298,'Y','4','Y',sysdate,'admin',6,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=50),164,72,'Y','4','Y',sysdate,'admin',3,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=48),162,72,'Y','4','Y',sysdate,'admin',2,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=21),86,80,'Y','1','MDOT',sysdate,'admin',6,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=100),85,80,'Y','1','OTH',sysdate,'admin',5,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=19),84,80,'Y','1','VDOT',sysdate,'admin',4,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=18),83,80,'Y','1','DDOT',sysdate,'admin',3,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=17),82,80,'Y','1','DOTH',sysdate,'admin',2,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=16),81,80,'Y','1','MOTH',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=99),80,78,'Y','4','Y',sysdate,'admin',2,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=35),79,78,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=41),170,73,'Y','4','Y',sysdate,'admin',4,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=40),168,73,'Y','4','Y',sysdate,'admin',3,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=51),165,73,'Y','4','Y',sysdate,'admin',2,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=38),74,73,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=37),73,72,'Y','4','Y',sysdate,'admin',4,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=47),120,72,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=29),33,32,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=7),7,6,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=6),6,5,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=3),3,2,'Y','4','Y',sysdate,'admin',1,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=36),72,0,'N',null,null,sysdate,'admin',10,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=28),32,0,'N',null,null,sysdate,'admin',8,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=24),26,0,'N',null,null,sysdate,'admin',7,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=42),78,0,'N',null,null,sysdate,'admin',6,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=102005),24,0,'N',null,null,sysdate,'admin',5,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=5),5,0,'N',null,null,sysdate,'admin',4,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=10002),156,0,'N',null,null,sysdate,'admin',3,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=2),2,0,'N',null,null,sysdate,'admin',2,1,SYS_GUID(),null);
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) values (SEQ_QUESTIONNAIRE_REF_ID.nextval,(select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='PHS Fellowship Supplemental Form V3-1'),(select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=10001),154,0,'N',null,null,sysdate,'admin',1,1,SYS_GUID(),null);


-- FieldsofTraining for NIH PHS-398 Fellowship Supplemental Form
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100100,'PHS_FellowSupp_FieldOfTraining','100 Biochemistry','100 Biochemistry',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100101,'PHS_FellowSupp_FieldOfTraining','102 Bioinformatics','102 Bioinformatics',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100102,'PHS_FellowSupp_FieldOfTraining','103 Biomedical Sciences (see also Statistics in MATHEMATICS and SOCIAL SCIENCES)','103 Biomedical Sciences (see also Statistics in MATHEMATICS and SOCIAL SCIENCES)',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100103,'PHS_FellowSupp_FieldOfTraining','104 Computational Biology','104 Computational Biology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100104,'PHS_FellowSupp_FieldOfTraining','105 Biophysics (also in Physics)','105 Biophysics (also in Physics)',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100105,'PHS_FellowSupp_FieldOfTraining','107 Biotechnology','107 Biotechnology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100106,'PHS_FellowSupp_FieldOfTraining','110 Bacteriology','110 Bacteriology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100107,'PHS_FellowSupp_FieldOfTraining','115 Plant Genetics','115 Plant Genetics',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100108,'PHS_FellowSupp_FieldOfTraining','120 Plant Pathology/Phytopathology','120 Plant Pathology/Phytopathology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100109,'PHS_FellowSupp_FieldOfTraining','125 Plant Physiology','125 Plant Physiology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100110,'PHS_FellowSupp_FieldOfTraining','129 Botany/Plant Biology','129 Botany/Plant Biology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100111,'PHS_FellowSupp_FieldOfTraining','130 Anatomy','130 Anatomy',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100112,'PHS_FellowSupp_FieldOfTraining','133 Biometrics & Biostatistics','133 Biometrics & Biostatistics',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100113,'PHS_FellowSupp_FieldOfTraining','136 Cell/Cellular Biology & Histology','136 Cell/Cellular Biology & Histology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100114,'PHS_FellowSupp_FieldOfTraining','137 Evolutionary Biology','137 Evolutionary Biology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100115,'PHS_FellowSupp_FieldOfTraining','139 Ecology','139 Ecology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100116,'PHS_FellowSupp_FieldOfTraining','142 Developmental Biology/Embryology','142 Developmental Biology/Embryology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100117,'PHS_FellowSupp_FieldOfTraining','145 Endocrinology','145 Endocrinology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100118,'PHS_FellowSupp_FieldOfTraining','148 Entomology','148 Entomology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100119,'PHS_FellowSupp_FieldOfTraining','151 Immunology','151 Immunology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100120,'PHS_FellowSupp_FieldOfTraining','152 Marine Biology & Biological Oceanography','152 Marine Biology & Biological Oceanography',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100121,'PHS_FellowSupp_FieldOfTraining','154 Molecular Biology','154 Molecular Biology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100122,'PHS_FellowSupp_FieldOfTraining','155 Structural Biology','155 Structural Biology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100123,'PHS_FellowSupp_FieldOfTraining','157 Microbiology','157 Microbiology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100124,'PHS_FellowSupp_FieldOfTraining','158 Cancer Biology','158 Cancer Biology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100125,'PHS_FellowSupp_FieldOfTraining','160 Neurosciences & Neurobiology','160 Neurosciences & Neurobiology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100126,'PHS_FellowSupp_FieldOfTraining','163 Nutrition Sciences','163 Nutrition Sciences',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100127,'PHS_FellowSupp_FieldOfTraining','166 Parasitology','166 Parasitology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100128,'PHS_FellowSupp_FieldOfTraining','167 Environmental Toxicology','167 Environmental Toxicology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100129,'PHS_FellowSupp_FieldOfTraining','168 Virology','168 Virology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100130,'PHS_FellowSupp_FieldOfTraining','169 Toxicology','169 Toxicology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100131,'PHS_FellowSupp_FieldOfTraining','170 Genetics/Genomics, Human & Animal','170 Genetics/Genomics, Human & Animal',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100132,'PHS_FellowSupp_FieldOfTraining','175 Pathology, Human & Animal','175 Pathology, Human & Animal',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100133,'PHS_FellowSupp_FieldOfTraining','180 Pharmacology, Human & Animal','180 Pharmacology, Human & Animal',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100134,'PHS_FellowSupp_FieldOfTraining','185 Physiology, Human & Animal','185 Physiology, Human & Animal',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100135,'PHS_FellowSupp_FieldOfTraining','189 Zoology','189 Zoology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100136,'PHS_FellowSupp_FieldOfTraining','198 Biology/Biomedical Sciences, General','198 Biology/Biomedical Sciences, General',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100137,'PHS_FellowSupp_FieldOfTraining','199 Biology/Biomedical Sciences, Other','199 Biology/Biomedical Sciences, Other',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100138,'PHS_FellowSupp_FieldOfTraining','200 Speech-Language Pathology & Audiology','200 Speech-Language Pathology & Audiology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100139,'PHS_FellowSupp_FieldOfTraining','207 Oral Biology/Oral Pathology','207 Oral Biology/Oral Pathology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100140,'PHS_FellowSupp_FieldOfTraining','210 Environmental Health','210 Environmental Health',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100141,'PHS_FellowSupp_FieldOfTraining','212 Health Systems/Service Administration','212 Health Systems/Service Administration',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100142,'PHS_FellowSupp_FieldOfTraining','215 Public Health','215 Public Health',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100143,'PHS_FellowSupp_FieldOfTraining','217 Health Policy Analysis','217 Health Policy Analysis',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100144,'PHS_FellowSupp_FieldOfTraining','220 Epidemiology','220 Epidemiology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100145,'PHS_FellowSupp_FieldOfTraining','222 Kinesiology/Exercise Physiology','222 Kinesiology/Exercise Physiology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100146,'PHS_FellowSupp_FieldOfTraining','227 Gerontology (Also in Social Sciences)','227 Gerontology (Also in Social Sciences)',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100147,'PHS_FellowSupp_FieldOfTraining','230 Nursing Science','230 Nursing Science',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100148,'PHS_FellowSupp_FieldOfTraining','240 Medicinal/Pharmaceutical Sciences','240 Medicinal/Pharmaceutical Sciences',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100149,'PHS_FellowSupp_FieldOfTraining','245 Rehabilitation/Therapeutic Services','245 Rehabilitation/Therapeutic Services',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100150,'PHS_FellowSupp_FieldOfTraining','250 Veterinary Sciences','250 Veterinary Sciences',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100151,'PHS_FellowSupp_FieldOfTraining','290 Clinical and Translational Sciences','290 Clinical and Translational Sciences',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100152,'PHS_FellowSupp_FieldOfTraining','298 Health Sciences, General','298 Health Sciences, General',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100153,'PHS_FellowSupp_FieldOfTraining','299 Health Sciences, Other','299 Health Sciences, Other',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100154,'PHS_FellowSupp_FieldOfTraining','526 Organic Chemistry','526 Organic Chemistry',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100155,'PHS_FellowSupp_FieldOfTraining','539 Chemistry, Other','539 Chemistry, Other',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100156,'PHS_FellowSupp_FieldOfTraining','565 Biophysics (also in BIOLOGICAL SCIENCES)','565 Biophysics (also in BIOLOGICAL SCIENCES)',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100157,'PHS_FellowSupp_FieldOfTraining','577 Medical Physics/Radiological Science','577 Medical Physics/Radiological Science',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100158,'PHS_FellowSupp_FieldOfTraining','579 Physics, Other','579 Physics, Other',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100159,'PHS_FellowSupp_FieldOfTraining','410 Information Sciences & Systems (see also Bioinformatics in BIOLOGICAL SCIENCES)','410 Information Sciences & Systems (see also Bioinformatics in BIOLOGICAL SCIENCES)',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100160,'PHS_FellowSupp_FieldOfTraining','419 Computer & Information Science, Other','419 Computer & Information Science, Other',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100161,'PHS_FellowSupp_FieldOfTraining','450 Statistics (also in SOCIAL SCIENCES; see also Biometrics and Statistics in BIOLOGICAL SCIENCES)','450 Statistics (also in SOCIAL SCIENCES; see also Biometrics and Statistics in BIOLOGICAL SCIENCES)',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100162,'PHS_FellowSupp_FieldOfTraining','306 Bioengineering & Biomedical Engineering','306 Bioengineering & Biomedical Engineering',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100163,'PHS_FellowSupp_FieldOfTraining','399 Engineering, Other','399 Engineering, Other',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100164,'PHS_FellowSupp_FieldOfTraining','600 Clinical Psychology','600 Clinical Psychology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100165,'PHS_FellowSupp_FieldOfTraining','603 Cognitive Psychology & Psycholinguistics','603 Cognitive Psychology & Psycholinguistics',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100166,'PHS_FellowSupp_FieldOfTraining','612 Developmental & Child Psychology','612 Developmental & Child Psychology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100167,'PHS_FellowSupp_FieldOfTraining','615 Experimental Psychology','615 Experimental Psychology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100168,'PHS_FellowSupp_FieldOfTraining','614 Health & Medical Psychology','614 Health & Medical Psychology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100169,'PHS_FellowSupp_FieldOfTraining','627 Neuropsychology/Physiological Psychology','627 Neuropsychology/Physiological Psychology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100170,'PHS_FellowSupp_FieldOfTraining','624 Personality Psychology','624 Personality Psychology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100171,'PHS_FellowSupp_FieldOfTraining','633 Psychometrics & Quantitative Psychology','633 Psychometrics & Quantitative Psychology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100172,'PHS_FellowSupp_FieldOfTraining','639 Social Psychology','639 Social Psychology',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100173,'PHS_FellowSupp_FieldOfTraining','649 Psychology, Other','649 Psychology, Other',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100174,'PHS_FellowSupp_FieldOfTraining','662 Demography/Population Studies','662 Demography/Population Studies',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100175,'PHS_FellowSupp_FieldOfTraining','684 Gerontology (also in HEALTH SCIENCES)','684 Gerontology (also in HEALTH SCIENCES)',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100176,'PHS_FellowSupp_FieldOfTraining','690 Statistics (also in MATHEMATICS; see also Biometrics and Statistics in BIOLOGICAL SCIENCES)','690 Statistics (also in MATHEMATICS; see also Biometrics and Statistics in BIOLOGICAL SCIENCES)',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100177,'PHS_FellowSupp_FieldOfTraining','980 Social Work','980 Social Work',sysdate,'admin',1,SYS_GUID());
INSERT INTO ARG_VALUE_LOOKUP(ARG_VALUE_LOOKUP_ID,ARGUMENT_NAME,VALUE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) values(100178,'PHS_FellowSupp_FieldOfTraining','989 Other','989 Other',sysdate,'admin',1,SYS_GUID());

 -- PHS Cover Page Supplement v3.0
update KRMS_TERM_PARM_T set VAL='PHS398_CoverPageSupplement_3_0,PHS398_CoverPageSupplement_1_4,PHS398_CoverPageSupplement_2_0-V2.0' where TERM_PARM_ID='KC2006';

insert into KRMS_TERM_T(TERM_ID,TERM_SPEC_ID,VER_NBR,DESC_TXT) values('AR3000','KC2000',1,'PHS398_CoverPageSupplement_3_0');
insert into KRMS_TERM_PARM_T(TERM_PARM_ID,TERM_ID,NM,VAL,VER_NBR) values('AR3000','AR3000','GrantsGov Form Name','PHS398_CoverPageSupplement_3_0',1);
insert into KRMS_PROP_T(PROP_ID,DESC_TXT,TYP_ID,DSCRM_TYP_CD,CMPND_OP_CD,RULE_ID,VER_NBR,CMPND_SEQ_NO) values('AR3000','PHS398_CoverPageSupplement_3_0',null,'S',null,'AR3000',1,null);
insert into KRMS_PROP_PARM_T(PROP_PARM_ID,PROP_ID,PARM_VAL,PARM_TYP_CD,SEQ_NO,VER_NBR) values('AR3100','AR3000','AR3000','T',0,1);
insert into KRMS_PROP_PARM_T(PROP_PARM_ID,PROP_ID,PARM_VAL,PARM_TYP_CD,SEQ_NO,VER_NBR) values('AR3101','AR3000','=','O',2,1);
insert into KRMS_PROP_PARM_T(PROP_PARM_ID,PROP_ID,PARM_VAL,PARM_TYP_CD,SEQ_NO,VER_NBR) values('AR3102','AR3000','true','C',1,1);
insert into KRMS_RULE_T(RULE_ID,NMSPC_CD,NM,TYP_ID,PROP_ID,ACTV,VER_NBR,DESC_TXT) values('AR3000','KC-PD','PHS398_CoverPageSupplement_3_0',null,'AR3000','Y',1,'PHS398_CoverPageSupplement_3_0 patents and change of PD/institution');

insert into KRMS_AGENDA_ITM_T(AGENDA_ITM_ID,RULE_ID,SUB_AGENDA_ID,AGENDA_ID,VER_NBR,WHEN_TRUE,WHEN_FALSE,ALWAYS)
  values('AR3000','AR3000',null,'KC1000',1,null,null,'KC2001');

update KRMS_AGENDA_T set INIT_AGENDA_ITM_ID='AR3000' where NM='Development Proposal Branching Questionnaire';

Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
    values (SEQ_QUESTIONNAIRE_REF_ID.nextval,103000,1,'C','Is this a change of Grantee Institution on a renewal?','A',2,1,null,null,null,null,null,sysdate,'admin',1,SYS_GUID(),null);

Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
     values (SEQ_QUESTIONNAIRE_REF_ID.nextval,103001,1,'C','Name of former Grantee Institution','A',2,5,null,null,null,1,200,sysdate,'admin',1,SYS_GUID(),null);

Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
    values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
    (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='GG S2S Forms'),
    (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=103000),311,0,'N',null,null,sysdate,'admin',22,1,SYS_GUID(),'AR3000');

Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
    values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
    (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='GG S2S Forms'),
    (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=103001),312,311,'Y','3','Y',sysdate,'admin',1,1,SYS_GUID(),'AR3000');



Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
    values (SEQ_QUESTIONNAIRE_REF_ID.nextval,103008,1,'C','Is this a renewal of an existing proposal?','A',2,1,null,null,null,null,null,sysdate,'admin',1,SYS_GUID(),null);

Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
    values (SEQ_QUESTIONNAIRE_REF_ID.nextval,103009,1,'C','Were inventions conceived or reduced to practice during this project?','A',2,1,null,null,null,null,null,sysdate,'admin',1,SYS_GUID(),null);

Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
    values (SEQ_QUESTIONNAIRE_REF_ID.nextval,103010,1,'C','Has this information been reported previously to the PHS or to the applicant organization official responsible for patent matters?','A',2,1,null,null,null,null,null,sysdate,'admin',1,SYS_GUID(),null);


Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
    values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
    (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='GG S2S Forms'),
    (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=103008),360,0,'N',null,null,sysdate,'admin',25,1,SYS_GUID(),'AR3000');

Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
    values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
    (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='GG S2S Forms'),
    (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=103009),361,360,'Y','3','Y',sysdate,'admin',1,1,SYS_GUID(),'AR3000');

Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
    values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
    (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='GG S2S Forms'),
    (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=103010),362,361,'Y','3','Y',sysdate,'admin',1,1,SYS_GUID(),'AR3000');




Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
    values (SEQ_QUESTIONNAIRE_REF_ID.nextval,103002,1,'C','Does this application reflect a change in PI or Program Director from a previous application?','A',2,1,null,null,null,null,null,sysdate,'admin',1,SYS_GUID(),null);

insert into QUESTION_EXPLANATION(QUESTION_EXPLANATION_ID,QUESTION_REF_ID_FK,EXPLANATION_TYPE,EXPLANATION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID)
  values(SEQ_QUESTIONNAIRE_REF_ID.nextval,(select QUESTION_REF_ID from QUESTION where QUESTION_ID=103002),'E',
         'Check here, if this application reflects a change in principal investigator/program director from that indicated on a previous application. This is not generally applicable to a "New" application. For a multiple PD/PI application, check here if this application represents a change in the Contact PI.',sysdate,'admin',1,SYS_GUID());

Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
     values (SEQ_QUESTIONNAIRE_REF_ID.nextval,103003,1,'C','Prefix','A',2,5,null,null,null,1,30,sysdate,'admin',1,SYS_GUID(),null);

insert into QUESTION_EXPLANATION(QUESTION_EXPLANATION_ID,QUESTION_REF_ID_FK,EXPLANATION_TYPE,EXPLANATION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID)
  values(SEQ_QUESTIONNAIRE_REF_ID.nextval,(select QUESTION_REF_ID from QUESTION where QUESTION_ID=103003),'E',
         'If this application reflects a change in PD/PI, enter the name prefix (for example, Mr., Mrs., Rev.) of the former PD/PI.',sysdate,'admin',1,SYS_GUID());

Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
     values (SEQ_QUESTIONNAIRE_REF_ID.nextval,103004,1,'C','First Name','A',2,5,null,null,null,1,50,sysdate,'admin',1,SYS_GUID(),null);

insert into QUESTION_EXPLANATION(QUESTION_EXPLANATION_ID,QUESTION_REF_ID_FK,EXPLANATION_TYPE,EXPLANATION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID)
  values(SEQ_QUESTIONNAIRE_REF_ID.nextval,(select QUESTION_REF_ID from QUESTION where QUESTION_ID=103004),'E',
         'If this application reflects a change in PD/PI, enter the first name of the former PD/PI.',sysdate,'admin',1,SYS_GUID());

Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
     values (SEQ_QUESTIONNAIRE_REF_ID.nextval,103005,1,'C','Middle Name','A',2,5,null,null,null,1,30,sysdate,'admin',1,SYS_GUID(),null);

insert into QUESTION_EXPLANATION(QUESTION_EXPLANATION_ID,QUESTION_REF_ID_FK,EXPLANATION_TYPE,EXPLANATION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID)
  values(SEQ_QUESTIONNAIRE_REF_ID.nextval,(select QUESTION_REF_ID from QUESTION where QUESTION_ID=103005),'E',
         'If this application reflects a change in PD/PI, enter the middle name of the former PD/PI.',sysdate,'admin',1,SYS_GUID());
     
Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
     values (SEQ_QUESTIONNAIRE_REF_ID.nextval,103006,1,'C','Last Name','A',2,5,null,null,null,1,50,sysdate,'admin',1,SYS_GUID(),null);

insert into QUESTION_EXPLANATION(QUESTION_EXPLANATION_ID,QUESTION_REF_ID_FK,EXPLANATION_TYPE,EXPLANATION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID)
  values(SEQ_QUESTIONNAIRE_REF_ID.nextval,(select QUESTION_REF_ID from QUESTION where QUESTION_ID=103006),'E',
         'If this application reflects a change in PD/PI, enter the last name of the former PD/PI.',sysdate,'admin',1,SYS_GUID());
     
Insert into QUESTION (QUESTION_REF_ID,QUESTION_ID,SEQUENCE_NUMBER,SEQUENCE_STATUS,QUESTION,STATUS,GROUP_TYPE_CODE,QUESTION_TYPE_ID,LOOKUP_CLASS,LOOKUP_RETURN,DISPLAYED_ANSWERS,MAX_ANSWERS,ANSWER_MAX_LENGTH,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID,DOCUMENT_NUMBER) 
     values (SEQ_QUESTIONNAIRE_REF_ID.nextval,103007,1,'C','Suffix','A',2,5,null,null,null,1,30,sysdate,'admin',1,SYS_GUID(),null);     
     
insert into QUESTION_EXPLANATION(QUESTION_EXPLANATION_ID,QUESTION_REF_ID_FK,EXPLANATION_TYPE,EXPLANATION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID)
  values(SEQ_QUESTIONNAIRE_REF_ID.nextval,(select QUESTION_REF_ID from QUESTION where QUESTION_ID=103007),'E',
         'If this application reflects a change in PD/PI, provide the suffix (for example, Jr., Sr., PhD) of the former PD/PI.',sysdate,'admin',1,SYS_GUID());


Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
    values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
    (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='GG S2S Forms'),
    (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=103002),313,0,'N',null,null,sysdate,'admin',23,1,SYS_GUID(),'AR3000');

Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
    values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
    (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='GG S2S Forms'),
    (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=103003),314,313,'Y','3','Y',sysdate,'admin',1,1,SYS_GUID(),'AR3000');

Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
    values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
    (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='GG S2S Forms'),
    (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=103004),315,313,'Y','3','Y',sysdate,'admin',1,1,SYS_GUID(),'AR3000');
    
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
    values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
    (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='GG S2S Forms'),
    (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=103005),316,313,'Y','3','Y',sysdate,'admin',1,1,SYS_GUID(),'AR3000');
    
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
    values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
    (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='GG S2S Forms'),
    (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=103006),317,313,'Y','3','Y',sysdate,'admin',1,1,SYS_GUID(),'AR3000');
    
Insert into QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_TIMESTAMP,UPDATE_USER,QUESTION_SEQ_NUMBER,VER_NBR,OBJ_ID,RULE_ID) 
    values (SEQ_QUESTIONNAIRE_REF_ID.nextval,
    (select MAX(QUESTIONNAIRE_REF_ID) from QUESTIONNAIRE where NAME='GG S2S Forms'),
    (select MAX(QUESTION_REF_ID) from QUESTION where QUESTION_ID=103007),318,313,'Y','3','Y',sysdate,'admin',1,1,SYS_GUID(),'AR3000');


 -- RES-711
alter table EPS_PROPOSAL ADD AGENCY_PROGRAM_NAME VARCHAR2(200);
alter table EPS_PROPOSAL ADD AGENCY_DIVISION_NAME VARCHAR2(200);



 -- RES-710
CREATE SEQUENCE SEQ_S2S_ERROR_MESSAGES INCREMENT BY 1 START WITH 1000 NOCACHE;

  CREATE TABLE "S2S_ERROR_MESSAGES" 
   (	"ERROR_MESSAGE_ID" NUMBER NOT NULL ENABLE, 
	"FORM_DESC" VARCHAR2(200 BYTE), 
	"MESSAGE_KEY" VARCHAR2(300 BYTE) NOT NULL ENABLE, 
	"MESSAGE_DESC" VARCHAR2(400 BYTE) NOT NULL ENABLE, 
        "ACTIVE" VARCHAR2(1 BYTE) NOT NULL ENABLE,
	"FIXLINK" VARCHAR2(100 BYTE), 
	"UPDATED_DATE" TIMESTAMP (6), 
	"UPDATED_USER" VARCHAR2(60 BYTE), 
	"OBJ_ID" VARCHAR2(36 BYTE) NOT NULL ENABLE, 
	"VER_NBR" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "S2S_ERROR_MESSAGES_PK" PRIMARY KEY ("ERROR_MESSAGE_ID") ENABLE
   );

  CREATE INDEX "IDX_S2SERROR_KEY" ON "S2S_ERROR_MESSAGES" ("MESSAGE_KEY");

Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (366,'/GrantApplication/Forms/RR_PerformanceSite/OtherSite','The maximum number of other organizations allowed is 7','proposal.Organization/Location',to_timestamp('07-SEP-16 11.09.52.853000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','554eafe3-7386-464c-a600-12bbb71482e2',0,'RR_PerformanceSite','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (367,'/GrantApplication/Forms/RR_PerformanceSite/OtherSite/Address/State','The state code for one of the performance sites is not valid','proposal.Organization/Location',to_timestamp('07-SEP-16 11.09.52.859000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','daadcda8-516a-4eea-9dc9-4f0a3ee6bd6e',0,'RR_PerformanceSite','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (368,'/GrantApplication/Forms/RR_PerformanceSite/OtherSite/Address/Country','Country code is missing for one of the performance sites','proposal.Organization/Location',to_timestamp('07-SEP-16 11.09.52.861000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','ab3cec86-d73f-44ff-840f-28343daeea5b',0,'RR_PerformanceSite','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (369,'/GrantApplication/Forms/RR_PerformanceSite/OtherSite/Address/Country','Country code is missing for one of the performance sites','proposal',to_timestamp('07-SEP-16 11.09.52.864000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','43b0c21d-5ec4-4425-b084-7e2a72469ba9',0,'RR_PerformanceSite','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (370,'/GrantApplication/Forms/GrantApplication/ApplicationTypeCode','You have a non-standard application type for the SF424.','proposal',to_timestamp('07-SEP-16 11.09.52.867000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','c5e8881b-1514-49ea-87bf-e9a0031bec81',0,'GrantApplication','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (371,'/GrantApplication/Forms/GrantApplication/Revision/RevisionCode1','You have entered an invalid revision type for the SF424','grantsGov',to_timestamp('07-SEP-16 11.09.52.869000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','271d19ad-db73-48f1-8db3-2a2704b5fe05',0,'GrantApplication','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (372,'GrantApplication/Forms/GrantApplication/ActivityTitle','Please enter the program title','proposal',to_timestamp('07-SEP-16 11.09.52.872000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','62dc913a-1bc7-475a-8928-286eb15a1a6f',0,'rantApplication','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (373,'/GrantApplication/Forms/SF424/ApplicationTypeCode','You have a non-standard application type for the SF424','proposal',to_timestamp('07-SEP-16 11.09.52.874000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','32a3b72c-3b8e-4679-99f7-fc9de5bfea8d',0,'SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (374,'/GrantApplication/Forms/SF424/Revision/RevisionCode1','You have entered an invalid revision type for the SF424','grantsGov',to_timestamp('07-SEP-16 11.09.52.877000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','d36b3c79-8fe3-415b-aabf-d41c8804bbf9',0,'SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (375,'/GrantApplication/Forms/SF424/Applicant/City','Organization''s city is not valid','proposal.Organization/Location',to_timestamp('07-SEP-16 11.09.52.879000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','126c56cd-a121-45a6-8a1e-2fa17db7f507',0,'SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (376,'/GrantApplication/Forms/SF424/PhoneNumber','Phone number missing for PD/PI.','keyPersonnel',to_timestamp('07-SEP-16 11.09.52.882000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','baf3939f-9264-4767-8d65-5d94716741bd',0,'SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (377,'/GrantApplication/Forms/SF424/Email','Email address missing for PD/PI.','keyPersonnel',to_timestamp('07-SEP-16 11.09.52.885000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','89947db0-635d-4645-a1e2-6a5429c26c04',0,'SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (378,'/GrantApplication/Forms/SF424/StateReview','Please answer the State Executive Order questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.52.888000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','b9448418-30dd-4564-be7b-6670b3a48c92',0,'SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (379,'/GrantApplication/Forms/SF424/StateReviewAvailableDate','Please answer the State Review Date questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.52.890000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','94bc9058-3135-4a0e-bff9-f9bd30d0ecdf',0,'SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (380,'/GrantApplication/Forms/SF424_Short/ProjectDescription','Project Description required, please include a Project Summary Abstract.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.52.893000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','49c3c9ae-1d18-4fde-9390-1a06d975cfce',0,'SF424_Short','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (381,'/GrantApplication/Forms/SF424_Short/ProjectDirectorGroup','Title missing for PD/PI.','keyPersonnel',to_timestamp('07-SEP-16 11.09.52.895000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','a844deda-7366-4e5d-8562-e9b83b8abcf3',0,'SF424_Short','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (382,'/GrantApplication/Forms/SF424_Short/ContactPersonGroup/Name/FirstName','First name missing for PD/PI.','keyPersonnel',to_timestamp('07-SEP-16 11.09.52.898000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','6a406e52-9a65-4d4a-afd1-7fbc1d963f1c',0,'SF424_Short','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (383,'/GrantApplication/Forms/SF424_Short/ContactPersonGroup/Name/LastName','Last name missing for PD/PI.','keyPersonnel',to_timestamp('07-SEP-16 11.09.52.900000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','01abbc7b-3309-4748-a09d-445b561a84d0',0,'SF424_Short','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (384,'/GrantApplication/Forms/SF424_Short/ContactPersonGroup/Address/Street1','Address missing for PD/PI.','keyPersonnel',to_timestamp('07-SEP-16 11.09.52.903000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','c0dbb3fb-eb0e-4ae1-b284-88b5ea9e438d',0,'SF424_Short','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (385,'/GrantApplication/Forms/SF424_Short/ContactPersonGroup/Address/City','City missing for PD/PI.','keyPersonnel',to_timestamp('07-SEP-16 11.09.52.906000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','8fbf24f6-ffec-49d5-8ab7-15e5776234f1',0,'SF424_Short','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (386,'/GrantApplication/Forms/SF424_Short/ContactPersonGroup/Address/Country','Country missing for PD/PI.','keyPersonnel',to_timestamp('07-SEP-16 11.09.52.909000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','e07596bb-ff33-4728-bdee-87e37e641d9c',0,'SF424_Short','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (387,'/GrantApplication/Forms/Assurances/ApplicationTypeCode','You have a non-standard application type for the SF424','proposal',to_timestamp('07-SEP-16 11.09.52.911000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','5fa4a5b8-525b-4675-997f-b7b8b7a97ab0',0,'Assurances','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (388,'/GrantApplication/Forms/Assurances/Revision/RevisionCode1','You have entered an invalid revision type for the SF424','grantsGov',to_timestamp('07-SEP-16 11.09.52.913000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','35576a13-6cfe-4369-a805-096444000223',0,'Assurances','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (389,'/GrantApplication/Forms/PHS398_Checklist/FormerPDName/LastName','Last name is required for the former PD/PI','questions',to_timestamp('07-SEP-16 11.09.52.916000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','e308fa3b-391b-4588-a543-6f6a40edfa25',0,'PHS398_Checklist','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (390,'/GrantApplication/Forms/PHS398_Checklist/FormerPDName/FirstName','First name is required for the former PD/PI','questions',to_timestamp('07-SEP-16 11.09.52.918000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','41cdf359-2a29-4dc5-bd5a-c3710dca1f1f',0,'PHS398_Checklist','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (391,'/GrantApplication/Forms/PHS398_Checklist/IncomeBudgetPeriod/BudgetPeriod','You may have only 5 budget periods','budgetVersions',to_timestamp('07-SEP-16 11.09.52.921000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','922d61a7-abfd-4e3d-aad9-14cb057a95b1',0,'PHS398_Checklist','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (392,'/GrantApplication/Forms/PHS398_Checklist/CertificationExplanation/Certifications','Please attach a Certification Explanation for the checklist','abstractsAttachments',to_timestamp('07-SEP-16 11.09.52.923000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','fb3edaf2-2906-4ce1-9fac-901dd5ed6787',0,'PHS398_Checklist','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (393,'/GrantApplication/Forms/NSF_CoverPage/NSFUnitConsideration/DivisionCode','Agency division code must be specified','proposal',to_timestamp('07-SEP-16 11.09.52.926000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','fa2002f9-16ee-48ff-89c8-51d49dedfcf8',0,'NSF_CoverPage','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (394,'/GrantApplication/Forms/NSF_CoverPage/NSFUnitConsideration/ProgramCode','Agency program code must be specified','proposal',to_timestamp('07-SEP-16 11.09.52.928000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','9f7e8bba-78b0-4001-98f5-3acee67cc055',0,'NSF_CoverPage','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (395,'/GrantApplication/Forms/NSF_CoverPage/PIInfo','You must have a Principal Investigator','keyPersonnel',to_timestamp('07-SEP-16 11.09.52.931000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','1ed65576-eae0-4cf3-b8ff-40508e4ce63e',0,'NSF_CoverPage','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (396,'/GrantApplication/Forms/NSF_CoverPage/PIInfo/DegreeType','Enter degree information for the Principal Investigator','keyPersonnel',to_timestamp('07-SEP-16 11.09.52.933000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','e3b0c510-f9c9-4e28-b09a-8bb95e84f4f2',0,'NSF_CoverPage','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (397,'/GrantApplication/Forms/NSF_CoverPage/PIInfo/DegreeYear','Enter the graduation date for the Principal Investigator''s highest degree','keyPersonnel',to_timestamp('07-SEP-16 11.09.52.941000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','1c6efe2f-98bc-4fc2-9817-8270eae49c44',0,'NSF_CoverPage','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (398,'/GrantApplication/Forms/NSF_CoverPage/FundingOpportunityNumber','Please enter the program announcement number','proposal',to_timestamp('07-SEP-16 11.09.52.944000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','5eb56b82-5385-4955-b4bb-cb2239a05ee9',0,'NSF_CoverPage','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (399,'/GrantApplication/Forms/AbstractAttachments/Attachments','The abstract attachment is required.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.52.946000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','e787a7df-c2e4-445d-8a77-f1c7ffe73842',0,'AbstractAttachments','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (400,'/GrantApplication/Forms/PHS398_CoverLetter/CoverLetterFile/CoverLetterFilename','Please attach a Cover Letter.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.52.949000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','54c3718c-6cb3-44d8-9848-e5b0a7de0f14',0,'PHS398_CoverLetter','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (401,'/GrantApplication/Forms/RR_SF424_2_0/PDPIContactInfo','Contact information missing for PD/PI, please make sure a Principal Investigator has been added.','keyPersonnel',to_timestamp('08-SEP-16 03.02.48.747000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'admin','e36dc689-e261-4f88-9fe9-06a226b616ca',0,'RR_SF424_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (402,'/GrantApplication/Forms/RR_SF424_2_0/PDPIContactInfo/Address/Street1','The PI address is invalid.  Use the proposal person window to add a street address','keyPersonnel',to_timestamp('07-SEP-16 11.09.52.955000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','4ffb7b0f-f97d-4860-8c6e-328d387e3d96',0,'RR_SF424_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (403,'/GrantApplication/Forms/RR_SF424_2_0/PDPIContactInfo/Address/Country','The PI country code is invalid. Use the proposal person window to fix this','keyPersonnel',to_timestamp('07-SEP-16 11.09.52.957000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','3107d720-2112-4b0a-8d70-d694a938e1f1',0,'RR_SF424_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (404,'/GrantApplication/Forms/RR_SF424_2_0/PDPIContactInfo/Address/City','The PI address is missing a city. Please use the Proposal Person window to fix this.','keyPersonnel',to_timestamp('07-SEP-16 11.09.52.960000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','83b0cedb-5199-4a60-ab20-84d2bc4b831f',0,'RR_SF424_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (405,'/GrantApplication/Forms/RR_SF424_2_0/PDPIContactInfo/Phone','The PI phone number. Please use the Proposal Person window to fix this.','keyPersonnel',to_timestamp('07-SEP-16 11.09.52.963000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','2cb019d5-470a-465f-99ba-35bdacad1964',0,'RR_SF424_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (406,'/GrantApplication/Forms/RR_SF424_2_0/PDPIContactInfo/Email','The PI email address is missing. Please use the Proposal Person window to fix this.','keyPersonnel',to_timestamp('07-SEP-16 11.09.52.965000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','ce58e8e1-3c87-4eb4-815b-ae6e31e8086c',0,'RR_SF424_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (407,'/GrantApplication/Forms/RR_SF424_2_0/ApplicationType/isOtherAgencySubmission','Please answer the Application Type Other Agency Submission questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.52.967000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','958b0d1d-d062-4837-a70c-e79aa465600d',0,'RR_SF424_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (408,'/GrantApplication/Forms/RR_SF424_2_0/StateReview/StateReviewCodeType','Please answer the State Executive Order questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.52.970000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','d2efe872-bbba-42bc-91e5-ff4d56c30de5',0,'RR_SF424_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (409,'/GrantApplication/Forms/RR_SF424_2_0/StateReview/StateReviewDate','Please answer the State Review Date questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.52.972000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','fe43b725-e00f-4721-91a4-a96c00f2e262',0,'RR_SF424_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (410,'/GrantApplication/Forms/RR_SF424/ApplicantInfo/OrganizationInfo/DUNSID','The selected organization does not have DUNS number','proposal',to_timestamp('07-SEP-16 11.09.52.975000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','6f8a9ae9-13db-4af2-8f8c-bfa9353a3b97',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (411,'/GrantApplication/Forms/RR_SF424/PDPIContactInfo','Contact information missing for PD/PI, please make sure a Principal Investigator has been added.','keyPersonnel',to_timestamp('07-SEP-16 11.09.52.977000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','ae0f185c-fc60-4ed1-bf97-36cfacb35409',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (412,'/GrantApplication/Forms/RR_SF424/PDPIContactInfo/Address/Street1','The PI address is invalid.  Use the proposal person window to add a street address','keyPersonnel',to_timestamp('07-SEP-16 11.09.52.980000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','8a838f0d-ef40-4060-9ffc-bbf6582d2477',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (413,'/GrantApplication/Forms/RR_SF424/PDPIContactInfo/Address/Country','The PI country code is invalid. Use the proposal person window to fix this','keyPersonnel',to_timestamp('07-SEP-16 11.09.52.982000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','15d2690f-3fb2-4b1a-8acb-93f7b6939cad',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (414,'/GrantApplication/Forms/RR_SF424/PDPIContactInfo/Address/City','The PI address is missing a city. Please use the Proposal Person window to fix this.','keyPersonnel',to_timestamp('07-SEP-16 11.09.52.985000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','43d3bb5b-9cfe-4d34-99f5-415defb51a0b',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (415,'/GrantApplication/Forms/RR_SF424/EstimatedProjectFunding/TotalEstimatedAmount','Total estimated amount is missing -Please provide a budget','budgetVersions',to_timestamp('07-SEP-16 11.09.52.990000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','fddf2401-94ca-4d31-a0e2-3c6f65178408',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (416,'/GrantApplication/Forms/RR_SF424/EstimatedProjectFunding/TotalfedNonfedrequested','Total requested funding is missing - Please provide a budget','budgetVersions',to_timestamp('07-SEP-16 11.09.52.992000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','bf32da05-4ec6-40c9-8d48-aed50029ebe2',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (417,'/GrantApplication/Forms/RR_SF424/EstimatedProjectFunding/EstimatedProgramIncome','Program Income is missing - Please provide a budget','budgetVersions',to_timestamp('07-SEP-16 11.09.52.995000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','f90da2fc-4c38-491b-b93b-08ec0ce0bbbf',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (418,'/GrantApplication/Forms/RR_SF424/ActivityTitle','Please enter the program title','proposal',to_timestamp('07-SEP-16 11.09.52.997000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','a9510785-4fa6-4482-8c44-2939106a13b0',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (419,'/GrantApplication/Forms/RR_SF424/AORInfo/Address/Country','The country code for the AOR is not valid for Grants.gov','proposal',to_timestamp('07-SEP-16 11.09.53.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','79d271b8-409d-48f8-ad81-448df7e84807',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (420,'/GrantApplication/Forms/RR_SF424/AORInfo/Title','The AOR must have a title','proposal',to_timestamp('07-SEP-16 11.09.53.009000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','159f5ee6-7521-48df-9533-972fc0203a19',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (421,'/GrantApplication/Forms/RR_SF424/ProjectTitle','You are missing a project title','proposal',to_timestamp('07-SEP-16 11.09.53.012000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','1d65b480-bb01-4eca-86e4-b937b65c62bc',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (422,'/GrantApplication/Forms/RR_SF424/EstimatedProjectFunding/TotalEstimatedAmount','You are missing total budget amounts','budgetVersions',to_timestamp('07-SEP-16 11.09.53.019000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','ef0eb720-3a51-44d7-92ec-5a956acdc6d8',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (423,'/GrantApplication/Forms/RR_SF424/EstimatedProjectFunding/TotalfedNonfedrequested','You are missing total budget amounts','budgetVersions',to_timestamp('07-SEP-16 11.09.53.021000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','dc101e53-e36d-444b-acbe-9c1fadbe72a7',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (424,'/GrantApplication/Forms/RR_SF424/EstimatedProjectFunding/EstimatedProgramIncome','You are missing total budget amounts','budgetVersions',to_timestamp('07-SEP-16 11.09.53.024000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','ee75a4c9-46d4-4490-b2c7-dcae3375dd27',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (425,'/GrantApplication/Forms/RR_SF424/ApplicantInfo/ContactPersonInfo','You are missing a contact person for the proposal','proposal',to_timestamp('07-SEP-16 11.09.53.029000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','d0112fdf-5abb-48e7-8c80-b27e7e06a003',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (426,'/GrantApplication/Forms/RR_SF424/StateID','Selected organization missing state','proposal',to_timestamp('07-SEP-16 11.09.53.031000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','03d80e81-030a-4488-bf50-67bae811e7bd',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (427,'/GrantApplication/Forms/RR_SF424/ApplicantInfo/OrganizationInfo/Address/City','Selected organization missing city','proposal',to_timestamp('07-SEP-16 11.09.53.034000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','d2674caf-c14a-45ee-ac7d-8d149274da70',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (428,'/GrantApplication/Forms/RR_SF424/ApplicantInfo/OrganizationInfo/Address/County','Selected organization missing county','proposal.Organization/Location',to_timestamp('07-SEP-16 11.09.53.036000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','47c9af59-913f-4716-86df-9f5850125bc3',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (429,'/GrantApplication/Forms/RR_SF424/ApplicantInfo/OrganizationInfo/Address/ZipPostalCode','Selected organization missing postal code','proposal.Organization/Location',to_timestamp('07-SEP-16 11.09.53.039000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','eb652e6c-aedd-4703-9085-8faa09bb8920',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (430,'/GrantApplication/Forms/RR_SF424/ApplicantInfo/OrganizationInfo/Address','Selected organization missing address','proposal.Organization/Location',to_timestamp('07-SEP-16 11.09.53.041000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','873aabfe-5eaf-4a9b-974f-6e3f85c5f14b',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (431,'/GrantApplication/Forms/RR_SF424/ApplicantInfo/ContactPersonInfo/Name/FirstName','First name missing for proposal contact person, please verify the information in the Unit Administrator table.','grantsGov',to_timestamp('07-SEP-16 11.09.53.043000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','6040ce7e-bf90-4d15-b4c5-1f57740a2457',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (432,'/GrantApplication/Forms/RR_SF424/ApplicantInfo/ContactPersonInfo/Name/MiddleName','Middle name missing for contact person','proposal.Organization/Location',to_timestamp('07-SEP-16 11.09.53.046000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','d27301bb-3ffd-4df1-89f6-9354548fff47',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (433,'/GrantApplication/Forms/RR_SF424/ApplicantInfo/ContactPersonInfo/Name/LastName','Last name missing for proposal contact person, please verify the information in the Unit Administrator table.','grantsGov',to_timestamp('07-SEP-16 11.09.53.048000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','fef3f8fd-f330-4a32-9759-c116c6202e71',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (434,'/GrantApplication/Forms/RR_SF424/ApplicantInfo/ContactPersonInfo/Fax','Fax missing for contact person','proposal.Organization/Location',to_timestamp('07-SEP-16 11.09.53.051000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','9655569a-d922-41bc-b16b-a5973abf39cb',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (435,'/GrantApplication/Forms/RR_SF424/ApplicantInfo/ContactPersonInfo/Email','Email address missing for contact person','proposal.Organization/Location',to_timestamp('07-SEP-16 11.09.53.053000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','9c3b519a-9fbe-4660-ad63-dede628452b3',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (436,'/GrantApplication/Forms/RR_SF424/ApplicantType/ApplicantTypeCode','Applicant type missing','proposal.SponsorProgramInformation',to_timestamp('07-SEP-16 11.09.53.056000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','23b63e60-d59e-41d6-8f80-dfa8514a9ffc',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (437,'/GrantApplication/Forms/RR_SF424/Location','Areas Affected by Project is required, please add this Abstract Type in the Abstracts and Attachments tab','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.059000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','bc385f2e-232e-4593-9ac3-fa1dc1fdcbe6',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (438,'/GrantApplication/Forms/RR_SF424/PDPIContactInfo','PDPI contact info missing','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.062000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','b7d4ba86-bf2e-4e46-802a-be669601a345',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (439,'/GrantApplication/Forms/RR_SF424/EstimatedProjectFunding','Estimated Project funding missing','budgetVersions',to_timestamp('07-SEP-16 11.09.53.064000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','80bc82c0-8d09-4394-b1f7-3ebe0807e0dd',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (440,'/GrantApplication/Forms/RR_SF424/AORInfo/Address','Missing AOR address','proposal',to_timestamp('07-SEP-16 11.09.53.067000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','770ba091-db61-4304-8306-5f8a60f36cb6',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (441,'/GrantApplication/Forms/RR_SF424/AORInfo/Phone','Missing AOR phone number','proposal',to_timestamp('07-SEP-16 11.09.53.069000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','adde0fcc-6ac2-4609-a178-b97c70bf9b73',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (442,'/GrantApplication/Forms/RR_SF424/AORInfo/Fax','Missing AOR Fax','proposal',to_timestamp('07-SEP-16 11.09.53.071000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','569ed06a-140e-421f-9aa5-628d14f1ec22',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (443,'/GrantApplication/Forms/RR_SF424/AORInfo/Email','Missing AOR email address','proposal',to_timestamp('07-SEP-16 11.09.53.074000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','02caa6be-8245-4f85-b57d-fd960d843ab0',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (444,'/GrantApplication/Forms/RR_SF424/AORInfo/OrganizationName','Missing AOR organization name','proposal',to_timestamp('07-SEP-16 11.09.53.076000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','56d1ab91-66be-4648-ae81-b060b8860fdc',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (445,'/GrantApplication/Forms/RR_SF424/AORInfo/DepartmentName','Missing AOR department name','proposal',to_timestamp('07-SEP-16 11.09.53.079000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','6652477f-d4a6-42a3-806e-79981e300f2c',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (446,'/GrantApplication/Forms/RR_SF424/AORInfo/DivisionName','Missing AOR division name','proposal',to_timestamp('07-SEP-16 11.09.53.081000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','03dcfcf6-935f-4cbb-8e2c-3b1f49e0b51f',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (447,'/GrantApplication/Forms/RR_SF424/AORInfo','Missing AOR information','proposal',to_timestamp('07-SEP-16 11.09.53.084000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','8471022c-dc69-4ed2-85db-d8a4762092b5',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (448,'/GrantApplication/Forms/RR_SF424/ApplicantInfo/ContactPersonInfo/Phone','Phone number missing for proposal contact person, please verify the information in the Unit Administrator table.','grantsGov',to_timestamp('07-SEP-16 11.09.53.086000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','2cdeeff7-c1b4-4b27-88a8-5b3cbd2c7442',0,'RR_SF424','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (449,'/GrantApplication/Forms/RR_SF424_1_2/ApplicantInfo/ContactPersonInfo/Name/FirstName','First name missing for proposal contact person, please verify the information in the Unit Administrator table.','grantsGov',to_timestamp('07-SEP-16 11.09.53.088000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','d538beb3-d3b4-4bd8-a9bc-6acf2e4e5161',0,'RR_SF424_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (450,'/GrantApplication/Forms/RR_SF424_1_2/ApplicantInfo/ContactPersonInfo/Name/LastName','Last name missing for proposal contact person, please verify the information in the Unit Administrator table.','grantsGov',to_timestamp('07-SEP-16 11.09.53.091000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','9a76c0c6-b4f7-4cbe-b232-f8c0c7b9516f',0,'RR_SF424_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (451,'/GrantApplication/Forms/RR_SF424_1_2/ApplicantInfo/ContactPersonInfo/Phone','Phone number missing for proposal contact person, please verify the information in the Unit Administrator table.','grantsGov',to_timestamp('07-SEP-16 11.09.53.093000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','96141470-1df7-46f8-8e3d-423cd3c0327e',0,'RR_SF424_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (452,'/GrantApplication/Forms/RR_SF424_1_2/PDPIContactInfo','Contact information missing for PD/PI, please make sure a Principal Investigator has been added.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.096000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','f0290011-194c-434f-b115-8d9a4a0d1c58',0,'RR_SF424_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (453,'/GrantApplication/Forms/RR_SF424_1_2/StateReview/StateReviewCodeType','Please answer the State Executive Order questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.103000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','4fd5023d-4956-4f7d-89ad-ec6f5d377134',0,'RR_SF424_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (454,'/GrantApplication/Forms/RR_SF424_1_2/StateReview/StateReviewDate','Please answer the State Review Date questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.106000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','a2eb04ad-0794-40c6-9769-2fcfb2054aa8',0,'RR_SF424_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (455,'/GrantApplication/Forms/RR_SF424_1_2/ApplicationType','Please answer the Application Type questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.108000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','13f41875-c9e6-428e-8724-b1ca0c61be80',0,'RR_SF424_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (456,'/GrantApplication/Forms/RR_SF424_1_2/ApplicationType/isOtherAgencySubmission','Please answer the Application Type Other Agency Submission questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.111000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','c9160fd2-574c-434b-bc08-d1765076769e',0,'RR_SF424_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (457,'/GrantApplication/Forms/RR_KeyPerson/PDPI','A PD/PI is required, please add a Principal Investigator to the proposal.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.113000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','c6423d6f-2e58-4e50-a556-ee59425f4dec',0,'RR_KeyPerson','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (458,'/GrantApplication/Forms/RR_KeyPerson/Profile/BioSketchAttached','The PI must have a BioSketch.  Upload the PDF on the Proposal Personnel screen, with "BIOSKETCH" as the description.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.116000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','cda5e3ce-61d1-404a-96d3-4d9883607f09',0,'RR_KeyPerson','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (459,'/GrantApplication/Forms/RR_KeyPerson/PDPI/Profile/Address/Country','You have entered an invalid country code for your investigator. Use the proposal person window to fix this.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.119000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','7c4322aa-2f16-478d-89a2-e29569e907f0',0,'RR_KeyPerson','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (460,'/GrantApplication/Forms/RR_KeyPerson/KeyPerson/Profile/BioSketchsAttached','Each investigator and key person must have a BioSketch.  Upload the PDF on the Proposal Personnel screen, with "BIOSKETCH" as the description.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.124000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','47153d37-438e-4043-82d1-980a6104ba91',0,'RR_KeyPerson','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (461,'/GrantApplication/Forms/RR_KeyPerson/KeyPerson/Profile/BioSketchsAttached','All key persons must have a BioSketch.  Upload the PDF on the Proposal Personnel screen, with "BIOSKETCH" as the description.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.126000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','fa25f2c2-e8bb-4983-a864-27779be1d685',0,'RR_KeyPerson','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (462,'/GrantApplication/Forms/RR_KeyPerson/PDPI/Profile/Address/Street1','The PI address is missing Address Line 1. Please use the Proposal Person window to fix this.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.129000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','2f57a7cf-6225-4895-91b6-6da351db73d3',0,'RR_KeyPerson','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (463,'/GrantApplication/Forms/RR_KeyPerson/PDPI/Profile/Address/City','The PI address is missing a city. Please use the Proposal Person window to fix this.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.138000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','405ba473-13b2-4df2-a815-d4ade0faa3eb',0,'RR_KeyPerson','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (464,'/GrantApplication/Forms/RR_KeyPerson/KeyPerson/Profile/Address/City','The address for each key person must have a city. Please use the Proposal Person window to fix this.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.141000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','88a0bda1-d7a6-41d0-b643-8df4aa4b32bb',0,'RR_KeyPerson','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (465,'/GrantApplication/Forms/RR_KeyPerson/KeyPerson/Profile/Address/Street1','The address for each key person must include Address Line 1. Please use the Proposal Person window to fix this.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.143000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','416f859f-1748-43a2-981b-0ef55c2baf56',0,'RR_KeyPerson','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (466,'/GrantApplication/Forms/RR_KeyPerson/PDPI/Profile/BioSketchsAttached/BioSketchAttached','Each investigator and key person must have a BioSketch. Upload the PDF on the Personnel Attachments panel, with "BIOSKETCH" as the attachment type.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.146000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','f9ccdf08-b0da-4dd5-b8a5-29b711cfe43d',0,'RR_KeyPerson','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (467,'/GrantApplication/Forms/RR_OtherProjectInfo/OtherAttachments/OtherAttachment','You must have an at least one Attachment with type ''Other'' or ''SupplementaryDocumentation''','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.148000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','7da38456-bd33-4799-8cc6-2fc676481e2b',0,'RR_OtherProjectInfo','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (468,'/GrantApplication/Forms/RR_OtherProjectInfo/OtherAttachments','You must have an at least one Attachment with type ''Other'' or ''SupplementaryDocumentation''','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.151000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','d4ea0874-bb10-4bb2-9631-b8fed23d3b6f',0,'RR_OtherProjectInfo','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (469,'/GrantApplication/Forms/RR_OtherProjectInfo/AbstractAttachments','You must have a ProjectSummary with the proposal. Please attach the ProjectSummary in Abstracts and Attachments window','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.158000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','52417c35-7add-4cb2-84fa-6190d4facd48',0,'RR_OtherProjectInfo','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (470,'/GrantApplication/Forms/RR_OtherProjectInfo/ProjectNarrativeAttachments','You must have a Narrative with the proposal. Please attach the Narrative in Abstracts and Attachments window','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.161000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','567271dc-90ff-441a-a711-c1624b4f4461',0,'RR_OtherProjectInfo','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (471,'/GrantApplication/Forms/RR_Budget/BudgetYear1/BudgetJustificationAttachment','You must have a BudgetJustification with the proposal. Please attach the BudgetJustification in Abstracts and Attachments window','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.163000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','214833be-271b-498d-b497-f5eb6b176526',0,'RR_Budget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (472,'/GrantApplication/Forms/RR_OtherProjectInfo/HumanSubjectsSupplement/ExemptionNumbers/ExemptionNumber','Valid Human Subjects exemption numbers are E1,E2,E3,E4,E5,E6','specialReview',to_timestamp('07-SEP-16 11.09.53.187000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','3d85b6c2-cd69-47c2-ac98-dde87b1c2c93',0,'RR_OtherProjectInfo','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (473,'/GrantApplication/Forms/RR_OtherProjectInfo/ProprietaryInformationIndicator','Please answer the Proprietary Information question.','questions',to_timestamp('07-SEP-16 11.09.53.193000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','c5ae0e0a-eae0-4859-8eca-fd5147ffe440',0,'RR_OtherProjectInfo','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (474,'/GrantApplication/Forms/RR_OtherProjectInfo/EnvironmentalImpact','Please answer the Environmental Impact question.','questions',to_timestamp('07-SEP-16 11.09.53.196000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','f2e781d5-c67d-49bf-8ad4-8ab62e0e23ac',0,'RR_OtherProjectInfo','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (475,'/GrantApplication/Forms/RR_OtherProjectInfo/InternationalActivities','Please answer the International Activities question.','questions',to_timestamp('07-SEP-16 11.09.53.198000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','67e275bd-ffb4-4b2f-b8e3-c48263180663',0,'RR_OtherProjectInfo','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (476,'/GrantApplication/Forms/RR_OtherProjectInfo/EnvironmentalImpact/EnvironmentalExemption/EnvironmentalExemptionExplanation','Please answer the Environmental Impact question.','questions',to_timestamp('07-SEP-16 11.09.53.200000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','0ab4d3f0-ef72-45e6-8ae6-3aed68cb2608',0,'RR_OtherProjectInfo','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (477,'/GrantApplication/Forms/RR_OtherProjectInfo/OtherAttachments','You must have an at least one Narrative with the proposal.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.203000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','4fb29827-a0e8-4e12-950d-14515c059f9e',0,'RR_OtherProjectInfo','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (478,'/GrantApplication/Forms/RR_OtherProjectInfo/InternationalActivities/InternationalActivitiesIndicator','Please answer the International Activities question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.205000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','309d28af-b55c-4c86-9f0f-1e4f3dacc305',0,'RR_OtherProjectInfo','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (479,'/GrantApplication/Forms/RR_OtherProjectInfo/EnvironmentalImpact/EnvironmentalImpactIndicator','Please answer the Environmental Impact question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.208000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','3e219b8a-56bb-4414-baf3-2dd0d473aef7',0,'RR_OtherProjectInfo','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (480,'/GrantApplication/Forms/RR_OtherProjectInfo/EnvironmentalImpact/EnvironmentalImpactExplanation','Please explain the Environmental Impact question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.210000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','b608e63d-5817-421a-b5b5-a4ebcc1b64e2',0,'RR_OtherProjectInfo','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (481,'/GrantApplication/Forms/RR_OtherProjectInfo/EnvironmentalImpact/EnvironmentalExemption/EnvironmentalExemptionExplanation','Please explain the Environmental Exemption question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.213000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','45402cd8-482d-414c-bae1-0891552e3ee9',0,'RR_OtherProjectInfo','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (482,'/GrantApplication/Forms/RR_OtherProjectInfo/InternationalActivities/ActivitiesPartnershipsCountries','Please explain the Activities Partnerships Countries question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.215000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','adc0ab3e-984f-4270-b7c8-ce44a636065c',0,'RR_OtherProjectInfo','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (483,'/GrantApplication/Forms/RR_OtherProjectInfo_1_2/InternationalActivities','Please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.218000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','fa91fbc0-cc0e-405a-ac5f-f5b8902e2f33',0,'RR_OtherProjectInfo_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (484,'/GrantApplication/Forms/RR_OtherProjectInfo_1_2/ProjectSummaryAttachments','The Project Summary proposal attachment is required for the RR Other Project Info form.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.220000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','bb5fe651-6d2b-449e-a71c-7de7ce68070a',0,'RR_OtherProjectInfo_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (485,'/GrantApplication/Forms/RR_OtherProjectInfo_1_2/ProjectNarrativeAttachments','The Narrative proposal attachment is required for the RR Other Project Info form.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.223000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','10057bcf-7ff6-4f36-8048-c5e1dfeb7806',0,'RR_OtherProjectInfo_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (486,'/GrantApplication/Forms/RR_OtherProjectInfo_1_2/ProprietaryInformationIndicator','Please answer the Proprietary Information question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.229000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','d8b1df6a-dc7c-4538-bd45-d8b4683b8230',0,'RR_OtherProjectInfo_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (487,'/GrantApplication/Forms/RR_OtherProjectInfo_1_2/EnvironmentalImpact/EnvironmentalImpactIndicator','Please answer the Environmental Impact question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.231000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','4b686c4e-cc35-4b45-8ade-fb116237eca8',0,'RR_OtherProjectInfo_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (488,'/GrantApplication/Forms/RR_OtherProjectInfo_1_2/HistoricDesignation','Please answer the Historic Designation question for this form	within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.234000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','6af1a44d-e9c5-42b6-aa89-c8762c5487eb',0,'RR_OtherProjectInfo_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (489,'/GrantApplication/Forms/RR_OtherProjectInfo_1_2/InternationalActivities/InternationalActivitiesIndicator','Please answer the International Activities question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.236000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','40f4dfbc-cb85-4bd8-93bb-d1781f9a93a5',0,'RR_OtherProjectInfo_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (490,'/GrantApplication/Forms/RR_OtherProjectInfo_1_2/EnvironmentalImpact/EnvironmentalImpactExplanation','Please explain the Environmental Impact question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.239000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','68ba65d7-7b19-4b69-a483-1ccbb66e5254',0,'RR_OtherProjectInfo_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (491,'/GrantApplication/Forms/RR_OtherProjectInfo_1_2/EnvironmentalImpact/EnvironmentalExemption/EnvironmentalExemptionExplanation','Please explain the Environmental Exemption question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.241000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','7e93c5bf-0b3d-423f-bdff-eaff507fe2fd',0,'RR_OtherProjectInfo_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (492,'/GrantApplication/Forms/RR_OtherProjectInfo_1_2/HistoricDesignationExplanation','Please explain the Historic Designation question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.243000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','50a6a2bf-8ca7-40da-9e60-801657764279',0,'RR_OtherProjectInfo_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (493,'/GrantApplication/Forms/RR_OtherProjectInfo_1_2/InternationalActivities/ActivitiesPartnershipsCountries','Please explain the Activities Partnerships Countries question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.246000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','edeff779-0ee7-44e8-b6c0-0faefa9829a4',0,'RR_OtherProjectInfo_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (494,'/GrantApplication/Forms/RR_OtherProjectInfo_1_3/InternationalActivities','Please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.248000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','d36b4895-95fd-4c2f-bac3-accc78c89294',0,'RR_OtherProjectInfo_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (495,'/GrantApplication/Forms/RR_OtherProjectInfo_1_3/AbstractAttachments','The Project Summary proposal attachment is required for the RR Other Project Info form.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.256000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','2dd244f8-b2c4-4b66-9e3f-b95c9542a2e1',0,'RR_OtherProjectInfo_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (496,'/GrantApplication/Forms/RR_OtherProjectInfo_1_3/ProjectNarrativeAttachments','The Narrative proposal attachment is required for the RR Other Project Info form.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.259000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','0e8bad5b-bf48-4fe7-992a-9ea92afc9e24',0,'RR_OtherProjectInfo_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (497,'/GrantApplication/Forms/RR_OtherProjectInfo_1_3/ProprietaryInformationIndicator','Please answer the Proprietary Information question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.265000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','2fdf21a9-39c2-4ba0-b294-0fd95f4bd8ad',0,'RR_OtherProjectInfo_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (498,'/GrantApplication/Forms/RR_OtherProjectInfo_1_3/EnvironmentalImpact/EnvironmentalImpactIndicator','Please answer the Environmental Impact question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.272000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','3b3a467c-4d41-49be-89a8-57271bddd992',0,'RR_OtherProjectInfo_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (499,'/GrantApplication/Forms/RR_OtherProjectInfo_1_3/HistoricDesignation','Please answer the Historic Designation question for this form	within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.274000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','889c7805-a09b-43c4-9fde-43e739d61bae',0,'RR_OtherProjectInfo_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (500,'/GrantApplication/Forms/RR_OtherProjectInfo_1_3/InternationalActivities/InternationalActivitiesIndicator','Please answer the International Activities question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.276000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','96c67da8-e851-4d2d-9bd4-657b065a35c0',0,'RR_OtherProjectInfo_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (501,'/GrantApplication/Forms/RR_OtherProjectInfo_1_3/EnvironmentalImpact/EnvironmentalImpactExplanation','Please explain the Environmental Impact question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.279000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','3c12c453-2818-4bc4-b31f-c3792022c64b',0,'RR_OtherProjectInfo_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (502,'/GrantApplication/Forms/RR_OtherProjectInfo_1_3/EnvironmentalImpact/EnvironmentalExemption/EnvironmentalExemptionExplanation','Please explain the Environmental Exemption question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.282000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','6865ae59-bf25-483f-ade4-81b273af22af',0,'RR_OtherProjectInfo_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (503,'/GrantApplication/Forms/RR_OtherProjectInfo_1_3/HistoricDesignationExplanation','Please explain the Historic Designation question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.284000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','92810bcd-0a26-441b-acda-3c83757dbbfa',0,'RR_OtherProjectInfo_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (504,'/GrantApplication/Forms/RR_OtherProjectInfo_1_3/InternationalActivities/ActivitiesPartnershipsCountries','Please explain the Activities Partnerships Countries question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.286000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','8194b14b-c243-4b99-8baa-4906d55e452f',0,'RR_OtherProjectInfo_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (505,'/GrantApplication/Forms/RR_KeyPersonExpanded/KeyPerson/Profile/BioSketchsAttached','All key persons must have a BioSketch.Upload the PDF on the Proposal Personnel screen, with "BIOSKETCH" as the description.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.289000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','ed5486b9-ea4a-4590-b9a9-27b743debfda',0,'RR_KeyPersonExpanded','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (506,'/GrantApplication/Forms/RR_KeyPersonExpanded/PDPI/Profile/Address/City','The PI address is missing a city. Please use the Proposal Person window to fix this.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.291000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','eb91e9db-cc84-4ceb-9244-1bf822e047c2',0,'RR_KeyPersonExpanded','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (507,'/GrantApplication/Forms/RR_KeyPersonExpanded/PDPI/Profile/Address/Street1','The PI address is missing Address Line 1. Please use the Proposal Person window to fix this.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.294000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','680cd96b-4cb0-4e11-a6d9-11acff06feb2',0,'RR_KeyPersonExpanded','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (508,'/GrantApplication/Forms/RR_KeyPersonExpanded/KeyPerson/Profile/Address/City','The address for each key person must have a city. Please use the Proposal Person window to fix this.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.296000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','2d97cfe0-6eb1-4642-bcb9-fe45fd37ebcf',0,'RR_KeyPersonExpanded','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (509,'/GrantApplication/Forms/RR_KeyPersonExpanded/KeyPerson/Profile/Address/Street1','The address for each key person must include Address Line 1. Please use the Proposal Person window to fix this.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.299000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','0b935509-492d-4a9e-86ba-b034de5ae9a2',0,'RR_KeyPersonExpanded','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (510,'/GrantApplication/Forms/RR_KeyPersonExpanded/KeyPerson/Profile/Email','The email address for each key person is required. Please use the Proposal Person window to fix this.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.301000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','aa073867-ebdd-4aef-8628-91ab9ac26cbf',0,'RR_KeyPersonExpanded','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (511,'/GrantApplication/Forms/RR_KeyPersonExpanded/KeyPerson/Profile/Phone','The phone for each key person is required. Please use the Proposal Person window to fix this.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.303000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','382130f3-a760-4ecb-be3b-1b9661757ff8',0,'RR_KeyPersonExpanded','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (512,'/GrantApplication/Forms/RR_KeyPersonExpanded/PDPI','A PD/PI is required, please add a Principal Investigator to the proposal.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.306000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','86ba8e96-8780-4703-988b-f654b3fd517c',0,'RR_KeyPersonExpanded','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (513,'/GrantApplication/Forms/RR_KeyPersonExpanded/PDPI/Profile/BioSketchsAttached/BioSketchAttached','Each investigator and key person must have a BioSketch. Upload the PDF on the Personnel Attachments panel, with "BIOSKETCH" as the attachment type.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.308000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','2dd19651-cda3-40a9-856b-9edf9aa1d48c',0,'RR_KeyPersonExpanded','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (514,'/GrantApplication/Forms/RR_KeyPersonExpanded_1_2/PDPI','A PD/PI is required, please add a Principal Investigator to the proposal.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.311000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','a5f26c84-9f22-4ce2-9b55-e7d4ae96a5ca',0,'RR_KeyPersonExpanded_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (515,'/GrantApplication/Forms/RR_KeyPersonExpanded_1_2/PDPI/Profile/BioSketchsAttached/BioSketchAttached','Each investigator and key person must have a BioSketch. Upload the PDF on the Personnel Attachments panel, with "BIOSKETCH" as the attachment type.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.314000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','33b80c1f-1406-423d-9702-165cce9f9614',0,'RR_KeyPersonExpanded_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (516,'/GrantApplication/Forms/ProjectNarrativeAttachments/Attachments','You must have at least one Project Narrative attachment with the proposal.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.316000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','c1904916-d5de-462c-8685-22020dc83e17',0,'ProjectNarrativeAttachments','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (517,'/GrantApplication/Forms/PHS398_CoverPageSupplement/PDPI/PDPIName','You must have a Principal Investigator.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.321000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','28e2d64f-4695-4431-ad85-0ddd68986edd',0,'PHS398_CoverPageSupplement','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (518,'/GrantApplication/Forms/PHS398_CoverPageSupplement/PDPI/PDPIName/LastName','Last name is required for the PD/PI.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.343000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','66f61606-e390-4686-b473-4da07819710a',0,'PHS398_CoverPageSupplement','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (519,'/GrantApplication/Forms/PHS398_CoverPageSupplement/PDPI/PDPIName/FirstName','First name is required for the PD/PI.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.360000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','0d406073-ae2d-4bba-b0ef-2d6ec045c89c',0,'PHS398_CoverPageSupplement','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (520,'/GrantApplication/Forms/PHS398_CoverPageSupplement/PDPI/IsNewInvestigator','Please answer the NIH beginning Investigator question.','questions',to_timestamp('07-SEP-16 11.09.53.362000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','29386b5f-1479-4a8f-9a91-4d70c0d06982',0,'PHS398_CoverPageSupplement','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (521,'/GrantApplication/Forms/PHS398_CoverPageSupplement/ContactPersonInfo/ContactName','The administrative officer for the lead unit is missing.','proposal',to_timestamp('07-SEP-16 11.09.53.365000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','b6261f71-d653-4463-9cff-de7e816cc676',0,'PHS398_CoverPageSupplement','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (522,'/GrantApplication/Forms/PHS398_CoverPageSupplement/ContactPersonInfo/ContactName/LastName','Last name is required for the administrative contact person.','proposal',to_timestamp('07-SEP-16 11.09.53.367000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','5dacfdf4-a222-4192-8b2d-63019b8444ba',0,'PHS398_CoverPageSupplement','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (523,'/GrantApplication/Forms/PHS398_CoverPageSupplement/ContactPersonInfo/ContactName/FirstName','First name is required for the administrative contact person.','proposal',to_timestamp('07-SEP-16 11.09.53.370000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','837e1307-8e02-412c-a1d9-551dc6ee6cb0',0,'PHS398_CoverPageSupplement','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (524,'/GrantApplication/Forms/PHS398_CoverPageSupplement/ContactPersonInfo/ContactPhone','Phone number is required for the administrative contact person.','proposal',to_timestamp('07-SEP-16 11.09.53.372000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','ee2d3d92-df66-41c0-8dee-d0298deac5ff',0,'PHS398_CoverPageSupplement','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (525,'/GrantApplication/Forms/PHS398_CoverPageSupplement/ContactPersonInfo/ContactTitle','Title is required for the administrative contact person.','proposal',to_timestamp('07-SEP-16 11.09.53.374000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','888ad3ca-55ae-44ec-b1b1-c035443d42e5',0,'PHS398_CoverPageSupplement','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (526,'/GrantApplication/Forms/PHS398_CoverPageSupplement/ContactPersonInfo/ContactAddress','Address is required for the administrative contact person.','proposal',to_timestamp('07-SEP-16 11.09.53.377000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','fc23bc25-b9e2-4e29-905e-ee49267f7421',0,'PHS398_CoverPageSupplement','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (527,'/GrantApplication/Forms/PHS398_CoverPageSupplement/ContactPersonInfo/ContactAddress/Street1','A valid address is required for the administrative contact person.','proposal',to_timestamp('07-SEP-16 11.09.53.379000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','8c7991df-9cc1-42b3-bfaa-c25152d4b802',0,'PHS398_CoverPageSupplement','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (528,'/GrantApplication/Forms/PHS398_CoverPageSupplement/ContactPersonInfo/ContactAddress/City','City name is required for the contact administrative person address.','proposal',to_timestamp('07-SEP-16 11.09.53.382000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','29fb46c5-f2e0-4ce1-944a-0621b8b95b17',0,'PHS398_CoverPageSupplement','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (529,'/GrantApplication/Forms/PHS398_CoverPageSupplement/ContactPersonInfo/ContactAddress/Country','Country name is required for the administrative contact person address.','proposal',to_timestamp('07-SEP-16 11.09.53.384000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','d0c8230f-0c2b-483f-aad0-6a346615b766',0,'PHS398_CoverPageSupplement','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (530,'/GrantApplication/Forms/PHS398_CoverPageSupplement/StemCells/IsHumanStemCellsInvolved','Please answer the human embryonic stem cells question.','questions',to_timestamp('07-SEP-16 11.09.53.387000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','dd99f8ba-f02c-4e61-a3b8-0eda4787e0e9',0,'PHS398_CoverPageSupplement','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (531,'/GrantApplication/Forms/PHS398_CoverPageSupplement/StemCells/CellLines','The registration number of the specific cell line is too long. Please see the human embryonic stem cells question for explanation.','questions',to_timestamp('07-SEP-16 11.09.53.389000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','4d8f9d95-1443-4639-a14c-09fa1c06e39d',0,'PHS398_CoverPageSupplement','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (532,'/GrantApplication/Forms/Nasa_PIandAORSupplementalDataSheet/PrincipalInvestigatorName/PDPIName','You must have a Principal Investigator.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.392000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','ca38aba9-e62b-4eff-97ef-8ed5b9ba9d61',0,'Nasa_PIandAORSupplementalDataSheet','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (533,'/GrantApplication/Forms/Nasa_PIandAORSupplementalDataSheet/PrincipalInvestigatorName/PDPIName/LastName','Last name is required for the Principal Investigator.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.395000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','1c7e634e-5aea-49ec-a8df-4a358fb97fd2',0,'Nasa_PIandAORSupplementalDataSheet','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (534,'/GrantApplication/Forms/Nasa_PIandAORSupplementalDataSheet/PrincipalInvestigatorName/PDPIName/FirstName','First name is required for the Principal Investigator.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.398000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','b09a3c40-9be2-40b9-8392-a3e57117bf10',0,'Nasa_PIandAORSupplementalDataSheet','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (535,'/GrantApplication/Forms/Nasa_PIandAORSupplementalDataSheet/PrincipalInvestigatorName/USGovernmentParticipation','Please answer the US government participation question.','questions',to_timestamp('07-SEP-16 11.09.53.400000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','9b501494-30cd-4ff4-945c-7087bfb50287',0,'Nasa_PIandAORSupplementalDataSheet','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (536,'/GrantApplication/Forms/Nasa_PIandAORSupplementalDataSheet/PrincipalInvestigatorName','Please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.403000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','cbf2c2a5-83b3-498b-92d3-ce5e1547372e',0,'Nasa_PIandAORSupplementalDataSheet','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (537,'/GrantApplication/Forms/Nasa_PIandAORSupplementalDataSheet/PrincipalInvestigatorName/FederalAgency','Please select a U.S. Government Agency within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.405000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','9770f978-b5de-4fac-8796-01b5db12f282',0,'Nasa_PIandAORSupplementalDataSheet','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (538,'/GrantApplication/Forms/Nasa_PIandAORSupplementalDataSheet/PrincipalInvestigatorName/FederalAgencyDollar','Please enter the total dollar amount requested within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.407000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','ba515efc-d6f4-41e7-bb4f-c2afcf896318',0,'Nasa_PIandAORSupplementalDataSheet','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (539,'/GrantApplication/Forms/Nasa_PIandAORSupplementalDataSheet/PrincipalInvestigatorName/InternationalParticipation','Please answer the international participation question.','questions',to_timestamp('07-SEP-16 11.09.53.410000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','f402d222-8875-4f8a-8ee1-6e89fee21b7a',0,'Nasa_PIandAORSupplementalDataSheet','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (540,'/GrantApplication/Forms/RR_Budget/BudgetYear1/Equipment/EquipmentList/EquipmentItem','A description is required for each Equipment budget line item.','budgetVersions',to_timestamp('07-SEP-16 11.09.53.430000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','004b5660-1a9d-4c0f-847f-20d5ab00bb6a',0,'RR_Budget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (541,'/GrantApplication/Forms/RR_Budget/BudgetYear1/KeyPersons/TotalFundForAttachedKeyPersons','Total funding for Key Persons not valid for Year 1','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.433000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','c9280838-956b-4d03-bf26-2c31c7d63ede',0,'RR_Budget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (542,'/GrantApplication/Forms/RR_Budget/BudgetYear1/KeyPersons/TotalFundForKeyPersons','Total funding for Key Persons not valid for Year 1, PI is required','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.435000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','98b342bd-2dd0-474d-8e62-64f6d5425e4f',0,'RR_Budget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (543,'/GrantApplication/Forms/RR_Budget/BudgetYear1/KeyPersons','Key Persons for Year 1 not valid in budget','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.437000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','096db8c7-5f56-461d-85f9-d3cec8850ce0',0,'RR_Budget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (544,'/GrantApplication/Forms/RR_Budget/BudgetYear2/KeyPersons/TotalFundForAttachedKeyPersons','Total funding for Key Persons not valid for Year 2','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.440000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','237d8fb2-1987-4efb-bb30-3c83209fddd3',0,'RR_Budget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (545,'/GrantApplication/Forms/RR_Budget/BudgetYear2/KeyPersons/TotalFundForKeyPersons','Total funding for Key Persons not valid for Year 2, PI is required','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.442000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','20934a97-0977-4591-a10c-f0c6affb466c',0,'RR_Budget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (546,'/GrantApplication/Forms/RR_Budget/BudgetYear2/KeyPersons','Key Persons for Year 2 not valid in budget','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.445000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','e7ff8bc0-1c57-481f-9824-eec63b10658b',0,'RR_Budget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (547,'/GrantApplication/Forms/RR_Budget/BudgetYear3/KeyPersons/TotalFundForAttachedKeyPersons','Total funding for Key Persons not valid for Year 3','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.447000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','6952b877-ecc0-480b-8247-637ba60e864f',0,'RR_Budget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (548,'/GrantApplication/Forms/RR_Budget/BudgetYear3/KeyPersons/TotalFundForKeyPersons','Total funding for Key Persons not valid for Year 3, PI is required','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.450000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','0f0f8311-5456-47f4-b468-f85aca65767c',0,'RR_Budget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (549,'/GrantApplication/Forms/RR_Budget/BudgetYear3/KeyPersons','Key Persons for Year 3 not valid in budget','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.452000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','6cc34e43-d5b0-44d6-a038-83d44000849b',0,'RR_Budget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (550,'/GrantApplication/Forms/RR_Budget/BudgetYear4/KeyPersons/TotalFundForAttachedKeyPersons','Total funding for Key Persons not valid for Year 4','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.455000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','184e457d-759d-4c8c-802d-36462c3879d5',0,'RR_Budget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (551,'/GrantApplication/Forms/RR_Budget/BudgetYear4/KeyPersons/TotalFundForKeyPersons','Total funding for Key Persons not valid for Year 4, PI is required','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.457000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','22be20ae-8460-413c-a837-2e71c59373e0',0,'RR_Budget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (552,'/GrantApplication/Forms/RR_Budget/BudgetYear4/KeyPersons','Key Persons for Year 4 not valid in budget','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.459000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','a9dddf77-8206-42dc-a4f5-4038ff05474f',0,'RR_Budget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (553,'/GrantApplication/Forms/RR_Budget/BudgetYear5/KeyPersons/TotalFundForAttachedKeyPersons','Total funding for Key Persons not valid for Year 5','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.462000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','dd7a5e54-d424-4cb3-9111-5cd0e1ac3620',0,'RR_Budget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (554,'/GrantApplication/Forms/RR_Budget/BudgetYear5/KeyPersons/TotalFundForKeyPersons','Total funding for Key Persons not valid for Year 5, PI is required','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.465000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','42049fef-225c-4736-a3fb-f87ebbddff77',0,'RR_Budget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (555,'/GrantApplication/Forms/RR_Budget/BudgetYear5/KeyPersons','Key Persons for Year 5 not valid in budget','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.467000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','97f36410-1451-4c2c-8086-a0bbffb0d3fc',0,'RR_Budget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (556,'/GrantApplication/Forms/RR_Budget/BudgetYear1','Please add a budget to the proposal.','budgetVersions',to_timestamp('07-SEP-16 11.09.53.470000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','953f3fdd-c0c3-4eba-96d3-1ec3974961ab',0,'RR_Budget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (557,'/GrantApplication/Forms/RR_Budget/BudgetYear1/Equipment/EquipmentList/EquipmentItem','A description is required for each Equipment budget line item.','budgetVersions',to_timestamp('07-SEP-16 11.09.53.472000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','421c00e7-0183-4146-ada3-55e1a7f43a03',0,'RR_Budget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (558,'/GrantApplication/Forms/RR_Budget10/BudgetYear/KeyPersons/TotalFundForAttachedKeyPersons','Total funding for Key Persons not valid','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.475000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','6a42bd44-59ce-41a2-9486-df8611b473cd',0,'RR_Budget10','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (559,'/GrantApplication/Forms/RR_Budget10/BudgetYear/KeyPersons/TotalFundForKeyPersons','Total funding for Key Persons not valid, PI is required.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.477000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','4863fe2d-0440-4a6d-923e-672407e4c3c4',0,'RR_Budget10','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (560,'/GrantApplication/Forms/RR_Budget10/BudgetYear/KeyPersons','Key Persons not valid in budget.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.479000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','f7b51291-6906-4148-84f1-ee664e3a3e9f',0,'RR_Budget10','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (561,'/GrantApplication/Forms/RR_Budget10/BudgetJustificationAttachment','You must have a BudgetJustification 10YR with the proposal. Please attach the BudgetJustification 10YR in Abstracts and Attachments window','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.482000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','71b0407d-41aa-421a-b805-69bbf1ae71c2',0,'RR_Budget10','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (562,'/GrantApplication/Forms/RR_Budget10/BudgetYear/Equipment/EquipmentList/EquipmentItem','A description is required for each Equipment budget line item.','budgetVersions',to_timestamp('07-SEP-16 11.09.53.488000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','9f7324c2-2b66-4ff4-88a1-79de28b5b61a',0,'RR_Budget10','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (563,'/GrantApplication/Forms/RR_FedNonFedBudget/BudgetSummary','There is no budget summary information please add a budget to the proposal.','budgetVersions',to_timestamp('07-SEP-16 11.09.53.490000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','4c00d3e5-8844-4614-bd14-66c5e1994824',0,'RR_FedNonFedBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (564,'/GrantApplication/Forms/RR_FedNonFedBudget/BudgetYear1/Equipment/EquipmentList/EquipmentItem','A description is required for each Equipment budget line item.','budgetVersions',to_timestamp('07-SEP-16 11.09.53.505000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','0bf45053-566e-4f70-baed-33dad50e154a',0,'RR_FedNonFedBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (565,'/GrantApplication/Forms/RR_FedNonFedBudget/BudgetYear1/KeyPersons/TotalFundForAttachedKeyPersons','Total funding for Key Persons not valid for Year 1','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.507000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','c78a4072-b172-4866-bee8-49284268f162',0,'RR_FedNonFedBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (566,'/GrantApplication/Forms/RR_FedNonFedBudgetBudgetYear1/KeyPersons/TotalFundForKeyPersons','Total funding for Key Persons not valid for Year 1, PI is required','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.510000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','f2f0e669-8c2a-490f-8251-28dc7e04b68f',0,'RR_FedNonFedBudgetBudgetYear1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (567,'/GrantApplication/Forms/RR_FedNonFedBudget/BudgetYear1/KeyPersons','Key Persons for Year 1 not valid in budget','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.512000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','9cb683e8-d773-4953-942e-604e19bc23de',0,'RR_FedNonFedBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (568,'/GrantApplication/Forms/RR_FedNonFedBudget/BudgetYear2/KeyPersons/TotalFundForAttachedKeyPersons','Total funding for Key Persons not valid for Year 2','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.514000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','b8a46911-2e3c-4a78-a5e3-6c553204fa2d',0,'RR_FedNonFedBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (569,'/GrantApplication/Forms/RR_FedNonFedBudget/BudgetYear2/KeyPersons/TotalFundForKeyPersons','Total funding for Key Persons not valid for Year 2, PI is required','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.517000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','c0998630-8178-4450-a180-802b8a779a73',0,'RR_FedNonFedBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (570,'/GrantApplication/Forms/RR_FedNonFedBudget/BudgetYear2/KeyPersons','Key Persons for Year 2 not valid in budget','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.519000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','baeb19e8-401a-4e5e-b6e8-6a96b28d11b7',0,'RR_FedNonFedBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (571,'/GrantApplication/Forms/RR_FedNonFedBudget/BudgetYear3/KeyPersons/TotalFundForAttachedKeyPersons','Total funding for Key Persons not valid for Year 3','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.522000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','8d8d451a-af9b-40b2-ba32-19fe97ea6cbf',0,'RR_FedNonFedBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (572,'/GrantApplication/Forms/RR_FedNonFedBudget/BudgetYear3/KeyPersons/TotalFundForKeyPersons','Total funding for Key Persons not valid for Year 3, PI is required','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.524000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','d7e6b64f-d3e9-4c13-b435-4938faef7d01',0,'RR_FedNonFedBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (573,'/GrantApplication/Forms/RR_FedNonFedBudget/BudgetYear3/KeyPersons','Key Persons for Year 3 not valid in budget','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.527000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','91f2d5b1-6743-404b-870e-ccd4da40441e',0,'RR_FedNonFedBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (574,'/GrantApplication/Forms/RR_FedNonFedBudget/BudgetYear4/KeyPersons/TotalFundForAttachedKeyPersons','Total funding for Key Persons not valid for Year 4','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.529000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','efaf4952-39d3-4052-96b3-bfd80b440e37',0,'RR_FedNonFedBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (575,'/GrantApplication/Forms/RR_FedNonFedBudget/BudgetYear4/KeyPersons/TotalFundForKeyPersons','Total funding for Key Persons not valid for Year 4, PI is required','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.532000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','36c18099-5e46-40b4-aa2c-5b79292154c3',0,'RR_FedNonFedBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (576,'/GrantApplication/Forms/RR_FedNonFedBudget/BudgetYear4/KeyPersons','Key Persons for Year 4 not valid in budget','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.534000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','f5e9f56d-5a5b-440a-9e73-34185d8e8e78',0,'RR_FedNonFedBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (577,'/GrantApplication/Forms/RR_FedNonFedBudget/BudgetYear5/KeyPersons/TotalFundForAttachedKeyPersons','Total funding for Key Persons not valid for Year 5','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.536000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','0d6d88ad-98b8-40e4-aacd-1c484c64c403',0,'RR_FedNonFedBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (578,'/GrantApplication/Forms/RR_FedNonFedBudget/BudgetYear5/KeyPersons/TotalFundForKeyPersons','Total funding for Key Persons not valid for Year 5, PI is required','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.539000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','088dc86a-71a1-435d-b70f-9af775e57ec8',0,'RR_FedNonFedBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (579,'/GrantApplication/Forms/RR_FedNonFedBudget/BudgetYear5/KeyPersons','Key Persons for Year 5 not valid in budget','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.542000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','a2ce79d7-da3c-4c51-bc46-d37a4cc97945',0,'RR_FedNonFedBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (580,'/GrantApplication/Forms/RR_FedNonFedBudget/BudgetYear1/BudgetJustificationAttachment','A budget justification is required; please add one in Proposal Attachments','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.545000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','d73de055-83d9-407b-bf9b-197c785f7446',0,'RR_FedNonFedBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (581,'/GrantApplication/Forms/RR_FedNonFedBudget10/BudgetSummary','There is no budget summary information please add a budget to the proposal.','budgetVersions',to_timestamp('07-SEP-16 11.09.53.547000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','b57ac61d-41d1-4eec-a319-3793dfb10e2f',0,'RR_FedNonFedBudget10','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (582,'/GrantApplication/Forms/RR_FedNonFedBudget10/BudgetJustificationAttachment','A budget justification is required; please add one in Proposal Attachments','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.558000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','d56b1b35-b02f-4c07-8763-c3b96185c19b',0,'RR_FedNonFedBudget10','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (583,'/GrantApplication/Forms/RR_FedNonFedBudget10/BudgetYear/Equipment/EquipmentList/EquipmentItem','A description is required for each Equipment budget line item.','budgetVersions',to_timestamp('07-SEP-16 11.09.53.561000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','064cef2c-fcab-454b-9078-00fb5ae22fb4',0,'RR_FedNonFedBudget10','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (584,'/GrantApplication/Forms/RR_FedNonFedBudget10/BudgetYear/KeyPersons/TotalFundForAttachedKeyPersons','Total funding for Key Persons not valid','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.563000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','50d6b978-bd2c-4bee-8d77-c294d2b6590c',0,'RR_FedNonFedBudget10','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (585,'/GrantApplication/Forms/RR_FedNonFedBudget10/BudgetYear/KeyPersons/TotalFundForKeyPersons','Total funding for Key Persons not valid, PI is required.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.565000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','2231c36f-b930-42cf-a361-bc480a13d9a8',0,'RR_FedNonFedBudget10','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (586,'/GrantApplication/Forms/RR_FedNonFedBudget10/BudgetYear/KeyPersons','Key Persons not valid in budget.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.568000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','da4ab5c1-4ecb-448f-84e3-cadd29c6a958',0,'RR_FedNonFedBudget10','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (587,'/GrantApplication/Forms/RR_PersonalData/ProjectDirector','A PD/PI is required, please add a Principal Investigator to the proposal.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.570000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','bc9a1699-0408-4e3d-9ce1-debf4a9a4439',0,'RR_PersonalData','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (588,'/GrantApplication/Forms/RR_PersonalData_1_2/ProjectDirector','A PD/PI is required, please add a Principal Investigator to the proposal.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.573000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','53955a5d-411c-4f47-b80e-b0e061153c70',0,'RR_PersonalData_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (589,'/GrantApplication/Forms/NASA_OtherProjectInformation/InternationalParticipation/InternationalParticipationPI','Please select the support provided by International Participation for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.575000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','2c671b2c-fcaf-4765-8eb8-866288e0bebf',0,'NASA_OtherProjectInformation','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (590,'/GrantApplication/Forms/NASA_OtherProjectInformation/InternationalParticipation/InternationalParticipatioEx','Please answer the International Participation Explanation question.','questions',to_timestamp('07-SEP-16 11.09.53.578000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','3af04ea3-b9b6-40ae-afbc-7ca58dca4840',0,'NASA_OtherProjectInformation','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (591,'/GrantApplication/Forms/NASA_OtherProjectInformation/HistoricImpact/HistoricImpactEx','Please answer the Historic Sites Explanation question.','questions',to_timestamp('07-SEP-16 11.09.53.580000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','5814df74-b4b1-4a82-8b27-da3b0b5eb576',0,'NASA_OtherProjectInformation','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (592,'/GrantApplication/Forms/NASA_OtherProjectInformation/NASACivilServicePersonnel/FYFTE1','Please answer the Civil Service FTEs question.','questions',to_timestamp('07-SEP-16 11.09.53.582000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','46992e05-ecb0-470b-8373-c7474c516e5a',0,'NASA_OtherProjectInformation','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (593,'/GrantApplication/Forms/NASA_OtherProjectInformation/NASACivilServicePersonnel','Please answer the Civil Service Personnel question.','questions',to_timestamp('07-SEP-16 11.09.53.585000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','1cef0925-1164-430b-a7dd-ca85539b81da',0,'NASA_OtherProjectInformation','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (594,'/GrantApplication/Forms/NASA_OtherProjectInformation/HistoricImpact/HistoricImpactQ','Please answer the Historical Sites question.','questions',to_timestamp('07-SEP-16 11.09.53.587000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','22cd3273-b99b-46ed-8e2c-bd9949784659',0,'NASA_OtherProjectInformation','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (595,'/GrantApplication/Forms/NASA_OtherProjectInformation/HistoricImpact','Please answer the Historical Sites question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.590000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','f8e8563a-38f1-4a5c-9780-6359075131e5',0,'NASA_OtherProjectInformation','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (596,'/GrantApplication/Forms/NASA_OtherProjectInformation/InternationalParticipation','Please answer the International Participation question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.592000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','380c3bf5-3422-4f5c-93c9-73573dbfa20f',0,'NASA_OtherProjectInformation','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (597,'/GrantApplication/Forms/NASA_SeniorKeyPersonSupplementalDataSheet/Senior_Key_Person','At least one Co-Investigator or Key Person is required for this form.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.595000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','6d363787-5a3f-49af-8b78-8d744750ba6b',0,'NASA_SeniorKeyPersonSupplementalDataSheet','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (598,'/GrantApplication/Forms/PHS_CoverLetter_1_2/CoverLetterFile','Please attach a Cover Letter.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.605000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','1ffb833b-c326-4526-8fce-f94316aa9634',0,'PHS_CoverLetter_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (599,'/GrantApplication/Forms/PHS398_Checklist_1_3/DisclosurePermission','Please select the DisclosurePermission statement for this form within the Questions tab.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.607000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','8baee44d-927b-40bd-bdc3-2391e11ebbeb',0,'PHS398_Checklist_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (600,'/GrantApplication/Forms/PHS398_Checklist_1_3/IsInventionsAndPatents','Please answer the Inventions and Patents question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.609000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','fc56ef3c-ec83-4915-b398-6a6bd5254bf3',0,'PHS398_Checklist_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (601,'/GrantApplication/Forms/PHS398_Checklist_1_3/FormerPD_Name','Please answer the Former Principal Investigator or Program Director name for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.612000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','c8163b98-e1cc-46d2-bbf6-6c2d18eac6d5',0,'PHS398_Checklist_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (602,'/GrantApplication/Forms/PHS398_Checklist_1_3/FormerInstitutionName','Please answer the Former Institution Name for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.614000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','ada58153-43bd-4e99-b3aa-311256b5814b',0,'PHS398_Checklist_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (603,'/GrantApplication/Forms/PHS398_Checklist_1_3/IsPreviouslyReported','Please answer whether this invention has been reported previously to the PHS  for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.616000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','43b88c44-46ef-4ee9-bc8d-4aae6b050a82',0,'PHS398_Checklist_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (604,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_3/ContactPersonInfo/ContactName/FirstName','First name missing for contact person.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.619000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','4d909494-e12b-4772-b908-bf3c40cd905b',0,'PHS398_CoverPageSupplement_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (605,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_3/ContactPersonInfo/ContactName/LastName','Last name missing for contact person.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.621000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','c409af94-63af-4445-ae28-b28623042274',0,'PHS398_CoverPageSupplement_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (606,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_3/ContactPersonInfo/ContactPhone','Phone number missing for contact person.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.624000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','bbee055c-6320-4b43-a068-62769fe536a6',0,'PHS398_CoverPageSupplement_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (607,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_3/ContactPersonInfo/ContactTitle','Title missing for contact person.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.626000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','1934d955-80f7-47c8-9ea2-ec16b2b4baa1',0,'PHS398_CoverPageSupplement_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (608,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_3/ContactPersonInfo/ContactAddress/Street1','Address missing for contact person.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.628000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','4dabcbfe-2d8b-434a-86c8-697953e8072d',0,'PHS398_CoverPageSupplement_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (609,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_3/ContactPersonInfo/ContactAddress/City','City missing for contact person.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.631000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','183cc220-8c7b-40c1-ab37-55497fef5c99',0,'PHS398_CoverPageSupplement_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (610,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_3/ContactPersonInfo/ContactAddress/Country','Country missing for contact person.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.633000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','221bea0b-0b17-4591-99a2-27225120392e',0,'PHS398_CoverPageSupplement_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (611,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_3/PDPI/PDPIName','You must have a Principal Investigator.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.635000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','593c0d1b-eb9a-4490-8916-3530b25134f6',0,'PHS398_CoverPageSupplement_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (612,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_3/StemCells/isHumanStemCellsInvolved','Please answer the Stem Cells question.','questions',to_timestamp('07-SEP-16 11.09.53.638000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','526d5db1-ec64-4f76-9213-7c606ddf2a31',0,'PHS398_CoverPageSupplement_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (613,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_4/StemCells','Please answer the required stem cell questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.640000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','da017eb8-db54-47fd-a87d-9935762df727',0,'PHS398_CoverPageSupplement_1_4','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (614,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_4/PDPI/PDPIName','You must have a Principal Investigator.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.642000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','487b5a53-3b84-40e7-a89a-0b3ec473aeb9',0,'PHS398_CoverPageSupplement_1_4','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (615,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_4/ContactPersonInfo/ContactName/FirstName','First name missing for proposal contact person, please verify the information in the Unit Administrator table.','grantsGov',to_timestamp('07-SEP-16 11.09.53.645000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','da4a50d4-a675-4559-a08b-d35a41107b5d',0,'PHS398_CoverPageSupplement_1_4','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (616,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_4/ContactPersonInfo/ContactName/LastName','Last name missing for proposal contact person, please verify the information in the Unit Administrator table.','grantsGov',to_timestamp('07-SEP-16 11.09.53.647000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','e7b0acf7-be66-4ad1-9dc8-146b0102af88',0,'PHS398_CoverPageSupplement_1_4','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (617,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_4/ContactPersonInfo/ContactPhone','Phone number missing for contact person, please verify the information in the Unit Administrator table.','grantsGov',to_timestamp('07-SEP-16 11.09.53.649000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','93b13530-6c04-4595-912d-ce0e44d82b1f',0,'PHS398_CoverPageSupplement_1_4','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (618,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_4/ContactPersonInfo/ContactTitle','Title missing for contact person, please verify the information in the Unit Administrator table.','grantsGov',to_timestamp('07-SEP-16 11.09.53.652000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','3523b9ab-b6d5-40f7-9ce3-6d82313f4ba5',0,'PHS398_CoverPageSupplement_1_4','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (619,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_4/ContactPersonInfo/ContactAddress/Street1','Address missing for contact person, please verify the information in the Unit Administrator table.','grantsGov',to_timestamp('07-SEP-16 11.09.53.654000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','218c376a-d91d-4760-b3cc-e775c366ef0c',0,'PHS398_CoverPageSupplement_1_4','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (620,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_4/ContactPersonInfo/ContactAddress/City','City missing for contact person, please verify the information in the Unit Administrator table.','grantsGov',to_timestamp('07-SEP-16 11.09.53.660000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','1d7d775e-e9b3-4ab7-b50a-14f55148b43f',0,'PHS398_CoverPageSupplement_1_4','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (621,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_4/ContactPersonInfo/ContactAddress/Country','Country missing for contact person, please verify the information in the Unit Administrator table.','grantsGov',to_timestamp('07-SEP-16 11.09.53.662000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','eb26ef02-de7f-4333-9e98-bff187759d0c',0,'PHS398_CoverPageSupplement_1_4','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (622,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_4/StemCells/isHumanStemCellsInvolved','Please answer the Stem Cells question.','questions',to_timestamp('07-SEP-16 11.09.53.665000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','da06671f-d3a4-4724-86c5-f220c04530ea',0,'PHS398_CoverPageSupplement_1_4','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (623,'/GrantApplication/Forms/PHS398_CoverPageSupplement_3_0/StemCells','Please answer the human embryonic stem cells question.','questions',to_timestamp('07-SEP-16 11.09.53.667000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','f72b0976-fc95-41c8-8668-94d7d2e6e21c',0,'PHS398_CoverPageSupplement_3_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (624,'/GrantApplication/Forms/PHS398_CoverPageSupplement_3_0/StemCells/IsHumanStemCellsInvolved','Please answer the human embryonic stem cells question.','questions',to_timestamp('07-SEP-16 11.09.53.670000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','0c8837bf-e7fe-4e9c-9a94-c83a1a1c5735',0,'PHS398_CoverPageSupplement_3_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (625,'/GrantApplication/Forms/PHS398_CoverPageSupplement_3_0/StemCells/CellLines','The registration number of the specific cell line is too long. Please see the human embryonic stem cells question for explanation.','questions',to_timestamp('07-SEP-16 11.09.53.672000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','d9260e41-05a2-448e-be98-d6f4d9a6fa60',0,'PHS398_CoverPageSupplement_3_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (626,'/GrantApplication/Forms/BudgetNarrativeAttachments/Attachments','Please attach a Budget Attachment file.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.679000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','90e5e28e-fb3b-47db-a267-5a42b6206501',0,'BudgetNarrativeAttachments','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (627,'/GrantApplication/Forms/OtherNarrativeAttachments/Attachments','Please attach an Other Attachments file.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.681000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','b1eba8c7-f888-4492-a2e4-b811cee71373',0,'OtherNarrativeAttachments','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (628,'/GrantApplication/Forms/ED_SF424_Supplement/ProjectDirector','You must have a Project Director/Principal Investigator.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.690000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','f7d241b0-e526-451b-9942-a8e2056340ab',0,'ED_SF424_Supplement','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (629,'/GrantApplication/Forms/PHS398_CareerDevelopmentAwardSup_1_1/CareerDevelopmentAwardAttachments/Appendix','Career Research Strategy attachment is required.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.692000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','5079d23e-3d37-408c-b2a7-11cd3e021828',0,'PHS398_CareerDevelopmentAwardSup_1_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (630,'/GrantApplication/Forms/PHS398_CareerDevelopmentAwardSup_2_0/CareerDevelopmentAwardAttachments/Appendix','Career Research Strategy attachment is required.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.694000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','da4f63a7-6b93-465a-858f-4f53aa411f87',0,'PHS398_CareerDevelopmentAwardSup_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (631,'/GrantApplication/Forms/PHS398_CareerDevelopmentAwardSup_1_1/CareerDevelopmentAwardAttachments','PHS398_CareerDevelopmentAwardSup_1_1-V1.1 is not valid, missing required attachment.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.701000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','6999fc32-97bc-4c2b-86b2-91c68f9544b0',0,'PHS398_CareerDevelopmentAwardSup_1_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (632,'/GrantApplication/Forms/PHS398_ResearchPlan_1_3/ResearchPlanAttachments/ResearchStrategy','Research Strategy proposal attachment is required for the PHS 398 Research Plan form.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.707000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','83308370-9d41-40fc-af98-e14d13d05038',0,'PHS398_ResearchPlan_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (633,'/GrantApplication/Forms/PHS398_ResearchPlan_2_0/ResearchPlanAttachments/ResearchStrategy','Research Strategy proposal attachment is required for the PHS 398 Research Plan form.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.709000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','bf4981b8-8431-4389-896a-19872f523eba',0,'PHS398_ResearchPlan_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (634,'/GrantApplication/Forms/PHS398_ResearchPlan_3_0/ResearchPlanAttachments/ResearchStrategy','Research Strategy proposal attachment is required for the PHS 398 Research Plan form.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.712000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','d12a7933-04be-444f-909c-51dc5039d76e',0,'PHS398_ResearchPlan_3_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (635,'/GrantApplication/Forms/PerformanceSite_1_3/AttachedFile','Performance Sites attachment is required since Performance Site Locations exceed the maximum of 29.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.714000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','d0bdca96-03e5-4d44-b18f-3ceca1c55136',0,'PerformanceSite_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (636,'/GrantApplication/Forms/PerformanceSite_1_4/AttachedFile','Performance Sites attachment is required since Performance Site Locations exceed the maximum of 29.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.717000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','8dcce461-a36c-49f0-9b75-4e65f6f4d046',0,'PerformanceSite_1_4','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (637,'/GrantApplication/Forms/PerformanceSite_1_4/PrimarySite','Organization''s primary site is not valid','proposal.Organization/Location',to_timestamp('07-SEP-16 11.09.53.727000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','397989aa-94a2-4ad9-9ff4-228864db817f',0,'PerformanceSite_1_4','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (638,'/GrantApplication/Forms/PerformanceSite_1_4/OtherSite','Organization''s other site is not valid','proposal.Organization/Location',to_timestamp('07-SEP-16 11.09.53.730000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','3d8abbad-dc1c-4c61-8d09-86ebe05e405d',0,'PerformanceSite_1_4','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (639,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_1/ResearchTrainingPlan/HumanSubjectsInvolved','Human Subjects Involved is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.732000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','0a482e75-0207-4b97-893c-ec042fc2ad10',0,'PHS_Fellowship_Supplemental_1_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (640,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_1/ResearchTrainingPlan/HumanSubjectsIndefinite','Human Subjects Indefinite is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.735000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','e3a99317-5da7-43bc-9bed-864d8e34345d',0,'PHS_Fellowship_Supplemental_1_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (641,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_1/ResearchTrainingPlan/ClinicalTrial','Clinical Trial response is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.740000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','e2af19a6-c718-4954-a874-b48ba62ee16a',0,'PHS_Fellowship_Supplemental_1_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (642,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_1/ResearchTrainingPlan/Phase3ClinicalTrial','Phase 3 Clinical Trial response is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.742000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','7aca687f-6b17-4536-baca-f7e0746138d4',0,'PHS_Fellowship_Supplemental_1_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (643,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_1/ResearchTrainingPlan/VertebrateAnimalsUsed','Vertebrate Animals Used is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.744000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','840392d5-68f7-4a1c-87b7-a1000fc6f271',0,'PHS_Fellowship_Supplemental_1_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (644,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_1/ResearchTrainingPlan/VertebrateAnimalsIndefinite','Vertebrate Animals Indefinite is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.750000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','227d44e2-d3dd-4fa1-b203-f045b1b7a380',0,'PHS_Fellowship_Supplemental_1_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (645,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_1/ResearchTrainingPlan','Please answer all required questions and include all required attachments for this form.','questions',to_timestamp('07-SEP-16 11.09.53.755000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','535a095d-7c86-48d1-9aa2-61e826da9db2',0,'PHS_Fellowship_Supplemental_1_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (646,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_1/AdditionalInformation/Citizenship','Citizenship is not valid for PI, please make sure a PI has been added and that person has a valid citizenship type indicated.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.758000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','4c1b2322-940d-45f2-8c30-8c061fe3657a',0,'PHS_Fellowship_Supplemental_1_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (647,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_1/AdditionalInformation/ChangeOfInstitution','Change of Institution is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.760000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','cbcc26f4-7317-4fb4-b228-4aaa3cd53a72',0,'PHS_Fellowship_Supplemental_1_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (648,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_1/AdditionalInformation','Additional information is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.763000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','64b65664-12fa-4285-a04a-44ed7aca7b88',0,'PHS_Fellowship_Supplemental_1_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (649,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_1/Budget/FederalStipendRequested','Stipend Requested is not valid, please make sure a budget has been added.','budgetVersions',to_timestamp('07-SEP-16 11.09.53.765000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','339b5f61-c396-49f8-b026-4f9c99d3783b',0,'PHS_Fellowship_Supplemental_1_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (650,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/ResearchTrainingPlan/HumanSubjectsInvolved','Human Subjects Involved is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.771000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00c1678b-83d0-4027-bc52-4ef36f275e3e',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (651,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/ResearchTrainingPlan/HumanSubjectsIndefinite','Human Subjects Indefinite is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.775000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','45578973-d3dc-4732-8c09-428542f2b647',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (652,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/ResearchTrainingPlan/ClinicalTrial','Clinical Trial response is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.778000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','d7f8499a-8811-4fe5-8421-ab3977b685f4',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (653,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/ResearchTrainingPlan/Phase3ClinicalTrial','Phase 3 Clinical Trial response is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.780000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','3c7c7aea-2a82-4bec-b876-6bdd2c9ab553',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (654,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/ResearchTrainingPlan/VertebrateAnimalsUsed','Vertebrate Animals Used is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.783000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','0295be85-f1d7-4272-993b-743185c06cf1',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (655,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/ResearchTrainingPlan/VertebrateAnimalsIndefinite','Vertebrate Animals Indefinite, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.785000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','ca7f517f-4ebb-455d-8691-8e940767d591',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (656,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/ResearchTrainingPlan','Please answer all required questions and include all required attachments for this form.','questions',to_timestamp('07-SEP-16 11.09.53.794000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','0e7a9825-7531-4720-b42f-b67aa34ab0de',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (657,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/AdditionalInformation/StemCells','Stem Cells response, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.797000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','aa63a7d6-02f6-4487-a479-3a686461e675',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (658,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/AdditionalInformation/CurrentPriorNRSASupportIndicator','Current & Prior NRSA support response is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.799000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','cefb8d21-ad0c-4681-bcaf-cfa1f92303fa',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (659,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/AdditionalInformation/ConcurrentSupport','Concurrent support response is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.802000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','a0729d9a-4ed8-4e11-9cd6-c1cd6a082059',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (660,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_4/ClinicalTrial/isPhaseIIIClinicalTrial','Please answer the NIH-defined Phase III clinical trial question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.804000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','1034d87b-4759-42c1-9ecb-c0b64ea080ec',0,'PHS398_CoverPageSupplement_1_4','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (661,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_3/ClinicalTrial/isPhaseIIIClinicalTrial','Please answer the NIH-defined Phase III clinical trial question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.807000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','f0c7054b-caf5-490f-b85c-72a15cd6c857',0,'PHS398_CoverPageSupplement_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (662,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/AdditionalInformation/Citizenship','Citizenship is not valid for PI, please make sure a PI has been added and that person has a valid citizenship type indicated.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.814000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','1952225f-c200-4628-9b4d-d99f8c72fb2c',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (663,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/AdditionalInformation','Additional information is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.817000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','f1e39a65-e89f-461f-89a0-88fcaef19d51',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (664,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/Sponsors','Sponsors is not valid, please make sure the appropriate attachments and questions have been answered.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.819000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','d30310cb-b9d9-468b-b18d-fec3170ce637',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (665,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/AdditionalInformation/FieldOfTraining','Field of training response is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.822000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','b64b7c09-1871-4d6b-b276-f23ab0339864',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (666,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/AdditionalInformation/StemCells/isHumanStemCellsInvolved','Human Stem Cells response is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.824000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','041cdf9e-2039-4cf2-a950-5336b5db641c',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (667,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/ResearchTrainingPlan/SpecificAims','Specific Aims is a required attachment for the PHS Fellowship Supplemental Form, please add this file in the proposal attachments panel.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.826000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','313280a1-7c9b-43c8-b975-37574e61b609',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (668,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/ResearchTrainingPlan/ResearchStrategy','Research Strategy is a required attachment for the PHS Fellowship Supplemental Form, please add this file in the proposal attachments panel.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.834000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','c9fd06c5-bf06-4dc6-820e-9c6878a19c80',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (669,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/ResearchTrainingPlan/RespectiveContributions','Respective Contributions is a required attachment for the PHS Fellowship Supplemental Form, please add this file in the proposal attachments panel.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.837000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','484c2c54-444c-4c31-8635-29bdf5ce0f3d',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (670,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/ResearchTrainingPlan/SelectionOfSponsorAndInstitution','Selection of Sponsor and Institution is a required attachment for the PHS Fellowship Supplemental Form, please add this file in the proposal attachments  panel.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.839000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','90ef4556-c1fc-4339-ba23-3cc941d2115d',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (671,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/ResearchTrainingPlan/ResponsibleConductOfResearch','Responsible Conduct of Research is a required attachment for the PHS Fellowship Supplemental Form, please add this file in the proposal attachments panel.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.842000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','b209c1c5-7abe-4c97-b2c8-147372356ce2',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (672,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/AdditionalInformation/FellowshipTrainingAndCareerGoals','Goals for Fellowship Training and Career is a required attachment for the PHS Fellowship Supplemental Form, please add this file in the proposal attachments panel.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.844000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','cd2e98ca-f58d-43a9-a23e-d492b5bb304e',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (673,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/AdditionalInformation/ActivitiesPlannedUnderThisAward','Activities Planned Under This Award is a required attachment for the PHS Fellowship Supplemental Form, please add this file in the proposal attachments panel.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.850000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','2ac34ec9-37c3-43ca-b2bb-eb9532bfc5ce',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (674,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/Sponsors/SponsorCosponsorInformation','Sponsor(s) and Co-Sponsor(s) Information is a required attachment for the PHS Fellowship Supplemental Form, please add this file in the proposal attachments panel.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.854000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','e3f735c7-7096-4c40-b923-1065a275dc6a',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (675,'/GrantApplication/Forms/NSF_CoverPage_1_3/NSFUnitConsideration/DivisionCode','Sponsor Division Code is required (must be 1-8 characters)','proposal',to_timestamp('07-SEP-16 11.09.53.856000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','bd412671-b997-475e-94b0-97f63e251ea7',0,'NSF_CoverPage_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (676,'/GrantApplication/Forms/NSF_CoverPage_1_3/NSFUnitConsideration/ProgramCode','Sponsor Program Code is required (must be 1-4 characters)','proposal',to_timestamp('07-SEP-16 11.09.53.859000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','21071486-0c75-4818-8473-dc2f408e9e2e',0,'NSF_CoverPage_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (677,'/GrantApplication/Forms/NSF_CoverPage_1_6/NSFUnitConsideration/DivisionCode','Sponsor Division Code is required (must be 1-8 characters)','proposal',to_timestamp('07-SEP-16 11.09.53.861000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','806a65bb-cd6f-4540-85e8-19ab6cac14f7',0,'NSF_CoverPage_1_6','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (678,'/GrantApplication/Forms/NSF_CoverPage_1_6/NSFUnitConsideration/ProgramCode','Sponsor Program Code is required (must be 1-4 characters)','proposal',to_timestamp('07-SEP-16 11.09.53.864000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','80118da6-f5a2-406a-a183-3a396c59715c',0,'NSF_CoverPage_1_6','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (679,'/GrantApplication/Forms/PHS398_TrainingBudget/BudgetYear/ResearchDirectCostsRequested','Direct costs invalid, a stipend budget line item is required equal to or greater than the trainee numbers and associated stipend levels indicated in the questionnaire.','budgetVersions',to_timestamp('07-SEP-16 11.09.53.882000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','34df299b-edb5-4afc-8b05-a9043ea05725',0,'PHS398_TrainingBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (680,'/GrantApplication/Forms/PHS398_TrainingBudget/BudgetYear/ResearchDirectCostsRequested','Direct costs invalid, a stipend budget line item is required equal to or greater than the trainee numbers and associated stipend levels indicated in the questionnaire.','budgetVersions',to_timestamp('07-SEP-16 11.09.53.885000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','693ac31a-4080-41d4-a010-9952540a4966',0,'PHS398_TrainingBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (681,'/GrantApplication/Forms/PHS398_TrainingBudget/BudgetYear/TotalOtherDirectCostsRequested','Total Other Costs invalid, a stipend budget line item is required equal to or greater than the trainee numbers and associated stipend levels indicated in the questionnaire.','budgetVersions',to_timestamp('07-SEP-16 11.09.53.887000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','d3ad2b60-1a12-4106-a67d-4456054b3b4c',0,'PHS398_TrainingBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (682,'/GrantApplication/Forms/PHS398_TrainingBudget/CumulativeResearchDirectCostsRequested','Cumulative direct costs invalid, a stipend budget line item is required equal to or greater than the trainee numbers and associated stipend levels indicated in the questionnaire.','budgetVersions',to_timestamp('07-SEP-16 11.09.53.890000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','35c7af7c-1c49-4ac4-8762-3a40cd17e98f',0,'PHS398_TrainingBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (683,'/GrantApplication/Forms/PHS398_TrainingBudget/CumulativeTotalOtherDirectCostsRequested','Cumulative other direct costs invalid, a stipend budget line item is required equal to or greater than the trainee numbers and associated stipend levels indicated in the questionnaire.','budgetVersions',to_timestamp('07-SEP-16 11.09.53.892000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','287a6101-6af2-4015-9ff4-6d33c89ee5e4',0,'PHS398_TrainingBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (684,'/GrantApplication/Forms/PHS398_TrainingBudget/BudgetJustification','You must have a TrainingBudgetJustification with the proposal. Please attach the BudgetJustification in Abstracts and Attachments window','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.894000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','ce316cf4-a424-4c9b-9470-3cb1a2d7a977',0,'PHS398_TrainingBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (685,'/GrantApplication/Forms/RR_Budget10/BudgetSummary','Please add a budget to the proposal.','budgetVersions',to_timestamp('07-SEP-16 11.09.53.897000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','5b23809c-2246-4509-b030-7235208cb89a',0,'RR_Budget10','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (686,'/GrantApplication/Forms/RR_Budget10/BudgetJustificationAttachment','You must have a BudgetJustification 10YR with the proposal. Please attach the BudgetJustification 10YR in Abstracts and Attachments window','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.899000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','5a72d774-aca5-47d4-b7a8-97e6ffd30a8d',0,'RR_Budget10','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (687,'/GrantApplication/Forms/RR_Budget_1_3/BudgetSummary','Please add a budget to the proposal.','budgetVersions',to_timestamp('07-SEP-16 11.09.53.906000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','d1c54616-e247-41d7-b92f-5ae6c905c670',0,'RR_Budget_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (688,'/GrantApplication/Forms/RR_Budget_1_3/BudgetJustificationAttachment','You must have a BudgetJustification 10YR with the proposal. Please attach the BudgetJustification 10YR in Abstracts and Attachments window','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.911000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','f6d2cd25-65d4-4eb2-8ef9-d639662f0a45',0,'RR_Budget_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (689,'/GrantApplication/Forms/RR_FedNonFedBudget/BudgetYear1/Equipment/EquipmentList/EquipmentItem','A description is required for each Equipment budget line item.','budgetVersions',to_timestamp('07-SEP-16 11.09.53.921000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','1e3cc823-29a1-480b-b86b-611d48dcebc5',0,'RR_FedNonFedBudget','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (690,'/GrantApplication/Forms/SF424_2_1/ApplicationTypeCode','You have a non-standard application type for the SF424','proposal',to_timestamp('07-SEP-16 11.09.53.961000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','3d9b7dfa-bd3b-48ac-91d4-dc733d252e02',0,'SF424_2_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (691,'/GrantApplication/Forms/SF424_2_1/Revision/RevisionCode1','You have entered an invalid revision type for the SF424','grantsGov',to_timestamp('07-SEP-16 11.09.53.964000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','4da9a00f-9136-4809-8050-3bc120f8f6e2',0,'SF424_2_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (692,'/GrantApplication/Forms/SF424_2_1/Applicant/City','Organization''s city is not valid','proposal.Organization/Location',to_timestamp('07-SEP-16 11.09.53.966000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','13e72239-997b-4e7c-bfde-16f16358033a',0,'SF424_2_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (693,'/GrantApplication/Forms/SF424_2_1/PhoneNumber','Phone number missing for PD/PI.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.969000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','bd64204d-5ffd-4d09-8512-953584a5cf03',0,'SF424_2_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (694,'/GrantApplication/Forms/SF424_2_1/Email','Email address missing for PD/PI.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.971000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','f0ef9ba3-242c-4f3f-9097-8bf8d24c3586',0,'SF424_2_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (695,'/GrantApplication/Forms/SF424_2_1/StateReview','Please answer the State Executive Order questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.974000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','f1bc2602-a2ac-4f55-abd4-1877c5bb2d1f',0,'SF424_2_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (696,'/GrantApplication/Forms/SF424_2_1/StateReviewAvailableDate','Please answer the State Review Date questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.976000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','8b611ef1-85c8-4981-8ef8-135625a81c5c',0,'SF424_2_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (697,'/GrantApplication/Forms/RR_KeyPersonExpanded_2_0/PDPI','A PD/PI is required, please add a Principal Investigator to the proposal.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.979000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','d8371c39-2862-4e1a-84fa-60f04f0cff9e',0,'RR_KeyPersonExpanded_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (698,'/GrantApplication/Forms/RR_KeyPersonExpanded_2_0/PDPI/Profile/BioSketchsAttached/BioSketchAttached','Each investigator and key person must have a BioSketch. Upload the PDF on the Personnel Attachments panel, with "BIOSKETCH" as the attachment type.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.981000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','cb94bea1-7033-4faa-aaa4-410a91e832c9',0,'RR_KeyPersonExpanded_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (699,'/GrantApplication/Forms/RR_KeyPersonExpanded_2_0/PDPI/Profile/Address/Street1','The PD/PI address is invalid.  Use the proposal person window to add a street address','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.983000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','2daac76a-a331-465d-b798-ecfecd964272',0,'RR_KeyPersonExpanded_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (700,'/GrantApplication/Forms/RR_KeyPersonExpanded_2_0/PDPI/Profile/Address/Country','The PD/PI country code is invalid. Use the proposal person window to fix this','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.986000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','077fbab1-0c39-4d35-b677-7193434d4ec6',0,'RR_KeyPersonExpanded_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (701,'/GrantApplication/Forms/RR_KeyPersonExpanded_2_0/PDPI/Profile/Address/City','The PD/PI address is missing a city. Please use the Proposal Person window to fix this.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.988000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','24acfc42-414e-4364-8128-a70821bf1754',0,'RR_KeyPersonExpanded_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (702,'/GrantApplication/Forms/RR_KeyPersonExpanded_2_0/PDPI/Profile/Phone','The PD/PI phone number. Please use the Proposal Person window to fix this.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.991000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','18037df5-e924-4abb-be2d-339061639bbc',0,'RR_KeyPersonExpanded_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (703,'/GrantApplication/Forms/RR_KeyPersonExpanded_2_0/PDPI/Profile/Email','The PD/PI email address is missing. Please use the Proposal Person window to fix this.','keyPersonnel',to_timestamp('07-SEP-16 11.09.53.993000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','ef932eb9-c269-4ddf-8666-1b568a2a9253',0,'RR_KeyPersonExpanded_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (704,'/GrantApplication/Forms/PerformanceSite_2_0/AttachedFile','Performance Sites attachment is required since Performance Site Locations exceed the maximum of 29.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.53.995000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','0acef417-aa7b-4981-9ea0-2e11b7966b99',0,'PerformanceSite_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (705,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/ResearchTrainingPlan/HumanSubjectsInvolved','Human Subjects Involved is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.53.998000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','a50d123f-5cb9-4584-b0bf-62939907bbf4',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (706,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/ResearchTrainingPlan/HumanSubjectsIndefinite','Human Subjects Indefinite is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.54.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','a3ebe5a9-5242-4103-99b3-bc5db7c1e066',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (707,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/ResearchTrainingPlan/ClinicalTrial','Clinical Trial response is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.54.006000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','6160a3fe-b8dc-4f9b-9562-1ea950430108',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (708,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/ResearchTrainingPlan/Phase3ClinicalTrial','Phase 3 Clinical Trial response is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.54.009000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','99fc656e-e68f-4458-af71-98e73b4c49c4',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (709,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/ResearchTrainingPlan/VertebrateAnimalsUsed','Vertebrate Animals Used is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.54.011000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','ab0e8cfb-ec59-4f55-adeb-95995b9078a2',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (710,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/ResearchTrainingPlan/VertebrateAnimalsIndefinite','Vertebrate Animals Indefinite, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.54.014000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','9d5199d9-87ec-4dc5-80c3-5b222e61c8ca',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (711,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/ResearchTrainingPlan','Please answer all required questions and include all required attachments for this form.','questions',to_timestamp('07-SEP-16 11.09.54.016000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','15e3170a-c301-4c1a-a388-0d45fc120f09',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (712,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/AdditionalInformation/StemCells','Stem Cells response, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.54.019000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','869dbe88-e60b-4fbb-b65b-4a19b536dd5f',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (713,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/AdditionalInformation/CurrentPriorNRSASupportIndicator','Current & Prior NRSA support response is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.54.021000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','0b46566c-324f-4af1-9bef-08581555a6bd',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (714,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_1_2/AdditionalInformation/ConcurrentSupport','Concurrent support response is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.54.024000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','9bc12f40-86dc-4d77-82f0-a16229a5147a',0,'PHS_Fellowship_Supplemental_1_2','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (715,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_4/ClinicalTrial/isPhaseIIIClinicalTrial','Please answer the NIH-defined Phase III clinical trial question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.54.027000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','94738146-847e-4474-94be-0bba74365557',0,'PHS398_CoverPageSupplement_1_4','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (716,'/GrantApplication/Forms/PHS398_CoverPageSupplement_1_3/ClinicalTrial/isPhaseIIIClinicalTrial','Please answer the NIH-defined Phase III clinical trial question for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.54.029000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','42b91542-5120-4a78-8b90-bbe0065e8d57',0,'PHS398_CoverPageSupplement_1_3','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (717,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_2_0/AdditionalInformation/Citizenship','Citizenship is not valid for PI, please make sure a PI has been added and that person has a valid citizenship type indicated.','keyPersonnel',to_timestamp('07-SEP-16 11.09.54.031000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','dda8c85a-2c5c-40ef-8874-d7cb09c94c4c',0,'PHS_Fellowship_Supplemental_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (718,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_2_0/AdditionalInformation','Additional information is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.54.034000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','e2f1000e-7232-4ad4-b338-440dd21377de',0,'PHS_Fellowship_Supplemental_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (719,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_2_0/Sponsors','Sponsors is not valid, please make sure the appropriate attachments and questions have been answered.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.54.036000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','07f70447-79fe-44fd-b26a-79e323c3120e',0,'PHS_Fellowship_Supplemental_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (720,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_2_0/AdditionalInformation/FieldOfTraining','Field of training response is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.54.038000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','473d789d-b3f3-453d-9290-ffbaeeb2466a',0,'PHS_Fellowship_Supplemental_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (721,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_2_0/AdditionalInformation/StemCells/isHumanStemCellsInvolved','Human Stem Cells response is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.54.041000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','fcae574a-2a40-458d-9569-9b3f4e3d5cfa',0,'PHS_Fellowship_Supplemental_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (722,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_2_0/ResearchTrainingPlan/SpecificAims','Specific Aims is a required attachment for the PHS Fellowship Supplemental Form, please add this file in the proposal attachments panel.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.54.043000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','2e689007-1a71-4eaf-bd24-ff7b8a5bc128',0,'PHS_Fellowship_Supplemental_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (723,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_2_0/ResearchTrainingPlan/ResearchStrategy','Research Strategy is a required attachment for the PHS Fellowship Supplemental Form, please add this file in the proposal attachments panel.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.54.045000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','db75887e-dd5d-48b6-9d1f-d7c241479ecc',0,'PHS_Fellowship_Supplemental_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (724,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_2_0/ResearchTrainingPlan/RespectiveContributions','Respective Contributions is a required attachment for the PHS Fellowship Supplemental Form, please add this file in the proposal attachments panel.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.54.048000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','aabd2efc-1b0c-4429-a449-90b7ad4a28a7',0,'PHS_Fellowship_Supplemental_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (725,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_2_0/ResearchTrainingPlan/SelectionOfSponsorAndInstitution','Selection of Sponsor and Institution is a required attachment for the PHS Fellowship Supplemental Form, please add this file in the proposal attachments  panel.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.54.050000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','f24bab10-a2c3-426e-aab2-24c8c7396eff',0,'PHS_Fellowship_Supplemental_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (726,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_2_0/ResearchTrainingPlan/ResponsibleConductOfResearch','Responsible Conduct of Research is a required attachment for the PHS Fellowship Supplemental Form, please add this file in the proposal attachments panel.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.54.052000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','cfe477a2-4bb4-4f06-91e7-a8b9bb1f3fe3',0,'PHS_Fellowship_Supplemental_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (727,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_2_0/AdditionalInformation/FellowshipTrainingAndCareerGoals','Goals for Fellowship Training and Career is a required attachment for the PHS Fellowship Supplemental Form, please add this file in the proposal attachments panel.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.54.055000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','b75d826b-6501-4556-9346-9ed2a50837e1',0,'PHS_Fellowship_Supplemental_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (728,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_2_0/AdditionalInformation/ActivitiesPlannedUnderThisAward','Activities Planned Under This Award is a required attachment for the PHS Fellowship Supplemental Form, please add this file in the proposal attachments panel.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.54.058000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','a5affcf8-7e28-4e86-b37c-eb4789c854cf',0,'PHS_Fellowship_Supplemental_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (730,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_2_0/Sponsors/SponsorCosponsorInformation','Sponsor(s) and Co-Sponsor(s) Information is a required attachment for the PHS Fellowship Supplemental Form, please add this file in the proposal attachments panel.','abstractsAttachments',to_timestamp('07-SEP-16 11.23.48.734000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','70982f20-fa7d-4b09-9be9-d4719094b979',0,'PHS_Fellowship_Supplemental_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (731,'/GrantApplication/Forms/PHS398_ResearchTrainingProgramPlan_3_0/ResearchTrainingProgramPlanAttachments','Missing required attachment:  Program Plan. Please add on the Abstract and Attachments tab.','abstractsAttachments',to_timestamp('27-SEP-16 04.16.38.362000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'admin','6ad1e36e-05b3-4c70-97d1-914e0c46404e',0,'PHS398_ResearchTrainingProgramPlan_3_0','Y');

Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (740,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_3_1/AdditionalInformation/USCitizen','Citizenship is not valid for PI, please make sure a PI has been added and that person has a valid citizenship type indicated.','keyPersonnel',to_timestamp('07-SEP-16 11.09.54.031000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','dda8c85a-2c5c-40ef-8874-d7cb09c94c4c',0,'PHS_Fellowship_Supplemental_3_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (741,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_3_1/AdditionalInformation','Additional information is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.54.034000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','e2f1000e-7232-4ad4-b338-440dd21377de',0,'PHS_Fellowship_Supplemental_3_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (742,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_3_1/AdditionalInformation/StemCells','Human Stem Cells response is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.54.041000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','fcae574a-2a40-458d-9569-9b3f4e3d5cfa',0,'PHS_Fellowship_Supplemental_3_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (743,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_3_1/AdditionalInformation/ConcurrentSupport','ConcurrentSupport  response is not valid, please answer all required questions for this form within the Questions tab.','questions',to_timestamp('07-SEP-16 11.09.54.041000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','fcae574a-2a40-458d-9569-9b3f4e3d5cfa',0,'PHS_Fellowship_Supplemental_3_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (744,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_3_1/ResearchTrainingPlan/SpecificAims','Specific Aims is a required attachment for the PHS Fellowship Supplemental Form, please add this file in the proposal attachments panel.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.54.043000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','2e689007-1a71-4eaf-bd24-ff7b8a5bc128',0,'PHS_Fellowship_Supplemental_3_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (745,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_3_1/ResearchTrainingPlan/ResearchStrategy','Research Strategy is a required attachment for the PHS Fellowship Supplemental Form, please add this file in the proposal attachments panel.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.54.045000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','db75887e-dd5d-48b6-9d1f-d7c241479ecc',0,'PHS_Fellowship_Supplemental_3_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (746,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_3_1/ResearchTrainingPlan','Research Training is a required attachment for the PHS Fellowship Supplemental Form, please add this file in the proposal attachments panel.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.54.048000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','aabd2efc-1b0c-4429-a449-90b7ad4a28a7',0,'PHS_Fellowship_Supplemental_3_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (747,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_3_1/OtherResearchTrainingPlan','Other Research Training is a required attachment for the PHS Fellowship Supplemental Form, please add this file in the proposal attachments panel.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.54.048000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','aabd2efc-1b0c-4429-a449-90b7ad4a28a7',0,'PHS_Fellowship_Supplemental_3_1','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (748,'/GrantApplication/Forms/PHS_Fellowship_Supplemental_3_1/FellowshipApplicant','Applicant Background Goals for Fellowship Training is a required attachment for the PHS Fellowship Supplemental Form, please add this file in the proposal attachments panel.','abstractsAttachments',to_timestamp('07-SEP-16 11.09.54.048000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','aabd2efc-1b0c-4429-a449-90b7ad4a28a7',0,'PHS_Fellowship_Supplemental_3_1','Y');

Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (749,'/GrantApplication/Forms/RR_SF424_2_0/ApplicantInfo/ContactPersonInfo/Name/FirstName','First name missing for proposal contact person, please verify the information for the related Unit Administrator.','grantsGov',sysdate,'admin',sys_guid(),0,'RR_SF424_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (750,'/GrantApplication/Forms/RR_SF424_2_0/ApplicantInfo/ContactPersonInfo/Name/LastName','Last name missing for proposal contact person, please verify the information for the related Unit Administrator.','grantsGov',sysdate,'admin',sys_guid(),0,'RR_SF424_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (751,'/GrantApplication/Forms/RR_SF424_2_0/ApplicantInfo/ContactPersonInfo/Title','Title missing for proposal contact person, please verify the information for the related Unit Administrator.','grantsGov',sysdate,'admin',sys_guid(),0,'RR_SF424_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (752,'/GrantApplication/Forms/RR_SF424_2_0/ApplicantInfo/ContactPersonInfo/Address/Street1','Street1 name missing for proposal contact person, please verify the information for the related Unit Administrator.','grantsGov',sysdate,'admin',sys_guid(),0,'RR_SF424_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (753,'/GrantApplication/Forms/RR_SF424_2_0/ApplicantInfo/ContactPersonInfo/Address/City','City field missing for proposal contact person, please verify the information for the related Unit Administrator.','grantsGov',sysdate,'admin',sys_guid(),0,'RR_SF424_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (754,'/GrantApplication/Forms/RR_SF424_2_0/ApplicantInfo/ContactPersonInfo/Address/Country','Coutnry field missing for proposal contact person, please verify the information for the related Unit Administrator.','grantsGov',sysdate,'admin',sys_guid(),0,'RR_SF424_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (755,'/GrantApplication/Forms/RR_SF424_2_0/ApplicantInfo/ContactPersonInfo/Phone','Work Phone missing for proposal contact person, please verify the information for the related Unit Administrator.','grantsGov',sysdate,'admin',sys_guid(),0,'RR_SF424_2_0','Y');


-- RES-685
alter table BUDGET_DETAILS rename column IS_FORMULATED_COST_ELELMENT TO IS_FORMULATED_COST_ELEMENT;


-- RES-651
  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-PD','Document','ARIAH_PROPDEV_ABSTRACT_TYPECODE_PROJDESC', sys_guid(),0,'CONFG','1','The Abstract Type Code representing the abstract type named Project Description.','A','KUALI');

--RES-652
  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-PD','Document','ARIAH_PROPDEV_ABSTRACT_TYPECODE_AREASAFFECTED', sys_guid(),0,'CONFG','16','The Abstract Type Code representing the abstract type named Areas Affected.','A','KUALI');


 --RES-657
Declare
  nextnum NUMBER;
 BEGIN
  select (NVL(MAX(AWARD_PERSON_ID),0)+1) into nextnum from AWARD_PERSONS;
  execute immediate 'CREATE SEQUENCE "SEQ_AWARD_PERSONS_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

/
--RES-658
Declare
  nextnum NUMBER;
 BEGIN
  select (NVL(MAX(AWARD_PERSON_UNIT_ID),0)+1) into nextnum from AWARD_PERSON_UNITS;
  execute immediate 'CREATE SEQUENCE "SEQ_AWARD_PERSON_UNITS_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

/
--RES-659
Declare
  nextnum NUMBER;
 BEGIN
  select (NVL(MAX(AWARD_PERSON_CREDIT_SPLIT_ID),0)+1) into nextnum from AWARD_PERSON_CREDIT_SPLITS;
  execute immediate 'CREATE SEQUENCE "SEQ_AWARD_PERSON_CREDSPLITS_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

/
--RES-660
Declare
  nextnum NUMBER;
 BEGIN
  select (NVL(MAX(APU_CREDIT_SPLIT_ID),0)+1) into nextnum from AWARD_PERS_UNIT_CRED_SPLITS;
  execute immediate 'CREATE SEQUENCE "SEQ_AWARD_PERS_UNITCREDSPLS_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

/

--RES-667
Declare
  nextnum NUMBER;
 BEGIN
  select (NVL(MAX(AWARD_APPROVED_EQUIPMENT_ID),0)+1) into nextnum from AWARD_APPROVED_EQUIPMENT;
  execute immediate 'CREATE SEQUENCE "SEQ_AWARD_APPRV_EQUIPMENT_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

/

--RES-668
Declare
  nextnum NUMBER;
 BEGIN
  select (NVL(MAX(AWARD_APPR_FORN_TRAVEL_ID),0)+1) into nextnum from AWARD_APPROVED_FOREIGN_TRAVEL;
  execute immediate 'CREATE SEQUENCE "SEQ_AWARD_APPRV_FORNEQUIP_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

/

--RES-669
Declare
  nextnum NUMBER;
 BEGIN
  select (NVL(MAX(AWARD_IDC_RATE_ID),0)+1) into nextnum from AWARD_IDC_RATE;
  execute immediate 'CREATE SEQUENCE "SEQ_AWARD_IDC_RATE_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

/

--RES-670
Declare
  nextnum NUMBER;
 BEGIN
  select (NVL(MAX(AWARD_REPORT_TERMS_ID),0)+1) into nextnum from AWARD_REPORT_TERMS;
  execute immediate 'CREATE SEQUENCE "SEQ_AWARD_REPORT_TERMS_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

/


--RES-661
Declare
  nextnum NUMBER;
 BEGIN
  select (NVL(MAX(AWARD_SPONSOR_CONTACT_ID),0)+1) into nextnum from AWARD_SPONSOR_CONTACTS;
  execute immediate 'CREATE SEQUENCE "SEQ_AWARD_SPONSOR_CONTACT_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

/


--RES-662
Declare
  nextnum NUMBER;
 BEGIN
  select (NVL(MAX(AWARD_UNIT_CONTACT_ID),0)+1) into nextnum from AWARD_UNIT_CONTACTS;
  execute immediate 'CREATE SEQUENCE "SEQ_AWARD_UNIT_CONTACT_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

/

--RES-663
Declare
  nextnum NUMBER;
 BEGIN
  select (NVL(MAX(AWARD_PAYMENT_SCHEDULE_ID),0)+1) into nextnum from AWARD_PAYMENT_SCHEDULE;
  execute immediate 'CREATE SEQUENCE "SEQ_AWARD_PAYMENT_SCHED_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

/


--RES-664
Declare
  nextnum NUMBER;
 BEGIN
  select (NVL(MAX(AWARD_AMOUNT_INFO_ID),0)+1) into nextnum from AWARD_AMOUNT_INFO;
  execute immediate 'CREATE SEQUENCE "SEQ_AWARD_AMOUNT_INFO_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

/

--RES-665
Declare
  nextnum NUMBER;
 BEGIN
  select (NVL(MAX(AWARD_HIERARCHY_ID),0)+1) into nextnum from AWARD_HIERARCHY;
  execute immediate 'CREATE SEQUENCE "SEQ_AWARD_HIERARCHY_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

/

--RES-666
Declare
  nextnum NUMBER;
 BEGIN
  select (NVL(MAX(AWARD_FUNDING_PROPOSAL_ID),0)+1) into nextnum from AWARD_FUNDING_PROPOSALS;
  execute immediate 'CREATE SEQUENCE "SEQ_AWARD_FUNDING_PROP_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

/



 -- RES-546
Declare
  nextnum NUMBER;
 BEGIN
  select (NVL(MAX(TO_NUMBER(SPECIAL_REVIEW_CODE)),0)+1) into nextnum from SPECIAL_REVIEW;
  execute immediate 'CREATE SEQUENCE "SEQ_SPECIAL_REVIEW_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

/

Declare
  nextnum NUMBER;
 BEGIN
  select (NVL(MAX(TO_NUMBER(TBN_ID)),0)+1) into nextnum from TBN;
  execute immediate 'CREATE SEQUENCE "SEQ_TBN_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

/

-- RES-718
alter table EPS_PROPOSAL MODIFY EXECUTIVE_SUMMARY varchar2(2400);

--RES-719
insert into KRCR_CMPNT_T(NMSPC_CD,CMPNT_CD,OBJ_ID,VER_NBR,NM,ACTV_IND) values('KC-IDM','All',sys_guid(),1,'All','Y');

--RES-720
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IDM','All','ARIAH_PERSON_AFFILIATION_TYPE_FACULTY', sys_guid(),0,'CONFG','FCLTY','Parameter used to specify a persons affiliation type code representing faculty.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IDM','All','ARIAH_PERSON_AFFILIATION_TYPE_GRAD_STUDENT', sys_guid(),0,'CONFG','GRD_STDNT_STAFF','Parameter used to specify a persons affiliation type code representing graduate student staff.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IDM','All','ARIAH_PERSON_AFFILIATION_TYPE_RESEARCH', sys_guid(),0,'CONFG','RSRCH_STAFF','Parameter used to specify a persons affiliation type code representing research staff.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IDM','All','ARIAH_PERSON_AFFILIATION_TYPE_SERVICE', sys_guid(),0,'CONFG','SRVC_STAFF','Parameter used to specify a persons affiliation type code representing service staff.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IDM','All','ARIAH_PERSON_AFFILIATION_TYPE_SUPPORT', sys_guid(),0,'CONFG','SUPPRT_STAFF','Parameter used to specify a persons affiliation type code representing support staff.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IDM','All','ARIAH_PERSON_AFFILIATION_TYPE_OTHERACADEMIC', sys_guid(),0,'CONFG','OTH_ACADMC_GRP','Parameter used to specify a persons affiliation type code representing other academic staff.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IDM','All','ARIAH_PERSON_AFFILIATION_TYPE_MEDICAL', sys_guid(),0,'CONFG','MED_STAFF','Parameter used to specify a persons affiliation type code represnting medical staff.','A','KUALI');


 -- RES-721
INSERT INTO KRIM_ENT_NM_TYP_T(ENT_NM_TYP_CD,OBJ_ID,VER_NBR,NM,ACTV_IND,DISPLAY_SORT_CD,LAST_UPDT_DT) values('PRIOR',sys_guid(),1,'Prior','Y','D',sysdate);

 -- RES-722
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IDM','All','ARIAH_PERSON_NAME_TYPE_PRIOR', sys_guid(),0,'CONFG','PRIOR','Parameter used to specify a persons name type code represnting a prior/maiden name.','A','KUALI');

-- Biosketch work
alter table PERSON_BIOSKETCH add ( DEFAULT_FLAG CHAR(1) default 'N'); 
alter table PERSON_BIOSKETCH add ( SPONSOR_CODE VARCHAR2(12)); 

--RES-734
alter table PERSON_EXT_T add MILITARY_RANK VARCHAR2(100);

--RES-735
alter table EPS_PROP_PERSON add MILITARY_RANK VARCHAR2(100);
alter table EPS_PROP_PERSON_EXT add MILITARY_RANK VARCHAR2(100);

--RES-739
update proposal_type set help_desc='New project work that has never been previously submitted.' where PROPOSAL_TYPE_CODE='1'; -- New
update proposal_type set help_desc='Subsequent submission of previously denied proposal.' where PROPOSAL_TYPE_CODE='2'; -- Resubmission
update proposal_type set help_desc='Competitively reviewed proposal requesting additional funds extending the scope of work beyond the current project period.' where PROPOSAL_TYPE_CODE='3'; -- Renewal
update proposal_type set help_desc='Project approved for multiple-year funding, where funds are typically committed only one year at a time based on progress and availability of funds.' where PROPOSAL_TYPE_CODE='4'; -- continuation
update proposal_type set help_desc='Modified and resubmitted request for funding for a previously unfunded project.' where PROPOSAL_TYPE_CODE='5'; -- Revision
update proposal_type set help_desc='Work authorization under a basic contract (umbrella).' where PROPOSAL_TYPE_CODE='6'; -- Task Order

--RES-741
alter table KRLC_CMP_T	modify CAMPUS_CD VARCHAR2(6);
alter table KRIM_ENTITY_AFLTN_T	modify CAMPUS_CD VARCHAR2(6);
alter table KRIM_ENTITY_CACHE_T	modify CAMPUS_CD VARCHAR2(6);
alter table KRIM_PND_AFLTN_MT	modify CAMPUS_CD VARCHAR2(6);

-- RES-742
alter table UNIT	MODIFY UNIT_NUMBER VARCHAR2(12);
alter table UNIT	MODIFY PARENT_UNIT_NUMBER VARCHAR2(12);
alter table UNIT_ADMINISTRATOR	MODIFY UNIT_NUMBER VARCHAR2(12);
alter table EPS_PROP_PERSON	MODIFY HOME_UNIT VARCHAR2(12);
alter table EPS_PROPOSAL	MODIFY OWNED_BY_UNIT VARCHAR2(12);
alter table IACUC_PROTOCOL_PERSONS	MODIFY HOME_UNIT VARCHAR2(12);
alter table PROTOCOL_PERSONS	MODIFY HOME_UNIT VARCHAR2(12);
alter table COMMITTEE	MODIFY HOME_UNIT_NUMBER VARCHAR2(12);
alter table PROPOSAL_LOG	MODIFY LEAD_UNIT VARCHAR2(12);
alter table NEGOTIATION_UNASSOC_DETAIL	MODIFY LEAD_UNIT VARCHAR2(12);
alter table AWARD	MODIFY LEAD_UNIT_NUMBER VARCHAR2(12);
alter table AWARD_REPORT_TRACKING	MODIFY LEAD_UNIT_NUMBER VARCHAR2(12);
alter table ROLODEX	MODIFY OWNED_BY_UNIT VARCHAR2(12);
alter table SPONSOR	MODIFY OWNED_BY_UNIT VARCHAR2(12);
alter table SUBAWARD	MODIFY REQUISITIONER_UNIT VARCHAR2(12);
alter table AWARD_UNIT_CONTACTS	MODIFY UNIT_ADMINISTRATOR_UNIT_NUMBER VARCHAR2(12);
alter table EPS_PROP_UNIT_CREDIT_SPLIT	MODIFY UNIT_NUMBER VARCHAR2(12);
alter table KRA_USER	MODIFY UNIT_NUMBER VARCHAR2(12);
alter table PERSON_APPOINTMENT	MODIFY UNIT_NUMBER VARCHAR2(12);
alter table PROPOSAL_PERSON_UNITS	MODIFY UNIT_NUMBER VARCHAR2(12);
alter table PROPOSAL_UNITS	MODIFY UNIT_NUMBER VARCHAR2(12);
alter table PROPOSAL_UNIT_CREDIT_SPLIT	MODIFY UNIT_NUMBER VARCHAR2(12);
alter table PROP_ROLE_TEMPLATE	MODIFY UNIT_NUMBER VARCHAR2(12);
alter table PROTOCOL_UNITS	MODIFY UNIT_NUMBER VARCHAR2(12);
alter table UNIT_CORRESPONDENT	MODIFY UNIT_NUMBER VARCHAR2(12);
alter table FIN_OBJECT_CODE_MAPPING	MODIFY UNIT_NUMBER VARCHAR2(12);
alter table COI_DISCLOSURE_PERSON_UNITS	MODIFY UNIT_NUMBER VARCHAR2(12);
alter table FIN_ENTITY_REPORTER_UNITS	MODIFY UNIT_NUMBER VARCHAR2(12);
alter table IACUC_UNIT_CORRESPONDENT	MODIFY UNIT_NUMBER VARCHAR2(12);
alter table IACUC_PROTOCOL_UNITS	MODIFY UNIT_NUMBER VARCHAR2(12);
alter table UNIT_FORMULATED_COST	MODIFY UNIT_NUMBER VARCHAR2(12);
alter table AWARD_PERSON_UNITS	MODIFY UNIT_NUMBER VARCHAR2(12);
alter table EPS_PROP_PERSON_UNITS	MODIFY UNIT_NUMBER VARCHAR2(12);
alter table PROPOSAL	MODIFY LEAD_UNIT_NUMBER VARCHAR2(12);
alter table ROLE	MODIFY OWNED_BY_UNIT VARCHAR2(12);
alter table USER_ROLES MODIFY 	UNIT_NUMBER VARCHAR2(12);
alter table INSTITUTE_RATES MODIFY UNIT_NUMBER VARCHAR2(12);
alter table INSTITUTE_LA_RATES MODIFY UNIT_NUMBER VARCHAR2(12);


--RES-743
alter table BUDGET_CATEGORY_TYPE modify BUDGET_CATEGORY_TYPE_CODE VARCHAR2(10);
alter table BUDGET_CATEGORY modify CATEGORY_TYPE VARCHAR2(10);

--RES-744
alter table BUDGET_CATEGORY modify BUDGET_CATEGORY_CODE VARCHAR2(10);
alter table BUDGET_DETAILS modify BUDGET_CATEGORY_CODE VARCHAR2(10);
alter table COST_ELEMENT modify BUDGET_CATEGORY_CODE VARCHAR2(10);
alter table BUDGET_CATEGORY_MAPPING add COEUS_CATEGORY_CODE2 VARCHAR2(10);
update BUDGET_CATEGORY_MAPPING set COEUS_CATEGORY_CODE2=TO_CHAR(COEUS_CATEGORY_CODE);
alter table BUDGET_CATEGORY_MAPPING drop constraint BUDGET_CATEGORY_MAPPINGP1;
alter table BUDGET_CATEGORY_MAPPING drop column COEUS_CATEGORY_CODE;
alter table BUDGET_CATEGORY_MAPPING add COEUS_CATEGORY_CODE VARCHAR2(10);
update BUDGET_CATEGORY_MAPPING set COEUS_CATEGORY_CODE=COEUS_CATEGORY_CODE2;
alter table BUDGET_CATEGORY_MAPPING drop column COEUS_CATEGORY_CODE2;
alter table BUDGET_CATEGORY_MAPPING  add primary key (MAPPING_NAME,TARGET_CATEGORY_CODE,COEUS_CATEGORY_CODE); 

-- RES-747
alter table SPONSOR add OTHER_SIGN_CONTRIB_IND VARCHAR2(1) DEFAULT 'N';
update SPONSOR set OTHER_SIGN_CONTRIB_IND='Y' where SPONSOR_CODE IN(select SPONSOR_CODE from SPONSOR_HIERARCHY where HIERARCHY_NAME='NIH Other Significant Contributor' );
delete from SPONSOR_HIERARCHY where HIERARCHY_NAME='NIH Other Significant Contributor';

--RES-746
alter table SPONSOR add MULTIPLE_PI_IND VARCHAR2(1) DEFAULT 'N';
update SPONSOR set MULTIPLE_PI_IND='Y' where SPONSOR_CODE IN(select SPONSOR_CODE from SPONSOR_HIERARCHY where HIERARCHY_NAME='NIH Multiple PI' );
delete from SPONSOR_HIERARCHY where HIERARCHY_NAME='NIH Multiple PI';
