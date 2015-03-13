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
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_REQUIRE_SPONSOR_DEADLINE_TYPE', sys_guid(),0,'CONFG','Y','Flag to require Sponsor Deadline Date on a Proposal Development record. ','A','KUALI');

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
VALUES  ('KC-IACUC','Document','ARIAH_IACUC_HIDE_AND_DEFAULT_IACUC_PROTOCOL_DOC_DESC', sys_guid(),0,'CONFG','Y','Flag to determine if the Document Description panel is hidden on an IACUC Protocol document and a default document description is provided.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DEFAULT_PROPOSAL_TYPE_CODE', sys_guid(),0,'CONFG','1','Default value for Proposal Development Proposal Type Code from database table PROPOSAL_TYPE','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DEFAULT_ACTIVITY_TYPE_CODE', sys_guid(),0,'CONFG','1','Default value for Proposal Development Activity Type Code from database table ACTIVITY_TYPE','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DEFAULT_SPONSOR_CODE', sys_guid(),0,'CONFG','','Default value for Proposal Development Sponsor Code from database table SPONSOR','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DEFAULT_PROPOSAL_TITLE', sys_guid(),0,'CONFG','To Be Determined','Default value a Proposal Development Title','A','KUALI');


-- Dev Proposal DML modifications

alter table proposal_type add (
ACTIVE varchar2(1 byte),
SORT_ORDER NUMBER (5,0),
help_desc varchar2(200 byte)
); 

-- AWARD Table Modifications
alter table AWARD MODIFY ACCOUNT_NUMBER VARCHAR2(50);


-- IRB Protocol DML Modifications

   CREATE SEQUENCE "SEQ_IRB_PROTOCOL_NUM"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 200000 NOCACHE  NOORDER  NOCYCLE ;
