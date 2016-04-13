set define off
set sqlblanklines on
spool KR-RELEASE-5_4_0-Upgrade-ORACLE-Install.log



-- RES-559
Insert into KRCR_CMPNT_T (NMSPC_CD,CMPNT_CD,OBJ_ID,VER_NBR,NM,ACTV_IND) values ('KC-IDM','All',SYS_GUID(),1,'All','Y');

-- RES-600
update KRCR_PARM_T set VAL='Summary' where PARM_NM='proposaldevelopment.approver.view.title' AND VAL='Proposal Summary'

commit;
exit
