INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000002'),'IN-CARD','Y','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000004'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000031'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00002' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000002'),'IN-CARD','Y','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00002' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000004'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00002' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000031'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00003' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000002'),'IN-CARD','Y','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00003' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000004'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00003' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000031'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00004' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000002'),'IN-CARD','Y','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00004' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000004'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00004' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000031'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00004' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000002'),'IN-CARD','Y','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00004' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000004'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00004' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000031'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00005' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000002'),'IN-CARD','Y','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00005' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000004'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00005' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000031'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00006' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000002'),'IN-CARD','Y','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00006' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000004'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00006' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000031'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00007' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000002'),'IN-CARD','Y','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00007' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000004'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00007' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000031'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00008' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000002'),'IN-CARD','Y','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00008' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000004'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00008' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000031'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00006' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000002'),'IN-CARD','Y','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00006' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000004'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00006' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000031'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00007' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000002'),'IN-CARD','Y','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00007' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000004'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00007' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000031'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00008' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000002'),'IN-CARD','Y','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00008' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000004'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00008' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000031'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00009' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000002'),'IN-CARD','Y','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00009' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000004'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00009' AND SEQUENCE_NUMBER = '1') AND PERSON_ID = '10000000031'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000002'),'IN-CARD','Y','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000004'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000031'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00002' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000002'),'IN-CARD','Y','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00002' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000004'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00002' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000031'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00009' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000002'),'IN-CARD','Y','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00009' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000004'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00009' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000031'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00003' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000002'),'IN-CARD','Y','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00003' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000004'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00003' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000031'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00004' AND SEQUENCE_NUMBER = '3') AND PERSON_ID = '10000000002'),'IN-CARD','Y','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00004' AND SEQUENCE_NUMBER = '3') AND PERSON_ID = '10000000004'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00004' AND SEQUENCE_NUMBER = '3') AND PERSON_ID = '10000000031'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00005' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000002'),'IN-CARD','Y','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00005' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000004'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00005' AND SEQUENCE_NUMBER = '2') AND PERSON_ID = '10000000031'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00006' AND SEQUENCE_NUMBER = '3') AND PERSON_ID = '10000000002'),'IN-CARD','Y','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00006' AND SEQUENCE_NUMBER = '3') AND PERSON_ID = '10000000004'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00006' AND SEQUENCE_NUMBER = '3') AND PERSON_ID = '10000000031'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00007' AND SEQUENCE_NUMBER = '3') AND PERSON_ID = '10000000002'),'IN-CARD','Y','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00007' AND SEQUENCE_NUMBER = '3') AND PERSON_ID = '10000000004'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00007' AND SEQUENCE_NUMBER = '3') AND PERSON_ID = '10000000031'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = '3') AND PERSON_ID = '10000000002'),'IN-CARD','Y','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = '3') AND PERSON_ID = '10000000004'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
INSERT INTO AWARD_PERSON_UNITS (AWARD_PERSON_UNIT_ID,AWARD_PERSON_ID,UNIT_NUMBER,LEAD_UNIT_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQUENCE_AWARD_ID.NEXTVAL,(SELECT AWARD_PERSON_ID FROM AWARD_PERSONS WHERE AWARD_ID = (SELECT AWARD_ID FROM AWARD WHERE AWARD_NUMBER = '001002-00001' AND SEQUENCE_NUMBER = '3') AND PERSON_ID = '10000000031'),'IN-CARD','N','quickstart',SYSDATE,SYS_GUID(),0)
/
