DELIMITER /
INSERT INTO SEQ_NOTIFICATION_TYPE_ID VALUES(NULL)
/
INSERT INTO NOTIFICATION_TYPE (NOTIFICATION_TYPE_ID, MODULE_CODE, ACTION_CODE, DESCRIPTION, SUBJECT, MESSAGE, PROMPT_USER, SEND_NOTIFICATION, UPDATE_USER, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID)
VALUES ((SELECT (MAX(ID)) FROM SEQ_NOTIFICATION_TYPE_ID), (SELECT MODULE_CODE FROM COEUS_MODULE WHERE DESCRIPTION='IACUC Protocol'),'300','IACUC Protocol Admin Withdraw','IACUC Protocol {PROTOCOL_NUMBER} Admin Withdraw Action','The IACUC protocol number <a title="" target="_self" href="{DOCUMENT_PREFIX}/kew/DocHandler.do?command=displayDocSearchView&amp;docId={DOCUMENT_NUMBER}">{PROTOCOL_NUMBER}</a>, Principal Investigator {PI_NAME} has had the action "Admin Withdraw" performed on it.<br />The action was executed by {USER_FULLNAME}. Additional information and further actions can be accessed through the Kuali Coeus system.','Y','Y','admin',NOW(),1,UUID())
/
INSERT INTO SEQ_NOTIFICATION_TYPE_ID VALUES(NULL)
/
INSERT INTO NOTIFICATION_TYPE_RECIPIENT (NOTIFICATION_TYPE_RECIPIENT_ID, NOTIFICATION_TYPE_ID, ROLE_NAME, UPDATE_USER, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, ROLE_SUB_QUALIFIER)
VALUES ((SELECT (MAX(ID)) FROM SEQ_NOTIFICATION_TYPE_ID),(SELECT NOTIFICATION_TYPE_ID FROM NOTIFICATION_TYPE WHERE DESCRIPTION='IACUC Protocol Admin Withdraw'),'KC-IACUC:PI','admin',NOW(),1,UUID(), null)
/
INSERT INTO SEQ_NOTIFICATION_TYPE_ID VALUES(NULL)
/
INSERT INTO NOTIFICATION_TYPE_RECIPIENT (NOTIFICATION_TYPE_RECIPIENT_ID, NOTIFICATION_TYPE_ID, ROLE_NAME, UPDATE_USER, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, ROLE_SUB_QUALIFIER)
VALUES ((SELECT (MAX(ID)) FROM SEQ_NOTIFICATION_TYPE_ID),(SELECT NOTIFICATION_TYPE_ID FROM NOTIFICATION_TYPE WHERE DESCRIPTION='IACUC Protocol Admin Withdraw'),'KC-UNT:IACUC Administrator','admin',NOW(),1,UUID(), null)
/

DELIMITER ;
