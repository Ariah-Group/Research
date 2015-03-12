INSERT INTO KRIM_PERM_T(PERM_ID,OBJ_ID,VER_NBR,PERM_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND) VALUES(KRIM_PERM_ID_BS_S.NEXTVAL,SYS_GUID(),'1',(SELECT PERM_TMPL_ID from KRIM_PERM_TMPL_T WHERE NMSPC_CD='KR-NS' AND NM='Full Unmask Field'),'KC-SYS','View Active Protocol Types','Can view all active protocol types','Y')
/
commit
/
INSERT INTO KRIM_ROLE_PERM_T(ROLE_PERM_ID,OBJ_ID,VER_NBR,ROLE_ID,PERM_ID,ACTV_IND) VALUES(KRIM_ROLE_PERM_ID_BS_S.NEXTVAL,SYS_GUID(),'1',(SELECT ROLE_ID FROM KRIM_ROLE_T RT WHERE RT.ROLE_NM = 'IRB Administrator'),(SELECT PERM_ID FROM KRIM_PERM_T PT WHERE PT.NM = 'View Active Protocol Types' AND PT.NMSPC_CD = 'KC-SYS'),'Y')
/
commit
/
