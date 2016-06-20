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
      VALUES  ('KC-PD','Document','ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_TRIGGER_UNDERRECOV_ENABLED', sys_guid(),0,'CONFG','N','Parameter to specify if the PD Finance workflow step should be triggered if a Budget that is FINAL has an amount of Underecovery GREATER than a certain value specified in the ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_TRIGGER_UNDERRECOV_AMOUNT parameter.','A','KUALI');

  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-PD','Document','ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_TRIGGER_UNDERRECOV_AMOUNT', sys_guid(),0,'CONFG','0','Numeric amount to use if the ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_TRIGGER_UNDERRECOV_ENABLED parameter is eanbled.','A','KUALI');

  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-PD','Document','ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_TRIGGER_COSTSHARE_ENABLED', sys_guid(),0,'CONFG','N','Parameter to specify if the PD Finance workflow step should be triggered if a Budget that is FINAL has an amount of Costsharing GREATER than a certain value specified in the ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_TRIGGER_COSTSHARE_AMOUNT parameter.','A','KUALI');

  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-PD','Document','ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_TRIGGER_COSTSHARE_AMOUNT', sys_guid(),0,'CONFG','0','Numeric amount to use if the ARIAH_PROPDEV_WORKFLOW_STEP_FINANCE_TRIGGER_COSTSHARE_ENABLED parameter is eanbled.','A','KUALI');

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

commit;
exit
