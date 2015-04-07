set define off
set sqlblanklines on
spool AR-RELEASE-5_3_1-Upgrade-ORACLE-Install.log


-- convert BUDGET_DETAILS.BUDGET_CATEGORY_CODE from NUMBER to VARCHAR
alter table BUDGET_DETAILS add BUDGET_CATEGORY_CODE varchar2(3);
update BUDGET_DETAILS set BUDGET_CATEGORY_CODE_TEMP=TO_CHAR(BUDGET_CATEGORY_CODE);
alter table BUDGET_DETAILS drop column BUDGET_CATEGORY_CODE;
alter table BUDGET_DETAILS add BUDGET_CATEGORY_CODE varchar2(3);
update BUDGET_DETAILS set BUDGET_CATEGORY_CODE = BUDGET_CATEGORY_CODE_TEMP;

-- person traing enhancement
alter table person_training add constraint FK_PERTRAIN_CODE FOREIGN KEY (TRAINING_CODE) references TRAINING (TRAINING_CODE);



commit;
exit
