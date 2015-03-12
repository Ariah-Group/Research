DELIMITER /
UPDATE KRCR_CMPNT_T T SET T.CMPNT_CD = 'Document' where T.CMPNT_CD = 'D' AND NMSPC_CD LIKE 'KC%'
/
UPDATE KRCR_CMPNT_T T SET T.CMPNT_CD = 'All' where T.CMPNT_CD = 'A' AND NMSPC_CD LIKE 'KC%'
/
UPDATE KRCR_CMPNT_T T SET T.CMPNT_CD = 'Lookup' where T.CMPNT_CD = 'L' AND NMSPC_CD LIKE 'KC%'
/
COMMIT
/
DELIMITER ;
