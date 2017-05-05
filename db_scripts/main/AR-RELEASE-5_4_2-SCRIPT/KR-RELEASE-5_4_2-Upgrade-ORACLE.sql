set define off
set sqlblanklines on
spool KR-RELEASE-5_4_2-Upgrade-ORACLE-Install.log

--RES-774
delete from KRIM_PERM_ATTR_DATA_T where PERM_ID='894' and ATTR_VAL='KC';
delete from KRIM_PERM_ATTR_DATA_T where PERM_ID='895' and ATTR_VAL='KC';
delete from KRIM_PERM_ATTR_DATA_T where PERM_ID='896' and ATTR_VAL='KC';
delete from KRIM_PERM_ATTR_DATA_T where PERM_ID='897' and ATTR_VAL='KC';
delete from KRIM_PERM_ATTR_DATA_T where PERM_ID='898' and ATTR_VAL='KC';
delete from KRIM_PERM_ATTR_DATA_T where PERM_ID='899' and ATTR_VAL='KC';


commit;
exit
