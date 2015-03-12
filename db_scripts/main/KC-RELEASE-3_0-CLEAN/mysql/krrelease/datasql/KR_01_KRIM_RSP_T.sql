delimiter /
INSERT INTO KRIM_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_T (RSP_ID,RSP_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT RSP_TMPL_ID FROM KRIM_RSP_TMPL_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Review'),'KC-WKFLW','Proposal Initial Approval','Proposal Development Document - Initial Approval','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'ProposalDevelopmentDocument',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'routeNodeName'),'OSPInitial',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'required'),'false',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'actionDetailsAtRoleMemberLevel'),'false',UUID(),1)
/

INSERT INTO KRIM_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_T (RSP_ID,RSP_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT RSP_TMPL_ID FROM KRIM_RSP_TMPL_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Review'),'KC-WKFLW','Proposal OSP Office Approval','Proposal Development Document - OSP Office Approval','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'ProposalDevelopmentDocument',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'routeNodeName'),'OSPOfficeRouting',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'required'),'false',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'actionDetailsAtRoleMemberLevel'),'false',UUID(),1)
/

INSERT INTO KRIM_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_T (RSP_ID,RSP_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT RSP_TMPL_ID FROM KRIM_RSP_TMPL_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Review'),'KC-WKFLW','Proposal Persons Approval','Proposal Development Document - Key Personnel Approval','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'ProposalDevelopmentDocument',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'routeNodeName'),'ProposalPersons',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'required'),'false',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'actionDetailsAtRoleMemberLevel'),'false',UUID(),1)
/

INSERT INTO KRIM_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_T (RSP_ID,RSP_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT RSP_TMPL_ID FROM KRIM_RSP_TMPL_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Review'),'KC-WKFLW','Proposal Custom Approval','Proposal Development Document - Custom Approval','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'ProposalDevelopmentDocument',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'routeNodeName'),'UnitRouting',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'required'),'false',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'actionDetailsAtRoleMemberLevel'),'false',UUID(),1)
/

INSERT INTO KRIM_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_T (RSP_ID,RSP_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT RSP_TMPL_ID FROM KRIM_RSP_TMPL_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Review'),'KC-WKFLW','Proposal Departmental Approval','Proposal Development Document - Departmental Approval','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'ProposalDevelopmentDocument',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'routeNodeName'),'DepartmentalRouting',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'required'),'false',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'actionDetailsAtRoleMemberLevel'),'false',UUID(),1)
/

INSERT INTO KRIM_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_T (RSP_ID,RSP_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT RSP_TMPL_ID FROM KRIM_RSP_TMPL_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Review'),'KC-WKFLW','IRB Approve','Protocol Document - IRBApprove','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'ProtocolDocument',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'routeNodeName'),'IRBApprove',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'required'),'false',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'actionDetailsAtRoleMemberLevel'),'false',UUID(),1)
/

INSERT INTO KRIM_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_T (RSP_ID,RSP_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT RSP_TMPL_ID FROM KRIM_RSP_TMPL_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Review'),'KC-WKFLW','IRB AssignedToCommittee','Protocol Document - AssignedToCommittee','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'ProtocolDocument',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'routeNodeName'),'AssignedToCommittee',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'required'),'false',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'actionDetailsAtRoleMemberLevel'),'false',UUID(),1)
/

INSERT INTO KRIM_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_T (RSP_ID,RSP_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT RSP_TMPL_ID FROM KRIM_RSP_TMPL_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Review'),'KC-WKFLW','IRB AssignedToAgenda','Protocol Document - AssignedToAgenda','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'ProtocolDocument',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'routeNodeName'),'AssignedToAgenda',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'required'),'false',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'actionDetailsAtRoleMemberLevel'),'false',UUID(),1)
/

INSERT INTO KRIM_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_T (RSP_ID,RSP_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT RSP_TMPL_ID FROM KRIM_RSP_TMPL_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Review'),'KC-WKFLW','IRB Review','Protocol Document - IRBReview','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'ProtocolDocument',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'routeNodeName'),'IRBReview',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'required'),'false',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'actionDetailsAtRoleMemberLevel'),'false',UUID(),1)
/

INSERT INTO KRIM_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_T (RSP_ID,RSP_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT RSP_TMPL_ID FROM KRIM_RSP_TMPL_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Review'),'KC-WKFLW','IRB Receipt','Protocol Document - IRBReceipt','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'ProtocolDocument',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'routeNodeName'),'IRBReceipt',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'required'),'false',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'actionDetailsAtRoleMemberLevel'),'false',UUID(),1)
/

INSERT INTO KRIM_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_T (RSP_ID,RSP_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT RSP_TMPL_ID FROM KRIM_RSP_TMPL_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Review'),'KC-WKFLW','Award Budget InitialApproval','Award Budget Document - Initial Approval','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'AwardBudgetDocument',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'routeNodeName'),'AwardBudgetInitialApproval',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'required'),'false',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'actionDetailsAtRoleMemberLevel'),'false',UUID(),1)
/

INSERT INTO KRIM_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_T (RSP_ID,RSP_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT RSP_TMPL_ID FROM KRIM_RSP_TMPL_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Review'),'KC-WKFLW','Award Budget OSPApproval','Award Budget Document - OSP Approval','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'AwardBudgetDocument',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'routeNodeName'),'AwardBudgetOSPApproval',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'required'),'false',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'actionDetailsAtRoleMemberLevel'),'false',UUID(),1)
/

INSERT INTO KRIM_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_T (RSP_ID,RSP_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT RSP_TMPL_ID FROM KRIM_RSP_TMPL_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Review'),'KC-WKFLW','IRB Reviewer Approve Online Review','Protocol Document - IRB Reviewer approves online review','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'ProtocolOnlineReviewDocument',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'routeNodeName'),'OnlineReviewer',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'required'),'false',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'actionDetailsAtRoleMemberLevel'),'false',UUID(),1)
/

INSERT INTO KRIM_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_T (RSP_ID,RSP_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT RSP_TMPL_ID FROM KRIM_RSP_TMPL_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Review'),'KC-WKFLW','IRB Admin Approve Online Review','Protocol Online Review Document - IRB Admin approves online review','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'ProtocolOnlineReviewDocument',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'routeNodeName'),'IRBAdminReview',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'required'),'false',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'actionDetailsAtRoleMemberLevel'),'false',UUID(),1)
/

INSERT INTO KRIM_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_T (RSP_ID,RSP_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT RSP_TMPL_ID FROM KRIM_RSP_TMPL_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Review'),'KC-WKFLW','IRB Admin Approve Review Request','Protocol Online Review Document - IRB Admin approves online review request made by PI during protocol submission.','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'ProtocolOnlineReviewDocument',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'routeNodeName'),'IRBAdminInitialReview',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'required'),'false',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'actionDetailsAtRoleMemberLevel'),'false',UUID(),1)
/

INSERT INTO KRIM_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_T (RSP_ID,RSP_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT RSP_TMPL_ID FROM KRIM_RSP_TMPL_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Review'),'KC-WKFLW','ProtocolUnitApprovalResponsibility','ProtocolUnitApprovalResponsibility','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'ProtocolDocument',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'routeNodeName'),'DepartmentReview',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'required'),'false',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_RSP_ATTR_DATA_T (ATTR_DATA_ID,RSP_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT MAX(ID) FROM KRIM_RSP_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'actionDetailsAtRoleMemberLevel'),'false',UUID(),1)
/
delimiter ;
