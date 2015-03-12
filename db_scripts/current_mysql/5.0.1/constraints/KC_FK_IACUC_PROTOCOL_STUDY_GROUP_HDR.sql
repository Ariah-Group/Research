DELIMITER /
ALTER TABLE IACUC_PROTOCOL_STUDY_GROUP_HDR 
ADD CONSTRAINT FK_STUD_GRP_HDR_PROC_CAT_CODE 
FOREIGN KEY (PROCEDURE_CATEGORY_CODE) 
REFERENCES IACUC_PROCEDURE_CATEGORY (PROCEDURE_CATEGORY_CODE)
/

ALTER TABLE IACUC_PROTOCOL_STUDY_GROUP_HDR 
ADD CONSTRAINT FK_STUD_GRP_HDR_PROC_CODE 
FOREIGN KEY (PROCEDURE_CODE) 
REFERENCES IACUC_PROCEDURES (PROCEDURE_CODE)
/

ALTER TABLE IACUC_PROTOCOL_STUDY_GROUP_HDR 
ADD CONSTRAINT FK_STUD_GRP_HDR_PROTOCOL_ID 
FOREIGN KEY (PROTOCOL_ID) 
REFERENCES IACUC_PROTOCOL (PROTOCOL_ID)
/

DELIMITER ;
