set define off
set sqlblanklines on
spool AR-RELEASE-5_4_1-Upgrade-ORACLE-Install.log


-- RES-752
alter table SPECIAL_REVIEW add UNIT_ADMINISTRATOR_TYPE_CODE VARCHAR2(3);

CREATE INDEX "IX_SPECREV_UATYPECODE" ON "SPECIAL_REVIEW" ("UNIT_ADMINISTRATOR_TYPE_CODE");

Insert into UNIT_ADMINISTRATOR_TYPE (UNIT_ADMINISTRATOR_TYPE_CODE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,DEFAULT_GROUP_FLAG,MULTIPLES_FLAG,OBJ_ID) 
values ('700','Export Control Coordinator',SYSDATE,'admin',1,'C','Y',SYS_GUID());

Insert into UNIT_ADMINISTRATOR_TYPE (UNIT_ADMINISTRATOR_TYPE_CODE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,DEFAULT_GROUP_FLAG,MULTIPLES_FLAG,OBJ_ID) 
values ('701','Biosafety Coordinator',SYSDATE,'admin',1,'C','Y',SYS_GUID());

update SPECIAL_REVIEW set UNIT_ADMINISTRATOR_TYPE_CODE='700' where SPECIAL_REVIEW_CODE='8';
update SPECIAL_REVIEW set UNIT_ADMINISTRATOR_TYPE_CODE='701' where SPECIAL_REVIEW_CODE='14';





Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (SEQ_S2S_ERROR_MESSAGES.nextval,'/GrantApplication/Forms/PerformanceSite_2_0/PrimarySite/Address/Street1','The Performance Organization Contact''s Street1 field needs to be set.','proposal.Organization/Location',sysdate,'admin',SYS_GUID(),0,'PerformanceSite_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (SEQ_S2S_ERROR_MESSAGES.nextval,'/GrantApplication/Forms/PerformanceSite_2_0/PrimarySite/Address/City','The Performance Organization Contact''s Street1 field needs to be set.','proposal.Organization/Location',sysdate,'admin',SYS_GUID(),0,'PerformanceSite_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (SEQ_S2S_ERROR_MESSAGES.nextval,'/GrantApplication/Forms/PerformanceSite_2_0/PrimarySite/Address/Country','The Performance Organization Contact''s Country field needs to be set.','proposal.Organization/Location',sysdate,'admin',SYS_GUID(),0,'PerformanceSite_2_0','Y');

Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (SEQ_S2S_ERROR_MESSAGES.nextval,'/GrantApplication/Forms/RR_SF424_2_0/AORInfo/Title','The AOR (person set as AOR Unit Administrator) must have a Primary Title in their extended attributes record.','grantsGov',sysdate,'admin',sys_guid(),0,'RR_SF424_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (SEQ_S2S_ERROR_MESSAGES.nextval,'/GrantApplication/Forms/RR_SF424_2_0/AORInfo/Fax','The AOR (person set as AOR Unit Administrator) must have a Fax Number set in their personprofile.','grantsGov',sysdate,'admin',sys_guid(),0,'RR_SF424_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (SEQ_S2S_ERROR_MESSAGES.nextval,'/GrantApplication/Forms/RR_SF424_2_0/AORInfo/Name/LastName','The AOR (person set as AOR Unit Administrator) must have a Last Name in their person profile.','grantsGov',sysdate,'admin',sys_guid(),0,'RR_SF424_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (SEQ_S2S_ERROR_MESSAGES.nextval,'/GrantApplication/Forms/RR_SF424_2_0/AORInfo/Address/Street1','The AOR (person set as AOR Unit Administrator) must have a Street Address specified in their person profile.','grantsGov',sysdate,'admin',sys_guid(),0,'RR_SF424_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (SEQ_S2S_ERROR_MESSAGES.nextval,'/GrantApplication/Forms/RR_SF424_2_0/AORInfo/Address/ZipPostalCode','The AOR (person set as AOR Unit Administrator) must have a Postal Code specified in their person profile.','grantsGov',sysdate,'admin',sys_guid(),0,'RR_SF424_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (SEQ_S2S_ERROR_MESSAGES.nextval,'/GrantApplication/Forms/RR_SF424_2_0/ApplicantInfo/OrganizationInfo/DivisionName','The name of the lead unit or parent units is either blank or exceeds the maximum character length.','proposal',sysdate,'admin',sys_guid(),0,'RR_SF424_2_0','Y');
Insert into S2S_ERROR_MESSAGES (ERROR_MESSAGE_ID,MESSAGE_KEY,MESSAGE_DESC,FIXLINK,UPDATED_DATE,UPDATED_USER,OBJ_ID,VER_NBR,FORM_DESC,ACTIVE) values (SEQ_S2S_ERROR_MESSAGES.nextval,'/GrantApplication/Forms/RR_SF424_2_0/PDPIContactInfo/DivisionName','The name of the personnel members unit or parent units is either blank or exceeds the maximum character length.','proposal',sysdate,'admin',sys_guid(),0,'RR_SF424_2_0','Y');



  CREATE TABLE "EPS_PROP_RELATED_PROP" 
   (	
	"PROPOSAL_NUMBER_1" VARCHAR2(12 BYTE), 
        "PROPOSAL_NUMBER_2" VARCHAR2(12 BYTE), 
	"UPDATE_TIMESTAMP" DATE NOT NULL ENABLE, 
	"UPDATE_USER" VARCHAR2(60 BYTE) NOT NULL ENABLE, 
	"VER_NBR" NUMBER(8,0) DEFAULT 1 NOT NULL ENABLE, 
	"OBJ_ID" VARCHAR2(36 BYTE) NOT NULL ENABLE, 
	CONSTRAINT "EPS_PROP_RELATED_P1" PRIMARY KEY ("PROPOSAL_NUMBER_1", "PROPOSAL_NUMBER_2"), 
	CONSTRAINT "FK_EPS_PROP_REL_PROP_1" FOREIGN KEY ("PROPOSAL_NUMBER_1") 
           REFERENCES "EPS_PROPOSAL" ("PROPOSAL_NUMBER") ENABLE,
        CONSTRAINT "FK_EPS_PROP_REL_PROP_2" FOREIGN KEY ("PROPOSAL_NUMBER_2") 
           REFERENCES "EPS_PROPOSAL" ("PROPOSAL_NUMBER") ENABLE
   );


-- RES-757
ALTER TABLE EPS_PROPOSAL ADD SPONSOR_INDIRECT_RATE VARCHAR2(10);

/


alter table EPS_PROP_SITES add PERCENT_EFFORT DECIMAL(6,2);
alter table EPS_PROP_SITES add HUMAN_USAGE VARCHAR2(1 BYTE) DEFAULT 'N' NOT NULL ENABLE;
alter table EPS_PROP_SITES add ANIMAL_USAGE VARCHAR2(1 BYTE) DEFAULT 'N' NOT NULL ENABLE;


commit;
exit
