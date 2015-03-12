DELIMITER /
CREATE TABLE IACUC_PAIN_CATEGORY ( 
    PAIN_CATEGORY_CODE DECIMAL(3,0) NOT NULL, 
    PAIN_CATEGORY VARCHAR(200) NOT NULL, 
    ACTIVE_FLAG CHAR(1) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR(60) NOT NULL, 
    VER_NBR DECIMAL(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR(36) NOT NULL) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


ALTER TABLE IACUC_PAIN_CATEGORY 
ADD CONSTRAINT PK_IACUC_PAIN_CATEGORY 
PRIMARY KEY (PAIN_CATEGORY_CODE) 
/

DELIMITER ;
