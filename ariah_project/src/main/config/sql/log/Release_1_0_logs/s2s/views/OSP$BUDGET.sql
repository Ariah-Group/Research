create or replace view OSP$BUDGET as 
	select PROPOSAL_NUMBER,VERSION_NUMBER,START_DATE,END_DATE,TOTAL_COST,TOTAL_DIRECT_COST,
	TOTAL_INDIRECT_COST,COST_SHARING_AMOUNT,UNDERRECOVERY_AMOUNT,RESIDUAL_FUNDS,TOTAL_COST_LIMIT,
	OH_RATE_CLASS_CODE,OH_RATE_TYPE_CODE,COMMENTS,FINAL_VERSION_FLAG,UPDATE_TIMESTAMP,
	UPDATE_USER,UR_RATE_CLASS_CODE,MODULAR_BUDGET_FLAG
	from BUDGET;