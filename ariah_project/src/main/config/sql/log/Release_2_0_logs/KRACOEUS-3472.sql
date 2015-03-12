-- Populate the ORGANIZATION_YNQ with default responses for existing organizations and questions.
-- All questions have answers of 'N' by default
-- 'STAGED DATA DEFAULT EXPLANATION' is the default explanation added when a question requires one for a 'N'.
-- 2010-02-16 00:00:00 is the default REVIEW_DATE if the question requires it.
INSERT INTO ORGANIZATION_YNQ ( ORGANIZATION_ID
							  ,QUESTION_ID
							  ,ANSWER
							  ,EXPLANATION
							  ,REVIEW_DATE
							  ,UPDATE_TIMESTAMP
							  ,UPDATE_USER
							  ,VER_NBR )
							  
SELECT ORGANIZATION_IDS.ORGANIZATION_ID AS ORGANIZATION_ID 
	   , QUESTION_ID AS QUESTION_ID
	   , 'N' AS ANSWER
	   , CASE WHEN YNQ.EXPLANATION_REQUIRED_FOR = 'N' OR YNQ.EXPLANATION_REQUIRED_FOR='YN' THEN 'STAGED DATA DEFAULT EXPLANATION'
	          ELSE NULL
	          END AS EXPLANATION
	   , CASE WHEN YNQ.DATE_REQUIRED_FOR = 'N' OR YNQ.DATE_REQUIRED_FOR='YN' THEN to_date('2010-02-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
	          ELSE NULL
	          END AS REVIEW_DATE
	   , to_date('2010-02-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS') AS UPDATE_TIMESTAMP
	   , 'admin' as UPDATE_USER
	   , 1 AS VER_NBR 
	   
	    FROM YNQ 
		CROSS JOIN ( SELECT ORGANIZATION.ORGANIZATION_ID 
			         FROM ORGANIZATION 
			         WHERE ( SELECT COUNT(*) FROM ORGANIZATION_YNQ WHERE ORGANIZATION_YNQ.ORGANIZATION_ID = ORGANIZATION.ORGANIZATION_ID ) = 0 ) ORGANIZATION_IDS
		WHERE YNQ.QUESTION_TYPE = 'O';
		