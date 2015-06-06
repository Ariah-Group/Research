set define off
set sqlblanklines on
spool KR-RELEASE-5_3_4-Upgrade-ORACLE-Install.log


-- add missing parameter SQL supposed to have been added to 5.3.0
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_REQUIRE_PROJECT_DATES', sys_guid(),0,'CONFG','true','If true the Project Start and End Dates in a Proposal Development record are required. False the fields are optional.','A','KUALI');



commit;
exit
