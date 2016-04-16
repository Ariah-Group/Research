set define off
set sqlblanklines on
spool KR-RELEASE-5_4_0-Upgrade-ORACLE-Install.log



-- RES-559
Insert into KRCR_CMPNT_T (NMSPC_CD,CMPNT_CD,OBJ_ID,VER_NBR,NM,ACTV_IND) values ('KC-IDM','All',SYS_GUID(),1,'All','Y');

-- RES-600
update KRCR_PARM_T set VAL='Summary' where PARM_NM='proposaldevelopment.approver.view.title' AND VAL='Proposal Summary'

-- RES-517
  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-AWARD','Document','ARIAH_AWARD_HIDE_KEYWORDS_PANEL', sys_guid(),0,'CONFG','N','Flag to determine if the Keywords Panel is hidden on an Award.','A','KUALI');
 

 -- RES-518
  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-PROTOCOL','Document','ARIAH_IRBPROTOCOL_HIDE_KEYWORDS_PANEL', sys_guid(),0,'CONFG','N','Flag to determine if the Keywords Panel is hidden on an IRB Protocol.','A','KUALI');

-- RES-519
  INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
      VALUES  ('KC-IACUC','Document','ARIAH_IACUCPROTOCOL_HIDE_KEYWORDS_PANEL', sys_guid(),0,'CONFG','N','Flag to determine if the Keywords Panel is hidden on an IACUC Protocol.','A','KUALI');


commit;
exit
