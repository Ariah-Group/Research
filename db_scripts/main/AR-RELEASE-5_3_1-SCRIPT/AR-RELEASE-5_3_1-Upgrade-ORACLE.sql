set define off
set sqlblanklines on
spool AR-RELEASE-5_3_1-Upgrade-ORACLE-Install.log


-- convert BUDGET_DETAILS.BUDGET_CATEGORY_CODE from NUMBER to VARCHAR
alter table BUDGET_DETAILS add BUDGET_CATEGORY_CODE varchar2(3);
update BUDGET_DETAILS set BUDGET_CATEGORY_CODE_TEMP=TO_CHAR(BUDGET_CATEGORY_CODE);
alter table BUDGET_DETAILS drop column BUDGET_CATEGORY_CODE;
alter table BUDGET_DETAILS add BUDGET_CATEGORY_CODE varchar2(3);
update BUDGET_DETAILS set BUDGET_CATEGORY_CODE = BUDGET_CATEGORY_CODE_TEMP;

-- person traing enhancement
alter table person_training add constraint FK_PERTRAIN_CODE FOREIGN KEY (TRAINING_CODE) references TRAINING (TRAINING_CODE);


-- Generate new sequence for IRB Protocol Person ID, using max of existing protocol person id's.
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_PERSON_ID),0)+1) into nextnum from PROTOCOL_PERSONS;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_PERSON_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- Generate new sequence for IRB Protocol Research Area, using max of existing protocol research areas.
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(ID),0)+1) into nextnum from PROTOCOL_RESEARCH_AREAS;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_RESRCHAREA_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- Generate new sequence for IRB Protocol Locations, using max of existing protocol locations.
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_LOCATION_ID),0)+1) into nextnum from PROTOCOL_LOCATION;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_LOCATION_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- Generate new sequence for IRB Protocol Notepad, using max of existing protocol notepads.
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_NOTEPAD_ID),0)+1) into nextnum from PROTOCOL_NOTEPAD;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_NOTEPAD_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- Generate new sequence for IRB Protocol Participants (a.k.a. Vulnerable Subjects), using max of existing protocol participants.
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_VULNERABLE_SUB_ID),0)+1) into nextnum from PROTOCOL_VULNERABLE_SUB;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_PARTIC_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;


-- Generate new sequence for IRB Protocol Risk levels, using max of existing protocol risk levels
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_RISK_LEVELS_ID),0)+1) into nextnum from PROTOCOL_RISK_LEVELS;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_RISKLEVEL_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;


-- Generate new sequence for IRB Protocol References, using max of existing protocol references
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_REFERENCE_ID),0)+1) into nextnum from PROTOCOL_REFERENCES;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_REFERENCE_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- Generate new sequence for IRB Protocol Funding Sources, using max of existing protocol funding sources
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_FUNDING_SOURCE_ID),0)+1) into nextnum from PROTOCOL_FUNDING_SOURCE;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_FUNDSRC_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- Generate new sequence for IRB Protocol Special Reviews, using max of existing protocol special reviews
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_SPECIAL_REVIEW_ID),0)+1) into nextnum from PROTOCOL_SPECIAL_REVIEW;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_SPECREV_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- Generate new sequence for IRB Protocol Units, using max of existing protocol Units
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_UNITS_ID),0)+1) into nextnum from PROTOCOL_UNITS;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_UNITS_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- Generate new sequence for IRB Protocol Role Mapping, using max of existing protocol Role Mappings
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(ROLE_MAPPING_ID),0)+1) into nextnum from PROTOCOL_PERSON_ROLE_MAPPING;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_PERROLEMAP_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- Generate new sequence for IRB Protocol Exempt Number, using max of existing protocol Exempt Number
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_EXEMPT_NUMBER_ID),0)+1) into nextnum from PROTOCOL_EXEMPT_NUMBER;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_EXEMPT_NUM_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- Generate new sequence for IRB Protocol Attachment Type Group, using max of existing protocol attachment type group
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(TYPE_GROUP_ID),0)+1) into nextnum from PROTOCOL_ATTACHMENT_TYPE_GROUP;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_ATTTYPEGRP_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- Generate new sequence for IRB Protocol Attachment , using max of existing protocol attachment
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PA_PROTOCOL_ID),0)+1) into nextnum from PROTOCOL_ATTACHMENT_PROTOCOL;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_ATTACHPROT_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;



-- Generate new sequence for IRB Protocol Attachment Personnel, using max of existing protocol attachment Personnel
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PA_PERSONNEL_ID),0)+1) into nextnum from PROTOCOL_ATTACHMENT_PERSONNEL;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_ATTACHPERS_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- Generate new sequence for IRB Protocol Actions, using max of existing protocol Actions
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_ACTION_ID),0)+1) into nextnum from PROTOCOL_ACTIONS;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_ACTIONS_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- Generate new sequence for IRB Protocol Submissions, using max of existing protocol Submissions
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(SUBMISSION_ID),0)+1) into nextnum from PROTOCOL_SUBMISSION;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_SUBMISS_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;


-- Generate new sequence for IRB Protocol Correspondence, using max of existing protocol Correspondences
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(ID),0)+1) into nextnum from PROTOCOL_CORRESPONDENCE;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_CORRESP_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- Generate new sequence for IRB Protocol Exempt Checklist, using max of existing protocol Exempt Checklist
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_EXEMPT_CHKLST_ID),0)+1) into nextnum from PROTOCOL_EXEMPT_CHKLST;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_EXEMPTCHK_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;

-- Generate new sequence for IRB Protocol Expedited Checklist, using max of existing protocol Expedited Checklist
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_EXPEDITED_CHKLST_ID),0)+1) into nextnum from PROTOCOL_EXPIDITED_CHKLST;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_EXPEDITCHK_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;


-- Generate new sequence for IRB Protocol Reviewer, using max of existing protocol Reviewer
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_REVIEWER_ID),0)+1) into nextnum from PROTOCOL_REVIEWERS;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_REVIEWER_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;


-- Generate new sequence for IRB Protocol Online Review, using max of existing protocol Online Review
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTOCOL_ONLN_RVW_ID),0)+1) into nextnum from PROTOCOL_ONLN_RVWS;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_ONLINEREV_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;


-- Generate new sequence for IRB Protocol Online Review Reviewer Attachments, using max of existing protocol Online Review Reviewer Attachments
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(REVIEWER_ATTACHMENT_ID),0)+1) into nextnum from REVIEWER_ATTACHMENTS;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_ONLREVATCH_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;


-- Generate new sequence for IRB Protocol Amend Renewals, using max of existing protocol Amend Renewals
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTO_AMEND_RENEWAL_ID),0)+1) into nextnum from PROTO_AMEND_RENEWAL;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_AMENDRENEW_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;


-- Generate new sequence for IRB Protocol Amend Renewal Modules, using max of existing protocol Amend Renewal Modules
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(PROTO_AMEND_RENEW_MODULES_ID),0)+1) into nextnum from PROTO_AMEND_RENEW_MODULES;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_AMDRNWMOD_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;



-- Generate new sequence for IRB Protocol Submission Doc, using max of existing protocol Submission Doc
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(SUBMISSION_DOC_ID),0)+1) into nextnum from PROTOCOL_SUBMISSION_DOC;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_SUBMDOC_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;


-- Generate new sequence for IRB Protocol Batch Correspondence Detail, using max of existing protocol Batch Correspondence Detail
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(BATCH_CORRESPONDENCE_DETAIL_ID),0)+1) into nextnum from BATCH_CORRESPONDENCE_DETAIL;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_BATCORRDET_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;


-- Generate new sequence for IRB Protocol Notification Template, using max of existing protocol Notification Template
Declare
  nextnum NUMBER;
 BEGIN
  select (nvl(max(NOTIFICATION_TEMPL_ID),0)+1) into nextnum from PROTO_NOTIFICATION_TEMPL;
  execute immediate 'CREATE SEQUENCE "SEQ_IRB_PROTOCOL_NOTIFTMPL_ID" MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH ' || nextnum || ' NOCACHE  ORDER  NOCYCLE';
END;


-- module-disable feature for funding source type
alter table FUNDING_SOURCE_TYPE add DISABLED_COEUS_MODULE_ID NUMBER;
update FUNDING_SOURCE_TYPE set DISABLED_COEUS_MODULE_ID=0;
update FUNDING_SOURCE_TYPE set DISABLED_COEUS_MODULE_ID=3 where DESCRIPTION='Development Proposal';
update FUNDING_SOURCE_TYPE set DISABLED_COEUS_MODULE_ID=2 where DESCRIPTION='Institutional Proposal';
update FUNDING_SOURCE_TYPE set DISABLED_COEUS_MODULE_ID=1 where DESCRIPTION='Award';

-- fix for IACUC Committee Roster Report
Insert into IACUC_PROTOCOL_CORRESP_TYPE (PROTO_CORRESP_TYPE_CODE,DESCRIPTION,MODULE_ID,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ('30','Committee Roster Report','Y',SYSDATE,'admin',1,SYS_GUID());




commit;
exit
