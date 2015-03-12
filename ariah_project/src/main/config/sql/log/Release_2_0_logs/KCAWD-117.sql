CREATE TABLE AWARD_AMT_FNA_DISTRIBUTION ( 
	AWARD_AMT_FNA_DISTRIBUTION_ID		NUMBER(8,0),
    AWARD_ID       						NUMBER,
    AWARD_NUMBER						VARCHAR2(10),
    SEQUENCE_NUMBER        				NUMBER(8,0),
    AMOUNT_SEQUENCE_NUMBER				NUMBER(4,0),
    BUDGET_PERIOD            			NUMBER(3,0),
    START_DATE							DATE,
    END_DATE 							DATE,
    DIRECT_COST         				NUMBER(12,2),
    INDIRECT_COST		    			NUMBER(12,2),
    UPDATE_TIMESTAMP       				DATE,
    UPDATE_USER            				VARCHAR2(60),
    VER_NBR 							NUMBER(8,0) DEFAULT 1,
	OBJ_ID 								VARCHAR2(36) DEFAULT SYS_GUID()
);

CREATE SEQUENCE SEQ_AWARD_AMT_FNA_DSTRBTN_ID START WITH 1 MAXVALUE 99999999 MINVALUE 1 NOCYCLE NOCACHE NOORDER;

alter table AWARD_AMT_FNA_DISTRIBUTION ADD CONSTRAINT PK_AWARD_AMT_FNA_DISTRIBUTION PRIMARY KEY(AWARD_AMT_FNA_DISTRIBUTION_ID) ENABLE;
alter table AWARD_AMT_FNA_DISTRIBUTION ADD CONSTRAINT U_AWARD_AMT_FNA_DISTRIBUTION UNIQUE(AWARD_NUMBER,SEQUENCE_NUMBER,BUDGET_PERIOD) ENABLE;

CREATE OR REPLACE VIEW OSP$AWARD_AMT_FNA_DISTRIBUTION AS SELECT 
	AWARD_NUMBER MIT_AWARD_NUMBER, 
	SEQUENCE_NUMBER SEQUENCE_NUMBER,
	AMOUNT_SEQUENCE_NUMBER AMOUNT_SEQUENCE_NUMBER,
	BUDGET_PERIOD BUDGET_PERIOD,
	START_DATE START_DATE, 
	END_DATE END_DATE,
	DIRECT_COST DIRECT_COST, 
	INDIRECT_COST INDIRECT_COST, 
	UPDATE_TIMESTAMP UPDATE_TIMESTAMP, 
	UPDATE_USER UPDATE_USER
FROM AWARD_AMT_FNA_DISTRIBUTION;

commit;