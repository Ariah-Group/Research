set define off
set sqlblanklines on
spool AR-RELEASE-5_4_2-Upgrade-ORACLE-Install.log


ALTER TABLE SPONSOR ADD GRANTSGOV_ID VARCHAR2(255);

commit;
exit
