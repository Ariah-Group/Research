set define off
set sqlblanklines on
spool KR-RELEASE-5_3_5-Upgrade-ORACLE-Install.log



-- ensure ADMIN user can create and manage negotiation records
Insert into KRIM_ROLE_MBR_T (ROLE_MBR_ID,VER_NBR,OBJ_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,ACTV_FRM_DT,ACTV_TO_DT,LAST_UPDT_DT) 
values (KRIM_ROLE_MBR_ID_S.nextval,1,SYS_GUID(), (select ROLE_ID FROM KRIM_ROLE_T where ROLE_NM='Negotiation Administrator') ,'admin','P',null,null,SYSDATE);


-- add feature to enable copy custom data for IRB protocol : RES-481
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PROTOCOL','Document','ARIAH_IRB_PROTOCOL_COPY_CUSTOM_DATA_ENABLED', sys_guid(),0,'CONFG','false','Flag to enable copying of custom data values for an IRB Protocol when the protocol is copied','A','KUALI');

-- add feature to enable copy notes for IRB protocol : RES-483
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PROTOCOL','Document','ARIAH_IRB_PROTOCOL_COPY_NOTES_ENABLED', sys_guid(),0,'CONFG','false','Flag to enable copying of notes values for an IRB Protocol when the protocol is copied','A','KUALI');

-- add feature to enable copy attachments for IRB protocol : RES-484
INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PROTOCOL','Document','ARIAH_IRB_PROTOCOL_COPY_ATTACHMENTS_ENABLED', sys_guid(),0,'CONFG','false','Flag to enable copying of attachments values for an IRB Protocol when the protocol is copied','A','KUALI');


INSERT INTO krcr_parm_t (NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID) 
VALUES  ('KC-PROTOCOL','Document','ARIAH_IRB_PROTOCOL_SEARCH_REQUIRE_FIELD_ENABLED', sys_guid(),0,'CONFG','false','If true, then when using the IRB Protocol search a user must enter a value for at least one of the search fields. If false they can search without entering any search fields.','A','KUALI');

commit;
exit
