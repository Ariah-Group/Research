set define off
set sqlblanklines on
spool KR-RELEASE-5_4_0-Upgrade-ORACLE-Install.log



-- RES-559
Insert into KRCR_CMPNT_T (NMSPC_CD,CMPNT_CD,OBJ_ID,VER_NBR,NM,ACTV_IND) values ('KC-IDM','All',SYS_GUID(),1,'All','Y');

-- RES-600
update KRCR_PARM_T set VAL='Summary' where PARM_NM='proposaldevelopment.approver.view.title' AND VAL='Proposal Summary';

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

 -- RES-627
  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-COIDISCLOSURE','Document','ARIAH_COI_HIDE_AND_DEFAULT_COI_DOC_DESC', sys_guid(),0,'CONFG','Y','Flag to determine if the document description panel is hidden on a COI Disclosure record.','A','KUALI');


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


-- RES-674
update krcr_parm_t set PARM_DESC_TXT='Flag in a dev proposal record to display the Delivery Info subpanel on the main Proposal tab. If Y then the subpanel is displayed. If N then the subpanel is not displayed.' where PARM_NM='deliveryInfoDisplayIndicator';

-- RES-676
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

-- RES-651
  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-PD','Document','ARIAH_PROPDEV_ABSTRACT_TYPECODE_PROJDESC', sys_guid(),0,'CONFG','1','The Abstract Type Code representing the abstract type named Project Description.','A','KUALI');

--RES-652
  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-PD','Document','ARIAH_PROPDEV_ABSTRACT_TYPECODE_AREASAFFECTED', sys_guid(),0,'CONFG','16','The Abstract Type Code representing the abstract type named Areas Affected.','A','KUALI');


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

--RES-722
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IDM','All','ARIAH_PERSON_NAME_TYPE_PRIOR', sys_guid(),0,'CONFG','PRIOR','Parameter used to specify a persons name type code represnting a prior/maiden name.','A','KUALI');

--RES-741
alter table KRLC_CMP_T	modify CAMPUS_CD VARCHAR2(6);
alter table KRIM_ENTITY_AFLTN_T	modify CAMPUS_CD VARCHAR2(6);
alter table KRIM_ENTITY_CACHE_T	modify CAMPUS_CD VARCHAR2(6);
alter table KRIM_PND_AFLTN_MT	modify CAMPUS_CD VARCHAR2(6);

commit;
exit
