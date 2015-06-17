set define off
set sqlblanklines on
spool AR-RELEASE-5_3_4-Upgrade-ORACLE-Install.log



-- Add Active flag to BUDGET_CATEGORY_TYPE table
alter table BUDGET_CATEGORY_TYPE add ( ACTIVE varchar2(1) ); 
-- set all default values to Y Active)
update BUDGET_CATEGORY_TYPE set active='Y';




commit;
exit
