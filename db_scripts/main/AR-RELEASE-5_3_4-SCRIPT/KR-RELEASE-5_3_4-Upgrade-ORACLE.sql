set define off
set sqlblanklines on
spool KR-RELEASE-5_3_4-Upgrade-ORACLE-Install.log


-- add missing parameter SQL supposed to have been added to 5.3.0
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_REQUIRE_PROJECT_DATES', sys_guid(),0,'CONFG','true','If true the Project Start and End Dates in a Proposal Development record are required. False the fields are optional.','A','KUALI');


-- Parameter for PropDev approval question certification
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_DISPLAY_APPROVAL_CERT_QUESTION', sys_guid(),0,'CONFG','true','If true display a certification question upon routing, approving, or blanket approving a Proposal Development record. If false then no question is shown.','A','KUALI');

INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_TEXT_APPROVAL_CERT_QUESTION', sys_guid(),0,'CONFG','SUBMISSION INTO ROUTING BY THE PI SIGNIFIES: That the information submitted within the application is true, complete and accurate to the best of my knowledge; that any false, fictitious, or fraudulent statements or claims may subject me to criminal, civil, or administrative penalties; and that I agree to accept responsibility for the scientific conduct of the project and to provide the required progress reports if a grant is awarded as a result of the application. *************************************** APPROVAL BY CHAIR/DEAN/DIRECTOR OR SUBSEQUENT PARTIES CERTIFIES: The proposal/proposal summary has been reviewed; The research or program proposed is in keeping with Department/College/Center/Institute educational objectives; Approval is given for any cost-sharing, equipment or space as described in the budget; and Approval is given for the budget request and the work proposed.','The text of the proposal development approval certification question presented to all staff upon approving a PD record.','A','KUALI');

-- Parameter representing PD notificatino for modified narrative
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PD','Document','ARIAH_PROPDEV_ACTIONCODE_NARRATIVE_MODIFY', sys_guid(),0,'CONFG','102','Action code representing Notification sent when a narrative is added to a proposal that is not in pending status.','A','KUALI');


commit;
exit
