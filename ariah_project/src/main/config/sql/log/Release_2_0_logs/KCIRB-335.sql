alter table COMM_MEMBERSHIPS rename column COMM_MEMBERSHIP_ID to COMM_MEMBERSHIP_ID_FK;
alter table COMM_MEMBERSHIPS rename column ID to COMMITTEE_ID_FK;

alter table COMM_MEMBER_ROLES rename column COMM_MEMBER_ROLES_ID to COMM_MEMBER_ROLES_ID_FK;
alter table COMM_MEMBER_ROLES rename column COMM_MEMBERSHIP_ID to COMM_MEMBERSHIP_ID_FK;

alter table COMM_MEMBER_EXPERTISE  rename column COMM_MEMBER_EXPERTISE_ID to COMM_MEMBER_EXPERTISE_ID_FK;
alter table COMM_MEMBER_EXPERTISE  rename column COMM_MEMBERSHIP_ID to COMM_MEMBERSHIP_ID_FK;