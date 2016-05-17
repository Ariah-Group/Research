set define off
set sqlblanklines on
spool KR-RELEASE-5_3_0-Upgrade-ORACLE-Install.log


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

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_UNITADMIN_TYPECODES_AUTHORIZED_TO_LOCK_PROPOSAL', sys_guid(),0,'AUTH','999,2','A comma-delimited list of Unit Administrator Type Codes that are authorized to LOCK a Proposal Development record.','A','KUALI');

-- update some params ONLY if they are set to default kuali values, otherwise don't overwrite
UPDATE krcr_parm_t set VAL='mail.from@ariahgroup.org' where PARM_NM='EMAIL_NOTIFICATION_FROM_ADDRESS' and VAL='from.address@kuali.org';
UPDATE krcr_parm_t set VAL='mail.from@ariahgroup.org' where PARM_NM='EMAIL_NOTIFICATION_TEST_ADDRESS' and VAL='kc.notification@kuali.org';
UPDATE krcr_parm_t set VAL='mail.from@ariahgroup.org' where PARM_NM='FROM_ADDRESS' and VAL='rice.test@kuali.org';
UPDATE krcr_parm_t set VAL='mail.from@ariahgroup.org' where PARM_NM='LOOKUP_CONTACT_EMAIL' and VAL='test@kuali.org';
UPDATE krcr_parm_t set VAL='AR' where PARM_NM='SCHOOL_ACRONYM' and VAL='KC';
UPDATE krcr_parm_t set VAL='Ariah Research' where PARM_NM='SCHOOL_NAME' and VAL='Kuali Coeus';

UPDATE krcr_parm_t set VAL='admin' where PARM_NM='FELLOWSHIP_OSP_ADMIN';
UPDATE krcr_parm_t set VAL='NotificationDocument' where PARM_NM='KcNotificationDocumentTypeName';
update KRCR_PARM_T set VAL='Approval signifies that the proposed project fits within the academic framework and resources of the unit, requirements for new or renovated facilities space have been discussed with the appropriate people, contributions listed will be met by the department college unless otherwise approved, that Conflict of Interest requirements have been addressed, and that Sponsored Programs may process the proposal' where PARM_NM='propSummaryDisclaimerText';
update KRCR_PARM_T set PARM_DESC_TXT='Description of co-investigator for Non-NIH Proposals' where PARM_NM='personrole.coi';
update KRCR_PARM_T set PARM_DESC_TXT='Description of key person for Non-NIH Proposals' where PARM_NM='personrole.kp';
update KRCR_PARM_T set PARM_DESC_TXT='Description of principal investigator multiple for NIH Proposals' where PARM_NM='personrole.nih.coi';
update KRCR_PARM_T set PARM_DESC_TXT='Description of principal investigator multiple for NIH Proposals' where PARM_NM='personrole.nih.coi.mpi';
update KRCR_PARM_T set PARM_DESC_TXT='Description of key person for NIH Proposals' where PARM_NM='personrole.nih.kp';
update KRCR_PARM_T set PARM_DESC_TXT='Description of principal investigator contact for NIH Proposals' where PARM_NM='personrole.nih.pi';
update KRCR_PARM_T set PARM_DESC_TXT='Description of principal investigator for Non-NIH Proposals' where PARM_NM='personrole.pi';

update KRIM_ROLE_T set KIM_TYP_ID='69' where ROLE_NM='COI Reporter';


-- Maintenance Document Fix Affecting Permissions to Edit Maintenance Documents
update KRIM_PERM_ATTR_DATA_T set ATTR_VAL='ArMaintenanceDocument' where ATTR_VAL='KcMaintenanceDocument';
update KREW_DOC_TYP_T set DOC_TYP_NM='AR' where DOC_TYP_NM='KC';

update KREW_DOC_TYP_T set DOC_TYP_NM='ArAwardsMaintenanceDocument' where DOC_TYP_NM='KcAwardsMaintenanceDocument';
update KREW_DOC_TYP_T set DOC_TYP_NM='ArComplianceMaintenanceDocument' where DOC_TYP_NM='KcComplianceMaintenanceDocument';
update KREW_DOC_TYP_T set DOC_TYP_NM='ArMaintenanceDocument' where DOC_TYP_NM='KcMaintenanceDocument';
update KREW_DOC_TYP_T set DOC_TYP_NM='ArMiscellaneousMaintenanceDocument' where DOC_TYP_NM='KcMiscellaneousMaintenanceDocument';
update KREW_DOC_TYP_T set DOC_TYP_NM='ArNegotiationsMaintenanceDocument' where DOC_TYP_NM='KcNegotiationsMaintenanceDocument';
update KREW_DOC_TYP_T set DOC_TYP_NM='ArProposalsMaintenanceDocument' where DOC_TYP_NM='KcProposalsMaintenanceDocument';
update KREW_DOC_TYP_T set DOC_TYP_NM='ArSharedMaintenanceDocument' where DOC_TYP_NM='KcSharedMaintenanceDocument';

update KREW_DOC_TYP_T set DOC_TYP_NM='AffiliationTypeMaintenanceDocument' where DOC_TYP_NM='KcAffiliationTypeMaintenanceDocument';
update KREW_DOC_TYP_T set DOC_TYP_NM='KrmsTermFunParamSpecMaintenanceDocument' where DOC_TYP_NM='KcKrmsTermFunParamSpecMaintenanceDocument';
update KREW_DOC_TYP_T set DOC_TYP_NM='KrmsTermFunctionMaintenanceDocument' where DOC_TYP_NM='KcKrmsTermFunctionMaintenanceDocument';
update KREW_DOC_TYP_T set DOC_TYP_NM='NotificationDocument' where DOC_TYP_NM='KcNotificationDocument';
update KREW_DOC_TYP_T set DOC_TYP_NM='PersonExtendedAttributesMaintenanceDocument' where DOC_TYP_NM='KcPersonExtendedAttributesMaintenanceDocument';

update KREW_DOC_TYP_T set DOC_TYP_NM='Ariah Research Sub Module Maintenance Document', LBL='Ariah Research Sub Module' where DOC_TYP_NM='Coeus Sub Module Maintenance Document';
update KREW_DOC_TYP_T set LBL='Ariah Research Module' where DOC_TYP_NM='CoeusModuleMaintenanceDocument';



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



update KRIM_PERM_T set NM='Create Amendment', DESC_TXT='Create a new amendment for a protocol' where NM='Create Ammendment';
update KRIM_PERM_ATTR_DATA_T set ATTR_VAL='create_amendment' where ATTR_VAL='create_ammendment';


-- fix for RES-241
Insert into KRCR_CMPNT_T (NMSPC_CD,CMPNT_CD,OBJ_ID,VER_NBR,NM,ACTV_IND) values ('KR-IDM','PersonDocumentName',SYS_GUID(),1,'Person Document Name Record','Y');


commit;
exit
