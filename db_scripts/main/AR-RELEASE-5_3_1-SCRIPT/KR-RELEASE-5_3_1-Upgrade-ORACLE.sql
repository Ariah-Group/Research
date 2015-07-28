set define off
set sqlblanklines on
spool KR-RELEASE-5_3_1-Upgrade-ORACLE-Install.log


-- small fix to kew workflow document type to clone for AR instead of original KC
Insert into KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,OBJ_ID,VER_NBR,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL) values (krim_attr_data_id_s.nextval,SYS_GUID(),1,'894','3','13','AR');
Insert into KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,OBJ_ID,VER_NBR,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL) values (krim_attr_data_id_s.nextval,SYS_GUID(),1,'895','3','13','AR');
Insert into KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,OBJ_ID,VER_NBR,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL) values (krim_attr_data_id_s.nextval,SYS_GUID(),1,'896','3','13','AR');
Insert into KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,OBJ_ID,VER_NBR,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL) values (krim_attr_data_id_s.nextval,SYS_GUID(),1,'897','3','13','AR');
Insert into KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,OBJ_ID,VER_NBR,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL) values (krim_attr_data_id_s.nextval,SYS_GUID(),1,'898','8','13','AR');
Insert into KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,OBJ_ID,VER_NBR,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL) values (krim_attr_data_id_s.nextval,SYS_GUID(),1,'899','59','13','AR');
Insert into KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,OBJ_ID,VER_NBR,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL) values (krim_attr_data_id_s.nextval,SYS_GUID(),1,'900','5','13','AR');
Insert into KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,OBJ_ID,VER_NBR,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL) values (krim_attr_data_id_s.nextval,SYS_GUID(),1,'901','5','13','AR');
Insert into KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,OBJ_ID,VER_NBR,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL) values (krim_attr_data_id_s.nextval,SYS_GUID(),1,'902','5','13','AR');

-- new budget parameter
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-B','Document','ARIAH_PROPDEV_BUDGET_DEFAULT_SUBMIT_COST_SHARING_FLAG', sys_guid(),0,'CONFG','false','Boolean flag to set the Proposal Development Budget - Submit Cost Sharing Flag to checked or not checked by default.','A','KUALI');


-- new Award Questionnaire
update krcr_parm_t set VAL=VAL||';Maintain Questionnaire Usage:KC-AWARD' where PARM_NM='associateModuleQuestionnairePermission';

Insert into KRIM_PERM_T (PERM_ID,OBJ_ID,VER_NBR,PERM_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND) 
values (KRIM_PERM_ID_S.nextval,SYS_GUID(),1,(select PERM_TMPL_ID from KRIM_PERM_TMPL_T where NM='Questionnaire Permission'),
'KC-AWARD','Maintain Questionnaire Usage','Add/Edit Questionnaire Usages for Award','Y');

Insert into KRIM_ROLE_T (ROLE_ID,OBJ_ID,VER_NBR,ROLE_NM,NMSPC_CD,DESC_TXT,KIM_TYP_ID,ACTV_IND,LAST_UPDT_DT) 
values (KRIM_ROLE_ID_S.nextval,SYS_GUID(),1,'Maintain Award Questionnaire','KC-AWARD','Grants the ability to maintain award questionnaires.','1','Y',SYSDATE);

commit;


@KR_5_3_1_DML.sql

commit;


Insert into KRIM_ROLE_PERM_T (ROLE_PERM_ID,OBJ_ID,VER_NBR,ROLE_ID,PERM_ID,ACTV_IND) values (KRIM_ROLE_PERM_ID_S.nextval,SYS_GUID(),1,
(select ROLE_ID from KRIM_ROLE_T where ROLE_NM='Maintain Award Questionnaire'),
(select PERM_ID from KRIM_PERM_T where NMSPC_CD='KC-AWARD' and NM='Maintain Questionnaire Usage'),'Y');

Insert into KRIM_ROLE_PERM_T (ROLE_PERM_ID,OBJ_ID,VER_NBR,ROLE_ID,PERM_ID,ACTV_IND) values (KRIM_ROLE_PERM_ID_S.nextval,SYS_GUID(),1,
(select ROLE_ID from KRIM_ROLE_T where ROLE_NM='Technical Administrator'),
(select PERM_ID from KRIM_PERM_T where NMSPC_CD='KC-AWARD' and NM='Maintain Questionnaire Usage'),'Y');

Insert into KRIM_ROLE_PERM_T (ROLE_PERM_ID,OBJ_ID,VER_NBR,ROLE_ID,PERM_ID,ACTV_IND) values (KRIM_ROLE_PERM_ID_S.nextval,SYS_GUID(),1,
(select ROLE_ID from KRIM_ROLE_T where ROLE_NM='KC Superuser'),
(select PERM_ID from KRIM_PERM_T where NMSPC_CD='KC-AWARD' and NM='Maintain Questionnaire Usage'),'Y');

commit;

-- support for Negotiation Activity default restricted status
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-NEGOTIATION','Document','ARIAH_NEGO_ACTIVITY_DEFAULT_RESTRICTED_ENABLED', sys_guid(),0,'CONFG','true','If true, the Negotiation Activity is defaulted to Restricted. If false the Negotiation Activity is defaulted to unrestricted.','A','KUALI');


 -- Fix ability for admin used to have Modify Subaward role so admin can use ADD INVOICE functionality on a Subaward
Insert into KRIM_ROLE_MBR_T (ROLE_MBR_ID,VER_NBR,OBJ_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,ACTV_FRM_DT,ACTV_TO_DT,LAST_UPDT_DT) 
values (KRIM_ROLE_MBR_ID_S.nextval,1,SYS_GUID(), (select ROLE_ID FROM KRIM_ROLE_T where ROLE_NM='Modify Subaward') ,'admin','P',null,null,SYSDATE);


-- Parameter to restrict PD Attachments to Specific Unit Admin Types
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_HIDE_PD_INTERNAL_ATTACHMENTS', sys_guid(),0,'CONFG','true','Boolean flag to set the Proposal Development Internal Attachments to be hidden and viewable only by OSP Administrator Unit Admins.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_UNITADMIN_TYPECODES_AUTHORIZED_TO_VIEWINTERNALATTACHMENTS', sys_guid(),0,'CONFG','999,2','A comma-delimited list of Unit Admin Type Codes for Unit Admins that are allowed to see the Proposal Development Internal Attachments if they hidden by the ARIAH_PROPDEV_HIDE_PD_INTERNAL_ATTACHMENTS parameter.','A','KUALI');


INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DISPLAY_PROPOSAL_REPORT_BUTTON', sys_guid(),0,'CONFG','true','If true then a button is displayed on the Proposal Development Summary and Actions tabs that when clicked opens a new browser window to a URL of a report specified by the Parameter ARIAH_PROPDEV_PROPOSAL_REPORT_BUTTON_URL.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_PROPOSAL_REPORT_BUTTON_URL', sys_guid(),0,'CONFG','http://demo.ariahgroup.org/myreportingserver/proposals.do?proposalnum=','A URL to what is typically a web-based report in an external reporting system outside of the Ariah Research system .','A','KUALI');



INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-AWARD','Document','ARIAH_AWARD_HEADER_PI_NONEMP_FULLNAME_OVERRIDE', sys_guid(),0,'CONFG','true','If true, when the PI of an Award is a Non-Employee the Award Header grid will attempt to display the Non-Employee Full Name instead of the Non-Employees Organization Name. If the Full Name is not set then it displays the Organization Name. If false, the Organization Name is always displayed regardless of the Full Name field value.','A','KUALI');

commit;

-- fix for PD workflow Blanket Approve policy
update KREW_DOC_TYP_T set blnkt_appr_plcy=null, blnkt_appr_grp_id=(select GRP_ID from KRIM_GRP_T where GRP_NM='ProposalAdmin')
where doc_typ_id IN(select doc_typ_id from KREW_DOC_TYP_T where blnkt_appr_plcy='NONE' and DOC_TYP_NM='ProposalDevelopmentDocument');

-- fix for IACUC Committee Roster Report
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IACUC','Document','ARIAH_IACUC_CORRESP_TYPE_CODE_ROSTER', sys_guid(),0,'CONFG','30','The IACUC Correspondence Type Code representing the IACUC Committee Roster report.','A','KUALI');

-- fix for IACUC Committee Scheduled Meetings Report
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-IACUC','Document','ARIAH_IACUC_CORRESP_TYPE_CODE_SCHEDULED_MEETINGS', sys_guid(),0,'CONFG','31','The IACUC Correspondence Type Code representing the IACUC Committee Scheduled Meetings report.','A','KUALI');

-- Negotiation - default the Add Activity Panel to open or close by default
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-NEGOTIATION','Document','ARIAH_NEGO_ADD_ACTIVITY_PANEL_OPENED', sys_guid(),0,'CONFG','true','Flag to determine if Add Activity panel in a Negotiation document is open by default or closed to simplify data entry.','A','KUALI');


--specify a default abstract type in a proposal development abstratcs/attachments tab
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DEFAULT_ABSTRACT_TYPE_CODE', sys_guid(),0,'CONFG','1','Sets the default proposal development abstract type code.','A','KUALI');


-- ability to specify whether the Attachments panel on the Award Attachments tab is open or closed by default
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-AWARD','Document','ARIAH_AWARD_DEFAULT_ATTACHMENTS_TAB_OPEN', sys_guid(),0,'CONFG','true','If true, the Attachments panel is open by default on an Award. If false the panel is defaulted to be closed.','A','KUALI');



commit;
exit
