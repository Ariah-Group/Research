set define off
set sqlblanklines on
spool AR-RELEASE-5_3_4-Upgrade-ORACLE-Install.log



-- Add Active flag to BUDGET_CATEGORY_TYPE table
alter table BUDGET_CATEGORY_TYPE add ( ACTIVE varchar2(1) ); 
-- set all default values to Y (Active)
update BUDGET_CATEGORY_TYPE set active='Y';


-- Add Active flag to BUDGET_CATEGORY table
alter table BUDGET_CATEGORY add ( ACTIVE varchar2(1) ); 
-- set all default values to Y (Active)
update BUDGET_CATEGORY set active='Y';

-- Add Active flag to APPOINTMENT_TYPE table
alter table APPOINTMENT_TYPE add ( ACTIVE varchar2(1) ); 
-- set all default values to Y (Active)
update APPOINTMENT_TYPE set active='Y';


-- Add Active flag to PROTOCOL_TYPE table
alter table PROTOCOL_TYPE add ( ACTIVE varchar2(1) ); 
-- set all default values to Y (Active)
update PROTOCOL_TYPE set active='Y';


-- Add Active flag to VULNERABLE_SUBJECT_TYPE table
alter table VULNERABLE_SUBJECT_TYPE add ( ACTIVE varchar2(1) ); 
-- set all default values to Y (Active)
update VULNERABLE_SUBJECT_TYPE set active='Y';


-- Add Active flag to PROTOCOL_ATTACHMENT_TYPE table
alter table PROTOCOL_ATTACHMENT_TYPE add ( ACTIVE varchar2(1) ); 
-- set all default values to Y (Active)
update PROTOCOL_ATTACHMENT_TYPE set active='Y';


commit;
exit
