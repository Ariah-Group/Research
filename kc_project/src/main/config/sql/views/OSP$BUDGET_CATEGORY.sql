create or replace view OSP$BUDGET_CATEGORY as 
	select BUDGET_CATEGORY_CODE,DESCRIPTION,CATEGORY_TYPE,UPDATE_TIMESTAMP,UPDATE_USER
	from BUDGET_CATEGORY;