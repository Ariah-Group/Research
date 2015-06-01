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


-- Institutional Proposals questionnaires
update krcr_parm_t set VAL=VAL||';Maintain Questionnaire Usage:KC-IP' where PARM_NM='associateModuleQuestionnairePermission';

Insert into KRIM_PERM_T (PERM_ID,OBJ_ID,VER_NBR,PERM_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND) 
values (KRIM_PERM_ID_S.nextval,SYS_GUID(),1,(select PERM_TMPL_ID from KRIM_PERM_TMPL_T where NM='Questionnaire Permission'),
'KC-IP','Maintain Questionnaire Usage','Add/Edit Questionnaire Usages for Institutional Proposals','Y');


Insert into KRIM_ROLE_T (ROLE_ID,OBJ_ID,VER_NBR,ROLE_NM,NMSPC_CD,DESC_TXT,KIM_TYP_ID,ACTV_IND,LAST_UPDT_DT) 
values (KRIM_ROLE_ID_S.nextval,SYS_GUID(),1,'Maintain Institutional Proposal Questionnaire','KC-IP','Grants the ability to maintain Institutional Proposals questionnaires.','1','Y',SYSDATE);

Insert into KRIM_ROLE_PERM_T (ROLE_PERM_ID,OBJ_ID,VER_NBR,ROLE_ID,PERM_ID,ACTV_IND) values (KRIM_ROLE_PERM_ID_S.nextval,SYS_GUID(),1,
(select ROLE_ID from KRIM_ROLE_T where ROLE_NM='Maintain Institutional Proposal Questionnaire'),
(select PERM_ID from KRIM_PERM_T where NMSPC_CD='KC-IP' and NM='Maintain Questionnaire Usage'),'Y');

Insert into KRIM_ROLE_PERM_T (ROLE_PERM_ID,OBJ_ID,VER_NBR,ROLE_ID,PERM_ID,ACTV_IND) values (KRIM_ROLE_PERM_ID_S.nextval,SYS_GUID(),1,
(select ROLE_ID from KRIM_ROLE_T where ROLE_NM='Technical Administrator'),
(select PERM_ID from KRIM_PERM_T where NMSPC_CD='KC-IP' and NM='Maintain Questionnaire Usage'),'Y');

Insert into KRIM_ROLE_PERM_T (ROLE_PERM_ID,OBJ_ID,VER_NBR,ROLE_ID,PERM_ID,ACTV_IND) values (KRIM_ROLE_PERM_ID_S.nextval,SYS_GUID(),1,
(select ROLE_ID from KRIM_ROLE_T where ROLE_NM='KC Superuser'),
(select PERM_ID from KRIM_PERM_T where NMSPC_CD='KC-IP' and NM='Maintain Questionnaire Usage'),'Y');



-- Parameter representing top-most unit in hierarchy. Used in various modules to prevent hard-coded unit numbers.
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-UNT','Document','ARIAH_UNIT_TOP_MOST_UNIT_NUMBER', sys_guid(),0,'CONFG','000001','Unit number representing the top-most unit the unit hierarchy.','A','KUALI');



commit;
exit
