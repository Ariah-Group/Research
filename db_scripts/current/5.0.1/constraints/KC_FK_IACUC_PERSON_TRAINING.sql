ALTER TABLE IACUC_PERSON_TRAINING 
ADD CONSTRAINT FK_IACUC_PERSON_TRAINING 
FOREIGN KEY (PERSON_TRAINING_ID) 
REFERENCES PERSON_TRAINING (PERSON_TRAINING_ID)
/

ALTER TABLE IACUC_PERSON_TRAINING 
ADD CONSTRAINT FK_PER_TRAINING_SPECIES_CODE 
FOREIGN KEY (SPECIES_CODE) 
REFERENCES IACUC_SPECIES (SPECIES_CODE)
/

ALTER TABLE IACUC_PERSON_TRAINING 
ADD CONSTRAINT FK_PER_TRAINING_PROCEDURE_CODE 
FOREIGN KEY (PROCEDURE_CODE) 
REFERENCES IACUC_PROCEDURES (PROCEDURE_CODE)
/

