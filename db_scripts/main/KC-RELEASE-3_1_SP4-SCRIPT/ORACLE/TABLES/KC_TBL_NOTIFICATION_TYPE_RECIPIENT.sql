ALTER TABLE NOTIFICATION_TYPE_RECIPIENT RENAME COLUMN ROLE_ID TO ROLE_NAME;
ALTER TABLE NOTIFICATION_TYPE_RECIPIENT MODIFY ROLE_NAME VARCHAR2(125);