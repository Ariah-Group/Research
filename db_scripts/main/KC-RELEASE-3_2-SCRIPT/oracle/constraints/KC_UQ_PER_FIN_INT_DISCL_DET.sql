ALTER TABLE PER_FIN_INT_DISCL_DET 
ADD CONSTRAINT UQ_PER_FIN_INT_DISCL_DET 
UNIQUE (ENTITY_NUMBER, SEQUENCE_NUMBER, COLUMN_NAME, RELATIONSHIP_TYPE_CODE)
/
