-- Add columns to tables
ALTER TABLE UNIT ADD CAMPUS_CODE VARCHAR2(2);

ALTER TABLE YNQ ADD CAMPUS_CODE VARCHAR2(2);

-- Add to Demo data
UPDATE UNIT SET CAMPUS_CODE = 'BL' WHERE UNIT_NUMBER = 'BL-BL';
UPDATE UNIT SET CAMPUS_CODE = 'BL' WHERE UNIT_NUMBER = 'BL-IIDC';
UPDATE UNIT SET CAMPUS_CODE = 'BL' WHERE UNIT_NUMBER = 'BL-RCEN';
UPDATE UNIT SET CAMPUS_CODE = 'BL' WHERE UNIT_NUMBER = 'BL-RUGS';
UPDATE UNIT SET CAMPUS_CODE = 'IN' WHERE UNIT_NUMBER = 'IN-CARD';
UPDATE UNIT SET CAMPUS_CODE = 'IN' WHERE UNIT_NUMBER = 'IN-CARR';
UPDATE UNIT SET CAMPUS_CODE = 'IN' WHERE UNIT_NUMBER = 'IN-IN';
UPDATE UNIT SET CAMPUS_CODE = 'IN' WHERE UNIT_NUMBER = 'IN-MDEP';
UPDATE UNIT SET CAMPUS_CODE = 'IN' WHERE UNIT_NUMBER = 'IN-MED';
UPDATE UNIT SET CAMPUS_CODE = 'IN' WHERE UNIT_NUMBER = 'IN-PED';
UPDATE UNIT SET CAMPUS_CODE = 'IN' WHERE UNIT_NUMBER = 'IN-PERS';

UPDATE YNQ SET CAMPUS_CODE = 'BL' WHERE QUESTION_ID = 'C1';
UPDATE YNQ SET CAMPUS_CODE = 'BL' WHERE QUESTION_ID = 'C2';
UPDATE YNQ SET CAMPUS_CODE = 'BL' WHERE QUESTION_ID = 'C3';
UPDATE YNQ SET CAMPUS_CODE = 'BL' WHERE QUESTION_ID = 'C4';
UPDATE YNQ SET CAMPUS_CODE = 'BL' WHERE QUESTION_ID = 'C5';
UPDATE YNQ SET CAMPUS_CODE = 'BL' WHERE QUESTION_ID = 'C6';
UPDATE YNQ SET CAMPUS_CODE = 'BL' WHERE QUESTION_ID = 'C7';
UPDATE YNQ SET CAMPUS_CODE = 'BL' WHERE QUESTION_ID = 'C8';
UPDATE YNQ SET CAMPUS_CODE = 'BL' WHERE QUESTION_ID = 'EO';
UPDATE YNQ SET CAMPUS_CODE = 'BL' WHERE QUESTION_ID = 'NR';
UPDATE YNQ SET CAMPUS_CODE = 'BL' WHERE QUESTION_ID = 'P002';
UPDATE YNQ SET CAMPUS_CODE = 'BL' WHERE QUESTION_ID = 'P003';
UPDATE YNQ SET CAMPUS_CODE = 'BL' WHERE QUESTION_ID = 'P007';
UPDATE YNQ SET CAMPUS_CODE = 'BL' WHERE QUESTION_ID = 'P008';
UPDATE YNQ SET CAMPUS_CODE = 'BL' WHERE QUESTION_ID = 'P1';
UPDATE YNQ SET CAMPUS_CODE = 'BL' WHERE QUESTION_ID = 'P2';
UPDATE YNQ SET CAMPUS_CODE = 'BL' WHERE QUESTION_ID = 'P3';
UPDATE YNQ SET CAMPUS_CODE = 'BL' WHERE QUESTION_ID = 'P4';
UPDATE YNQ SET CAMPUS_CODE = 'BL' WHERE QUESTION_ID = 'P5';

INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='quickstart' AND LAST_NM='quickstart'), 'STAFF', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='Joe' AND LAST_NM='Tester'), 'STAFF', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='KULUSER' AND LAST_NM='KULUSER'), 'STAFF', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='Nicholas' AND LAST_NM='Majors'), 'STAFF', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='Inez' AND LAST_NM='Chew'), 'STAFF', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='Della' AND LAST_NM='Woods'), 'STAFF', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='Opal' AND LAST_NM='Blood'), 'RSRCH_STAFF', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='Allyson' AND LAST_NM='Cate'), 'MED_STAFF', 'IN', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='JAY' AND LAST_NM='HOULIHAN'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='RAYMOND' AND LAST_NM='PAULIN'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='DOMINIC' AND LAST_NM='NUGENT'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='MARLON' AND LAST_NM='SHORTER'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='MARGUERITE' AND LAST_NM='UNDERWOOD'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='HIRAM' AND LAST_NM='EUBANK'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='LLOYD' AND LAST_NM='BARGER'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='JUANA' AND LAST_NM='KAHLER'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='ELBA' AND LAST_NM='BYLER'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='ALAN' AND LAST_NM='MCAFEE'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='HENRY' AND LAST_NM='WESTFALL'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='BURT' AND LAST_NM='SHANKLE'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='ROBERTA' AND LAST_NM='FERLAND'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)  
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='KENDRICK' AND LAST_NM='CRABTREE'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='OLIVE' AND LAST_NM='FELKER'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='AUDREY' AND LAST_NM='MARTIN'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='EVERETTE' AND LAST_NM='STERNER'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='CORINA' AND LAST_NM='BAYLESS'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='THEODORE' AND LAST_NM='KATO'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='CLAUDIA' AND LAST_NM='HOVIS'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='RAFAEL' AND LAST_NM='MCINTYRE'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='EMORY' AND LAST_NM='EAGLE'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='MITZI' AND LAST_NM='POND'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='ANGELICA' AND LAST_NM='FLAHERTY'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='MASON' AND LAST_NM='KOSS'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='ORA' AND LAST_NM='MCEACHERN'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='WM' AND LAST_NM='ACUNA'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='MARITZA' AND LAST_NM='SCHULTE'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='OLIVER' AND LAST_NM='DEVRIES'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='DARREN' AND LAST_NM='DEVANEY'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='PAULETTE' AND LAST_NM='SMOCK'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='LOGAN' AND LAST_NM='CLINKSCALES'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='ANTWAN' AND LAST_NM='BRUNELLE'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='CONCETTA' AND LAST_NM='BERNAL'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='BARBRA' AND LAST_NM='BORST'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='WALLACE' AND LAST_NM='SOILEAU'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='ALTHEA' AND LAST_NM='BURD'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='LOUELLA' AND LAST_NM='ENGEL'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='FAYE' AND LAST_NM='HEADLEY'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='RONDA' AND LAST_NM='GAILEY'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='IVAN' AND LAST_NM='SHIELDS'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='OLIVER' AND LAST_NM='ELGIN'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='BEATRIZ' AND LAST_NM='BOMAN'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='TREVOR' AND LAST_NM='DUGGINS'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='KELLY' AND LAST_NM='OWENS'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='NOELLE' AND LAST_NM='DARR'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='CECILE' AND LAST_NM='CARY'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='CHARITY' AND LAST_NM='MCBEE'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='DAMON' AND LAST_NM='RALSTON'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());
  
INSERT INTO KRIM_ENTITY_AFLTN_T (ENTITY_AFLTN_ID, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND, LAST_UPDT_DT, VER_NBR, OBJ_ID)   
  VALUES (KRIM_ENTITY_AFLTN_ID_S.NEXTVAL, (SELECT ENTITY_ID FROM KRIM_ENTITY_NM_T WHERE FIRST_NM='MERRILL' AND LAST_NM='MARTIN'), 'FCLTY', 'BL', 'Y', 'Y', SYSDATE, 1, SYS_GUID());

COMMIT;