ALTER TABLE KRIM_ENTITY_PHONE_T DISABLE CONSTRAINT KRIM_ENTITY_PHONE_TR2;

DELETE FROM KRIM_PHONE_TYP_T WHERE PHONE_TYP_CD = 'FAX';

-- Copied from rice-1.0.3.2\scripts\upgrades\1.0.3 to 1.0.4\db-updates\oracle\2011-04-13.sql (and corrected)
INSERT INTO KRIM_PHONE_TYP_T (ACTV_IND,DISPLAY_SORT_CD,OBJ_ID,PHONE_TYP_CD,PHONE_TYP_NM,VER_NBR) 
    VALUES ('Y','e','5B97C50B03946110E0404F8189D85213','FAX','Facsimile',1);

ALTER TABLE KRIM_ENTITY_PHONE_T ENABLE CONSTRAINT KRIM_ENTITY_PHONE_TR2;