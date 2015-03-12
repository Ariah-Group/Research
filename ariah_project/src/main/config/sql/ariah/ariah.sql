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
VALUES  ('KC-IACUC','Document','ARIAH_IACUC_DEFAULT_PERFORMING_ORG_ID', sys_guid(),0,'CONFG','000001','Default value for Performing Org ID for an IACUC Protocol.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DEFAULT_ANTICIPATED_AWARD_TYPE', sys_guid(),0,'CONFG','1','Default value for Anticipated Award Type dropdown. MUST be numeric value. See AWARD_TYPE table in database for sample values.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DEFAULT_SPONSOR_DEADLINE_TYPE', sys_guid(),0,'CONFG','P','Default value for Sponsor Deadline Type.','A','KUALI');
 
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_REQUIRE_SPONSOR_DEADLINE_TYPE', sys_guid(),0,'CONFG','P','Flag to require Sponsor Deadline Date on a Proposal Development record. ','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-AWD','Document','ARIAH_PARAM_AWARD_HIDE_AND_DEFAULT_AWARD_DOC_DESC', sys_guid(),0,'CONFG','Y','Flag to determine if the Document Description panel is hidden on an Award document and a default document description is provided.. ','A','KUALI');
 

-- AWARD Table Modifications
alter table AWARD MODIFY ACCOUNT_NUMBER VARCHAR2(50);


