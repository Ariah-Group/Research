DELIMITER /
INSERT INTO SEQ_NTFCTN_MODULE_ROLE_ID VALUES(NULL)
/
INSERT INTO NOTIFICATION_MODULE_ROLE (NOTIFICATION_MODULE_ROLE_ID, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER, MODULE_CODE, ROLE_NAME)
VALUES((SELECT (MAX(ID)) FROM SEQ_NTFCTN_MODULE_ROLE_ID), UUID(), 1, NOW(), 'admin', 8, 'KC-COIDISCLOSURE:Coi Disclosure Reviewer')
/
INSERT INTO SEQ_NTFCTN_MDL_ROLE_QLFR_ID VALUES(NULL)
/
INSERT INTO NOTIFICATION_MDL_ROLE_QLFR (NOTIFICATION_MDL_ROLE_QLFR_ID, NOTIFICATION_MODULE_ROLE_ID, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER, QUALIFIER)
VALUES((SELECT (MAX(ID)) FROM SEQ_NTFCTN_MDL_ROLE_QLFR_ID), (SELECT (MAX(ID)) FROM SEQ_NTFCTN_MODULE_ROLE_ID), UUID(), 1, NOW(), 'admin', 'disclosure')
/
INSERT INTO SEQ_NOTIFICATION_TYPE_ID VALUES(NULL)
/
INSERT INTO NOTIFICATION_TYPE (NOTIFICATION_TYPE_ID, MODULE_CODE, ACTION_CODE, DESCRIPTION, SUBJECT, MESSAGE, PROMPT_USER, SEND_NOTIFICATION, UPDATE_USER, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID)
VALUES((SELECT (MAX(ID)) FROM SEQ_NOTIFICATION_TYPE_ID), '8', '205', 'Assign Reviewer', 'Reviewer {ACTION_TAKEN}', 'You have been {ACTION_TAKEN} as a reviewer for disclosure <a target="_self" href="{DOCUMENT_PREFIX}/kew/DocHandler.do?command=displayDocSearchView&docId={DOCUMENT_NUMBER}">{DISCLOSURE_ID}</a>', 'N', 'Y', 'admin', NOW(), 1, UUID())
/
COMMIT
/
INSERT INTO SEQ_NOTIFICATION_TYPE_ID VALUES(NULL)
/
INSERT INTO NOTIFICATION_TYPE_RECIPIENT (NOTIFICATION_TYPE_RECIPIENT_ID, NOTIFICATION_TYPE_ID, ROLE_NAME, UPDATE_USER, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID)
VALUES ((SELECT (MAX(ID)) FROM SEQ_NOTIFICATION_TYPE_ID), (SELECT NOTIFICATION_TYPE_ID FROM NOTIFICATION_TYPE WHERE DESCRIPTION = 'Assign Reviewer'), 'KC-COIDISCLOSURE:COI Administrator', 'admin', NOW(), 1, UUID())
/
INSERT INTO SEQ_NOTIFICATION_TYPE_ID VALUES(NULL)
/
INSERT INTO NOTIFICATION_TYPE_RECIPIENT (NOTIFICATION_TYPE_RECIPIENT_ID, NOTIFICATION_TYPE_ID, ROLE_NAME, UPDATE_USER, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID)
VALUES ((SELECT (MAX(ID)) FROM SEQ_NOTIFICATION_TYPE_ID), (SELECT NOTIFICATION_TYPE_ID FROM NOTIFICATION_TYPE WHERE DESCRIPTION = 'Assign Reviewer'), 'KC-COIDISCLOSURE:COI Reviewer', 'admin', NOW(), 1, UUID())
/
INSERT INTO SEQ_NOTIFICATION_TYPE_ID VALUES(NULL)
/
INSERT INTO NOTIFICATION_TYPE_RECIPIENT (NOTIFICATION_TYPE_RECIPIENT_ID, NOTIFICATION_TYPE_ID, ROLE_NAME, UPDATE_USER, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID)
VALUES ((SELECT (MAX(ID)) FROM SEQ_NOTIFICATION_TYPE_ID), (SELECT NOTIFICATION_TYPE_ID FROM NOTIFICATION_TYPE WHERE DESCRIPTION = 'Assign Reviewer'), 'KC-COIDISCLOSURE:Coi Disclosure Reviewer', 'admin', NOW(), 1, UUID())
/
DELIMITER ;
