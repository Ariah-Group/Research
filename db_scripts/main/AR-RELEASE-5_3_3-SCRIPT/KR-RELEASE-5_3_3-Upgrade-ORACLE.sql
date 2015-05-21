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

-- new person parameter for Mobile Phone Type Code
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IDM','All','ARIAH_PERSON_PHONE_TYPE_MOBILE', sys_guid(),0,'CONFG','MBL','Parameter used to specify a persons phone type code representing their mobile number.','A','KUALI');



-- Parameter for Budget Category Codes representing Senior Personnel that appear in the PD Sponsor Forms
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_PRINTFORMS_BUDGET_CATCODE_PERSONNEL', sys_guid(),0,'CONFG','1','Budget category code representing Senior Personnel that will appear on the printed Sponsor Forms.','A','KUALI');

-- Parameter for Budget to set Inflation flag to OFF by default for non-personnel line items
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-B','Document','ARIAH_BUDGET_INFLATION_FLAG_NONPERSONNEL_OFF', sys_guid(),0,'CONFG','true','If true, then the Inflation flag is OFF by default for non-personnel line itmes on a budget. If false, then otherwise.','A','KUALI');


commit;
exit