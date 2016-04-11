set define off
set sqlblanklines on
spool AR-RELEASE-5_4_0-Upgrade-ORACLE-Install.log


Declare
  nextnum NUMBER;
 BEGIN
  select (MAX(TO_NUMBER(TBN_ID))+1) into nextnum from TBN;
  execute immediate 'CREATE SEQUENCE "SEQ_TBN_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

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



commit;
exit
