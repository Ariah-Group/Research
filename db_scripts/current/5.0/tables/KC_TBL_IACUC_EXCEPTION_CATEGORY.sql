CREATE TABLE IACUC_EXCEPTION_CATEGORY ( 
    EXCEPTION_CATEGORY_CODE NUMBER(3,0) NOT NULL, 
    EXCEPTION_CATEGORY_DESC VARCHAR2(200) NOT NULL, 
    ACTIVE_FLAG CHAR(1) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) NOT NULL) 
/


ALTER TABLE IACUC_EXCEPTION_CATEGORY 
ADD CONSTRAINT PK_IACUC_EXCEPTION_CATEGORY 
PRIMARY KEY (EXCEPTION_CATEGORY_CODE) 
/

