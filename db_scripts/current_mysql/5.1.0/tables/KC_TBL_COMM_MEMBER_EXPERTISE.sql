DELIMITER /
ALTER TABLE COMM_MEMBER_EXPERTISE
MODIFY RESEARCH_AREA_CODE VARCHAR(8) NULL
/


ALTER TABLE COMM_MEMBER_EXPERTISE
ADD IACUC_RESEARCH_AREA_CODE VARCHAR(8) NULL
/

DELIMITER ;
