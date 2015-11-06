set define off
set sqlblanklines on
spool KR-RELEASE-5_3_5-Upgrade-ORACLE-Install.log



-- ensure ADMIN user can create and manage negotiation records
Insert into KRIM_ROLE_MBR_T (ROLE_MBR_ID,VER_NBR,OBJ_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,ACTV_FRM_DT,ACTV_TO_DT,LAST_UPDT_DT) 
values (KRIM_ROLE_MBR_ID_S.nextval,1,SYS_GUID(), (select ROLE_ID FROM KRIM_ROLE_T where ROLE_NM='Negotiation Administrator') ,'admin','P',null,null,SYSDATE);

commit;
exit
