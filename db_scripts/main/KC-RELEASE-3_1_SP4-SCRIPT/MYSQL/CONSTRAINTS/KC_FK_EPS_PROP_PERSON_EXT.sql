ALTER TABLE EPS_PROP_PERSON_EXT
    ADD CONSTRAINT EPS_PROP_PERSON_EXT_FK1
    FOREIGN KEY(CITIZENSHIP_TYPE_CODE)
    REFERENCES CITIZENSHIP_TYPE_T(CITIZENSHIP_TYPE_CODE);
