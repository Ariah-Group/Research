DELIMITER /
CREATE TABLE IACUC_LOCATION_TYPE ( 
    LOCATION_TYPE_CODE DECIMAL(3,0) NOT NULL, 
    LOCATION VARCHAR(200) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR(60) NOT NULL, 
    VER_NBR DECIMAL(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR(36) NOT NULL) 
/


ALTER TABLE IACUC_LOCATION_TYPE 
ADD CONSTRAINT PK_IACUC_LOCATION_TYPE 
PRIMARY KEY (LOCATION_TYPE_CODE) 
/


DELIMITER ;
