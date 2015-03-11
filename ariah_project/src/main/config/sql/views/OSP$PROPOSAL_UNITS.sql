-- View for Coeus compatibility 
CREATE OR REPLACE VIEW OSP$PROPOSAL_UNITS AS SELECT 
    PROPOSAL_NUMBER, 
    SEQUENCE_NUMBER, 
    PERSON_ID, 
    UNIT_NUMBER, 
    LEAD_UNIT_FLAG, 
    UPDATE_TIMESTAMP, 
    UPDATE_USER
FROM PROPOSAL_UNITS;
