set define off
set sqlblanklines on
spool KR-RELEASE-5_3_3-Upgrade-ORACLE-Install.log


-- new namesapce/component combo to handle new Person Parameters
Insert into KRCR_CMPNT_T (NMSPC_CD,CMPNT_CD,OBJ_ID,VER_NBR,NM,ACTV_IND) values ('KC-IDM','All',SYS_GUID(),1,'All','Y');

-- new person parameter for Office Phone Type Code
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IDM','All','ARIAH_PERSON_PHONE_TYPE_OFFICE', sys_guid(),0,'CONFG','WRK','Parameter used to specify a persons phone type code representing their primary work or office phone.','A','KUALI');

-- new person parameter for Fax Phone Type Code
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IDM','All','ARIAH_PERSON_PHONE_TYPE_FAX', sys_guid(),0,'CONFG','FAX','Parameter used to specify a persons phone type code representing their fax number.','A','KUALI');

-- new person parameter for Pager Phone Type Code
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IDM','All','ARIAH_PERSON_PHONE_TYPE_PAGER', sys_guid(),0,'CONFG','PGR','Parameter used to specify a persons phone type code representing their pager number.','A','KUALI');

commit;
exit
