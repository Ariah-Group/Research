/* Table Script */ 
CREATE TABLE AWARD_IDC_RATE ( 
	AWARD_IDC_RATE_ID NUMBER(12,0) NOT NULL, 
	AWARD_ID NUMBER(22,0) NOT NULL,	 	
	APPLICABLE_IDC_RATE NUMBER(5,2) NOT NULL, 
	IDC_RATE_TYPE_CODE NUMBER(3,0) NOT NULL, 
	FISCAL_YEAR VARCHAR2(4) NOT NULL, 
	ON_CAMPUS_FLAG VARCHAR2(1) NOT NULL, 
	UNDERRECOVERY_OF_IDC NUMBER(12,2), 
	SOURCE_ACCOUNT VARCHAR2(7) NOT NULL, 
	DESTINATION_ACCOUNT VARCHAR2(7) NOT NULL, 
	START_DATE DATE NOT NULL, 
	END_DATE DATE, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL,
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL);
/* Primary Key Constraint */ 
ALTER TABLE AWARD_IDC_RATE 
ADD CONSTRAINT PK_AWARD_IDC_RATE 
PRIMARY KEY (AWARD_IDC_RATE_ID);
/* Foreign Key Constraint(s) */ 
ALTER TABLE AWARD_IDC_RATE
ADD CONSTRAINT FK_AWARD_IDC_RATE 
FOREIGN KEY (AWARD_ID) 
REFERENCES AWARD (AWARD_ID);
COMMIT;