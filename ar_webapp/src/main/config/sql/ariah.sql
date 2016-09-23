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





 -- RES-711
alter table EPS_PROPOSAL ADD AGENCY_PROGRAM_NAME VARCHAR2(200);
alter table EPS_PROPOSAL ADD AGENCY_DIVISION_NAME VARCHAR2(200);



 -- RES-710
CREATE SEQUENCE SEQ_S2S_ERROR_MESSAGES INCREMENT BY 1 START WITH 1 NOCACHE;

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