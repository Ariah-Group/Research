ALTER TABLE PMC_NEGOTIATION
  ADD CONSTRAINT FK_PMC_NEGOTIATION_ID
  FOREIGN KEY (PERSON_MASS_CHANGE_ID) REFERENCES PERSON_MASS_CHANGE (PERSON_MASS_CHANGE_ID)
/
