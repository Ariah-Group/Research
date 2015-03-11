CREATE TABLE RISK_LEVEL ( 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	RISK_LEVEL_CODE NUMBER(3,0) NOT NULL, 
	DESCRIPTION VARCHAR2(200), 
	UPDATE_TIMESTAMP DATE, 
	UPDATE_USER VARCHAR2(60));
ALTER TABLE RISK_LEVEL 
ADD CONSTRAINT PK_RISK_LEVEL 
PRIMARY KEY (RISK_LEVEL_CODE);
CREATE TABLE PROTOCOL_RISK_LEVELS ( 
	PROTOCOL_RISK_LEVELS_ID NUMBER(12,0) NOT NULL, 
	PROTOCOL_ID NUMBER(12,0) NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	PROTOCOL_NUMBER VARCHAR2(20) NOT NULL, 
	SEQUENCE_NUMBER NUMBER(4,0) NOT NULL, 
	RISK_LEVEL_CODE NUMBER(3,0) NOT NULL, 
	COMMENTS VARCHAR2(2000), 
	DATE_ASSIGNED DATE NOT NULL, 
	DATE_UPDATED DATE, 
	STATUS CHAR(1) NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL);
ALTER TABLE PROTOCOL_RISK_LEVELS 
ADD CONSTRAINT PK_PROTOCOL_RISK_LEVELS 
PRIMARY KEY (PROTOCOL_RISK_LEVELS_ID);
ALTER TABLE PROTOCOL_RISK_LEVELS 
ADD CONSTRAINT UQ_PROTOCOL_RISK_LEVELS 
UNIQUE (PROTOCOL_NUMBER, SEQUENCE_NUMBER, RISK_LEVEL_CODE);
ALTER TABLE PROTOCOL_RISK_LEVELS 
ADD CONSTRAINT FK_PROTOCOL_RISK_LEVELS 
FOREIGN KEY (PROTOCOL_ID) 
REFERENCES PROTOCOL (PROTOCOL_ID);
ALTER TABLE PROTOCOL_RISK_LEVELS 
ADD CONSTRAINT FK_PROTOCOL_RISK_LEVELS2 
FOREIGN KEY (RISK_LEVEL_CODE) 
REFERENCES RISK_LEVEL (RISK_LEVEL_CODE);
INSERT INTO FP_DOC_TYPE_T (FDOC_TYP_CD,FDOC_NM,FDOC_TYP_ACTIVE_CD) VALUES ('RISK','RISK LEVEL','Y');
commit;