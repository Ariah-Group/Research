DELIMITER /
ALTER TABLE PERSON_SIGNATURE 
ADD CONSTRAINT UQ_PERSON_SIGNATURE 
UNIQUE (PERSON_ID) 
/


DELIMITER ;