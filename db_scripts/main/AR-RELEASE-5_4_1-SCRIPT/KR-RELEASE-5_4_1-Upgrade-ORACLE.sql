set define off
set sqlblanklines on
spool KR-RELEASE-5_4_1-Upgrade-ORACLE-Install.log


-- RES-752
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
   VALUES  ('KC-PD','Document','ARIAH_PROPDEV_WORKFLOW_STEP_SPECREVS_EXPORT_REVIEW_TYPE', sys_guid(),0,'CONFG','8','The Special Review Type Code representing an Export Control special review type.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
   VALUES  ('KC-PD','Document','ARIAH_PROPDEV_WORKFLOW_STEP_SPECREVS_IBC_REVIEW_TYPE', sys_guid(),0,'CONFG','14','The Special Review Type Code representing an IBC / Biosafety special review type.','A','KUALI');




commit;
exit
