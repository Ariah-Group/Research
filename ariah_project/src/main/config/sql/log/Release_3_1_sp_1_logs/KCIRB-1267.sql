--Create resubmission submission type
INSERT INTO SUBMISSION_TYPE (SUBMISSION_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES (116, 'Resubmission', sysdate, 'KRADEV', 1, SYS_GUID())
/
COMMIT