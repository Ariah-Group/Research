set define off
set sqlblanklines on
spool AR-RELEASE-5_4_0-Upgrade-ORACLE-Install.log

-- change TBN.TBN_ID from VARCHAR to NUMBER
alter table TBN add TBN_ID_2 NUMBER;
update TBN set TBN_ID_2 = TO_NUMBER(TBN_ID);
ALTER TABLE    TBN drop constraint    TBNP1;
update TBN set TBN_ID = null;
alter table TBN modify (TBN_ID NUMBER);
update TBN set TBN_ID = TBN_ID_2;
alter table TBN ADD CONSTRAINT PK_TBNID PRIMARY KEY (TBN_ID);
alter table TBN drop column TBN_ID_2;

-- change BUDGET_PERSONS.TBN_ID from VARCHAR to NUMBER
alter table BUDGET_PERSONS add TBN_ID_2 NUMBER;
update BUDGET_PERSONS set TBN_ID_2 = TO_NUMBER(TBN_ID);
update BUDGET_PERSONS set TBN_ID = null;
alter table BUDGET_PERSONS modify (TBN_ID NUMBER);
update BUDGET_PERSONS set TBN_ID = TBN_ID_2;
alter table BUDGET_PERSONS drop column TBN_ID_2;


-- RES-583
CREATE INDEX "IX_AWARD_SPONSORCODE" ON "AWARD" ("SPONSOR_CODE");
CREATE INDEX "IX_AWARD_STATUSCODE" ON "AWARD" ("STATUS_CODE") ;
CREATE INDEX "IX_AWARD_UNITNUM" ON "AWARD" ("LEAD_UNIT_NUMBER");
CREATE INDEX "IX_AWARD_TRANSTYPECODE" ON "AWARD" ("TRANSACTION_TYPE_CODE");
CREATE INDEX "IX_AWARD_ACTTYPECODE" ON "AWARD" ("ACTIVITY_TYPE_CODE");
CREATE INDEX "IX_AWARD_AWARDTYPECODE" ON "AWARD" ("AWARD_TYPE_CODE");
CREATE INDEX "IX_AWARD_PRIMESPONSOR" ON "AWARD" ("PRIME_SPONSOR_CODE");
CREATE INDEX "IX_AWARD_METHPAYCODE" ON "AWARD" ("METHOD_OF_PAYMENT_CODE");
CREATE INDEX "IX_AWARD_PROCPRIORCODE" ON "AWARD" ("PROCUREMENT_PRIORITY_CODE");
CREATE INDEX "IX_AWARD_BASISPAYCODE" ON "AWARD" ("BASIS_OF_PAYMENT_CODE");
CREATE INDEX "IX_AWARD_TEMPLATECODE" ON "AWARD" ("TEMPLATE_CODE");
CREATE INDEX "IX_AWARD_NSFCODE" ON "AWARD" ("NSF_CODE");
CREATE INDEX "IX_AWARD_ACCOUNTCODE" ON "AWARD" ("ACCOUNT_TYPE_CODE");
CREATE INDEX "IX_AWARD_FINCHARTSCODE" ON "AWARD" ("FIN_CHART_OF_ACCOUNTS_CODE");

-- RES-584
CREATE INDEX "IX_AWARDCOM_TYPECODE" ON "AWARD_COMMENT" ("COMMENT_TYPE_CODE");

-- RES-585
CREATE INDEX "IX_AWDREPTRMS_REPCLASSCODE" ON "AWARD_REPORT_TERMS" ("REPORT_CLASS_CODE");
CREATE INDEX "IX_AWDREPTRMS_REPCODE" ON "AWARD_REPORT_TERMS" ("REPORT_CODE");
CREATE INDEX "IX_AWDREPTRMS_FREQCODE" ON "AWARD_REPORT_TERMS" ("FREQUENCY_CODE");
CREATE INDEX "IX_AWDREPTRMS_FREQBASECODE" ON "AWARD_REPORT_TERMS" ("FREQUENCY_BASE_CODE");
CREATE INDEX "IX_AWDREPTRMS_OSPDISTCODE" ON "AWARD_REPORT_TERMS" ("OSP_DISTRIBUTION_CODE");


-- RES-586
CREATE INDEX "IX_AWDREPTRK_01" ON "AWARD_REPORT_TRACKING" ("AWARD_REPORT_TERM_ID");
CREATE INDEX "IX_AWDREPTRK_02" ON "AWARD_REPORT_TRACKING" ("AWARD_NUMBER");
CREATE INDEX "IX_AWDREPTRK_03" ON "AWARD_REPORT_TRACKING" ("PI_PERSON_ID");
CREATE INDEX "IX_AWDREPTRK_04" ON "AWARD_REPORT_TRACKING" ("PI_ROLODEX_ID");
CREATE INDEX "IX_AWDREPTRK_05" ON "AWARD_REPORT_TRACKING" ("LEAD_UNIT_NUMBER");
CREATE INDEX "IX_AWDREPTRK_06" ON "AWARD_REPORT_TRACKING" ("REPORT_CLASS_CODE");
CREATE INDEX "IX_AWDREPTRK_07" ON "AWARD_REPORT_TRACKING" ("REPORT_CODE");
CREATE INDEX "IX_AWDREPTRK_08" ON "AWARD_REPORT_TRACKING" ("FREQUENCY_CODE");
CREATE INDEX "IX_AWDREPTRK_09" ON "AWARD_REPORT_TRACKING" ("FREQUENCY_BASE_CODE");
CREATE INDEX "IX_AWDREPTRK_10" ON "AWARD_REPORT_TRACKING" ("OSP_DISTRIBUTION_CODE");
CREATE INDEX "IX_AWDREPTRK_11" ON "AWARD_REPORT_TRACKING" ("STATUS_CODE");
CREATE INDEX "IX_AWDREPTRK_12" ON "AWARD_REPORT_TRACKING" ("SPONSOR_CODE");
CREATE INDEX "IX_AWDREPTRK_13" ON "AWARD_REPORT_TRACKING" ("SPONSOR_AWARD_NUMBER");

-- RES-587
CREATE INDEX "IX_AWDSPONCON_01" ON "AWARD_SPONSOR_CONTACTS" ("AWARD_ID");
CREATE INDEX "IX_AWDSPONCON_02" ON "AWARD_SPONSOR_CONTACTS" ("AWARD_NUMBER","SEQUENCE_NUMBER");
CREATE INDEX "IX_AWDSPONCON_03" ON "AWARD_SPONSOR_CONTACTS" ("ROLODEX_ID");
CREATE INDEX "IX_AWDSPONCON_04" ON "AWARD_SPONSOR_CONTACTS" ("CONTACT_ROLE_CODE");


-- RES-588
CREATE INDEX "IX_AWDUNITCONTACTS_01" ON "AWARD_UNIT_CONTACTS" ("AWARD_ID");
CREATE INDEX "IX_AWDUNITCONTACTS_02" ON "AWARD_UNIT_CONTACTS" ("AWARD_NUMBER","SEQUENCE_NUMBER");
CREATE INDEX "IX_AWDUNITCONTACTS_03" ON "AWARD_UNIT_CONTACTS" ("PERSON_ID");
CREATE INDEX "IX_AWDUNITCONTACTS_04" ON "AWARD_UNIT_CONTACTS" ("UNIT_ADMINISTRATOR_TYPE_CODE");
CREATE INDEX "IX_AWDUNITCONTACTS_05" ON "AWARD_UNIT_CONTACTS" ("UNIT_ADMINISTRATOR_UNIT_NUMBER");

-- RES-589
CREATE INDEX "IX_AWDSPONTERM_02" ON "AWARD_SPONSOR_TERM" ("AWARD_NUMBER","SEQUENCE_NUMBER");

-- RES-590
CREATE INDEX "IX_AWDAMTINFO_01" ON "AWARD_AMOUNT_INFO" ("TNM_DOCUMENT_NUMBER");

-- RES-591
CREATE INDEX "IX_AWDHIER_01" ON "AWARD_HIERARCHY" ("AWARD_NUMBER","ACTIVE");
CREATE INDEX "IX_AWDHIER_02" ON "AWARD_HIERARCHY" ("ROOT_AWARD_NUMBER","ACTIVE");

-- RES-592
CREATE INDEX "IX_AWDPERUNITS_AWDPERSID" ON "AWARD_PERSON_UNITS" ("AWARD_PERSON_ID");
CREATE INDEX "IX_AWDPERUNITS_UNITNUM" ON "AWARD_PERSON_UNITS" ("UNIT_NUMBER");


 -- RES-514
  CREATE TABLE "PROTOCOL_KEYWORD" 
   (	"PROTOCOL_KEYWORD_ID" NUMBER(12,0), 
	"PROTOCOL_ID" NUMBER(22,0) NOT NULL ENABLE, 
	"VER_NBR" NUMBER(8,0) DEFAULT 1 NOT NULL ENABLE, 
	"KEYWORD_CODE" VARCHAR2(15 BYTE) NOT NULL ENABLE, 
	"UPDATE_TIMESTAMP" DATE NOT NULL ENABLE, 
	"UPDATE_USER" VARCHAR2(60 BYTE) NOT NULL ENABLE, 
	"OBJ_ID" VARCHAR2(36 BYTE) NOT NULL ENABLE, 
	 CONSTRAINT "PROTOCOL_KEYWORDP1" PRIMARY KEY ("PROTOCOL_KEYWORD_ID")
  USING INDEX COMPUTE STATISTICS  ENABLE, 
	 CONSTRAINT "FK_PROTOCOL_KEYWORD2" FOREIGN KEY ("KEYWORD_CODE")
	  REFERENCES "SCIENCE_KEYWORD" ("SCIENCE_KEYWORD_CODE") ENABLE, 
	 CONSTRAINT "FK_PROTOCOL_KEYWORD" FOREIGN KEY ("PROTOCOL_ID")
	  REFERENCES "PROTOCOL" ("PROTOCOL_ID") ENABLE
   );

  CREATE INDEX "IX_PROTOCOL_KEY_PROT_ID" ON "PROTOCOL_KEYWORD" ("PROTOCOL_ID") COMPUTE STATISTICS; 


  CREATE SEQUENCE "SEQ_PROTOCOL_KEYWORD_ID"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE;



-- RES-515

  CREATE TABLE "IACUC_PROTOCOL_KEYWORD" 
   (	"IACUC_PROTOCOL_KEYWORD_ID" NUMBER(12,0), 
	"IACUC_PROTOCOL_ID" NUMBER(22,0) NOT NULL ENABLE, 
	"VER_NBR" NUMBER(8,0) DEFAULT 1 NOT NULL ENABLE, 
	"KEYWORD_CODE" VARCHAR2(15 BYTE) NOT NULL ENABLE, 
	"UPDATE_TIMESTAMP" DATE NOT NULL ENABLE, 
	"UPDATE_USER" VARCHAR2(60 BYTE) NOT NULL ENABLE, 
	"OBJ_ID" VARCHAR2(36 BYTE) NOT NULL ENABLE, 
	 CONSTRAINT "IACUC_PROTOCOL_KEYWORDP1" PRIMARY KEY ("IACUC_PROTOCOL_KEYWORD_ID")
  USING INDEX COMPUTE STATISTICS  ENABLE, 
	 CONSTRAINT "FK_IACUC_PROTOCOL_KEYWORD2" FOREIGN KEY ("KEYWORD_CODE")
	  REFERENCES "SCIENCE_KEYWORD" ("SCIENCE_KEYWORD_CODE") ENABLE, 
	 CONSTRAINT "FK_IACUC_PROTOCOL_KEYWORD" FOREIGN KEY ("IACUC_PROTOCOL_ID")
	  REFERENCES "IACUC_PROTOCOL" ("PROTOCOL_ID") ENABLE
   );

  CREATE INDEX "IX_IACUC_PROTOCOL_KEY_PROT_ID" ON "IACUC_PROTOCOL_KEYWORD" ("IACUC_PROTOCOL_ID") COMPUTE STATISTICS; 


  CREATE SEQUENCE "SEQ_IACUC_PROTOCOL_KEYWORD_ID"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE;


 -- RES-548
update NARRATIVE_TYPE set DESCRIPTION='Project Summary' where DESCRIPTION='ProjectSummary';
update NARRATIVE_TYPE set DESCRIPTION='Budget Justification' where DESCRIPTION='BudgetJustification';
update NARRATIVE_TYPE set DESCRIPTION='Subaward Budget' where DESCRIPTION='SubawardBudget';
update NARRATIVE_TYPE set DESCRIPTION='Table of Contents' where DESCRIPTION='TableofContents';
update NARRATIVE_TYPE set DESCRIPTION='Supplementary Documentation' where DESCRIPTION='SupplementaryDocumentation';
update NARRATIVE_TYPE set DESCRIPTION='Additional Congressional Districts' where DESCRIPTION='AdditionalCongressionalDistricts';
update NARRATIVE_TYPE set DESCRIPTION='Personal Data' where DESCRIPTION='PersonalData';
update NARRATIVE_TYPE set DESCRIPTION='Additional Equipment' where DESCRIPTION='Additionalequipment';
update NARRATIVE_TYPE set DESCRIPTION='Additional Key Persons' where DESCRIPTION='Additionalkeypersons';
update NARRATIVE_TYPE set DESCRIPTION='Current Pending' where DESCRIPTION='CurrentPending';

-- RES-647
alter table COI_DISCL_PROJECTS MODIFY COI_PROJECT_TITLE VARCHAR2(2000);

-- RES-648
alter table AWARD_TEMPLATE disable constraint FK_AWARD_TEMPLATE_SPONSOR;
alter table NEGOTIATION_UNASSOC_DETAIL disable constraint NEGOTIATION_UNASSOC_DETAIL_FK3;
alter table NEGOTIATION_UNASSOC_DETAIL disable constraint NEGOTIATION_UNASSOC_DETAIL_FK4;
alter table PROPOSAL disable constraint FK_PROPOSAL_SPONSOR_CODE;
alter table SPONSOR_HIERARCHY disable constraint FK_SPONSOR_HIERARCHY_KRA;
alter table SPONSOR_FORMS disable constraint FK_SPONSOR_FORMS;
alter table SPONSOR_FORMS disable constraint SPONSOR_FORMSU1;
alter table AWARD_TRANSFERRING_SPONSOR disable constraint FK2_AWARD_TRANSFERRING_SPONSOR;

alter table AWARD_REPORT_TRACKING MODIFY SPONSOR_CODE VARCHAR2(12);
alter table SPONSOR_HIERARCHY_MT MODIFY SPONSOR_CODE VARCHAR2(12);
alter table PERSON_FIN_INT_DISCLOSURE MODIFY SPONSOR_CODE VARCHAR2(12);
alter table ROLODEX MODIFY SPONSOR_CODE VARCHAR2(12);
alter table PROPOSAL_LOG MODIFY SPONSOR_CODE VARCHAR2(12);
alter table EPS_PROPOSAL MODIFY SPONSOR_CODE VARCHAR2(12);
alter table EPS_PROPOSAL MODIFY PRIME_SPONSOR_CODE VARCHAR2(12);
alter table AWARD MODIFY SPONSOR_CODE VARCHAR2(12);
alter table AWARD MODIFY PRIME_SPONSOR_CODE VARCHAR2(12);

alter table NEGOTIATION_UNASSOC_DETAIL drop constraint "NEGOTIATION_UNASSOC_DETAIL_FK3";
alter table NEGOTIATION_UNASSOC_DETAIL drop constraint "NEGOTIATION_UNASSOC_DETAIL_FK4";
alter table NEGOTIATION_UNASSOC_DETAIL MODIFY SPONSOR_CODE VARCHAR2(12);
alter table NEGOTIATION_UNASSOC_DETAIL MODIFY PRIME_SPONSOR_CODE VARCHAR2(12);

alter table AWARD_TRANSFERRING_SPONSOR drop constraint "FK2_AWARD_TRANSFERRING_SPONSOR";
alter table AWARD_TRANSFERRING_SPONSOR MODIFY SPONSOR_CODE VARCHAR2(12);

alter table AWARD_TEMPLATE drop CONSTRAINT "FK_AWARD_TEMPLATE_SPONSOR";
alter table AWARD_TEMPLATE MODIFY PRIME_SPONSOR_CODE VARCHAR2(12);

alter table PROPOSAL drop CONSTRAINT "FK_PROPOSAL_SPONSOR_CODE";
alter table PROPOSAL MODIFY SPONSOR_CODE VARCHAR2(12);
alter table PROPOSAL MODIFY PRIME_SPONSOR_CODE VARCHAR2(12);

alter table SPONSOR_HIERARCHY drop CONSTRAINT "FK_SPONSOR_HIERARCHY_KRA";
alter table SPONSOR_HIERARCHY MODIFY SPONSOR_CODE VARCHAR2(12);

alter table SPONSOR_FORMS drop CONSTRAINT "FK_SPONSOR_FORMS";
alter table SPONSOR_FORMS MODIFY SPONSOR_CODE VARCHAR2(12);

alter table SPONSOR MODIFY SPONSOR_CODE VARCHAR2(12);

alter table NEGOTIATION_UNASSOC_DETAIL add CONSTRAINT "NEGOTIATION_UNASSOC_DETAIL_FK3" FOREIGN KEY ("SPONSOR_CODE") REFERENCES "SPONSOR" ("SPONSOR_CODE") ENABLE;
alter table NEGOTIATION_UNASSOC_DETAIL add CONSTRAINT "NEGOTIATION_UNASSOC_DETAIL_FK4" FOREIGN KEY ("PRIME_SPONSOR_CODE") REFERENCES "SPONSOR" ("SPONSOR_CODE") ENABLE;
alter table AWARD_TRANSFERRING_SPONSOR add CONSTRAINT "FK2_AWARD_TRANSFERRING_SPONSOR" FOREIGN KEY ("SPONSOR_CODE") REFERENCES "SPONSOR" ("SPONSOR_CODE") ENABLE;
alter table AWARD_TEMPLATE add CONSTRAINT "FK_AWARD_TEMPLATE_SPONSOR" FOREIGN KEY ("PRIME_SPONSOR_CODE") REFERENCES "SPONSOR" ("SPONSOR_CODE") ENABLE;
alter table PROPOSAL add CONSTRAINT "FK_PROPOSAL_SPONSOR_CODE" FOREIGN KEY ("SPONSOR_CODE") REFERENCES "SPONSOR" ("SPONSOR_CODE") ENABLE;
alter table SPONSOR_HIERARCHY add CONSTRAINT "FK_SPONSOR_HIERARCHY_KRA" FOREIGN KEY ("SPONSOR_CODE") REFERENCES "SPONSOR" ("SPONSOR_CODE") ON DELETE CASCADE ENABLE;
alter table SPONSOR_FORMS add CONSTRAINT "FK_SPONSOR_FORMS" FOREIGN KEY ("SPONSOR_CODE") REFERENCES "SPONSOR" ("SPONSOR_CODE") ENABLE;

-- RES-671
alter table PERSON_CUSTOM_DATA add PERSON_ID_NEW VARCHAR2(40);
update PERSON_CUSTOM_DATA set PERSON_ID_NEW=PERSON_ID;
update BUDGET_PERSONS set PERSON_ID = null;
alter table PERSON_CUSTOM_DATA modify PERSON_ID VARCHAR2(40);
update PERSON_CUSTOM_DATA set PERSON_ID=PERSON_ID_NEW;
alter table PERSON_CUSTOM_DATA drop column PERSON_ID_NEW;


 -- RES-546
Declare
  nextnum NUMBER;
 BEGIN
  select (MAX(TO_NUMBER(SPECIAL_REVIEW_CODE))+1) into nextnum from SPECIAL_REVIEW;
  execute immediate 'CREATE SEQUENCE "SEQ_SPECIAL_REVIEW_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;
/
Declare
  nextnum NUMBER;
 BEGIN
  select (MAX(TO_NUMBER(TBN_ID))+1) into nextnum from TBN;
  execute immediate 'CREATE SEQUENCE "SEQ_TBN_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

commit;
exit
