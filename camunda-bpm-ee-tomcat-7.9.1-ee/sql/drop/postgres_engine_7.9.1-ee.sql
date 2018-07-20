alter table ACT_RE_DECISION_DEF
    drop constraint ACT_FK_DEC_REQ;

drop index ACT_IDX_DEC_DEF_TENANT_ID;
drop index ACT_IDX_DEC_DEF_REQ_ID;
drop index ACT_IDX_DEC_REQ_DEF_TENANT_ID;

drop table ACT_RE_DECISION_DEF;
drop table ACT_RE_DECISION_REQ_DEF;
drop index ACT_IDX_CASE_EXEC_BUSKEY;
drop index ACT_IDX_CASE_DEF_TENANT_ID;
drop index ACT_IDX_CASE_EXEC_TENANT_ID;

drop index ACT_IDX_CASE_EXE_CASE_INST;
drop index ACT_IDX_CASE_EXE_PARENT;
drop index ACT_IDX_CASE_EXE_CASE_DEF;
drop index ACT_IDX_VAR_CASE_EXE;
drop index ACT_IDX_VAR_CASE_INST_ID;
drop index ACT_IDX_TASK_CASE_EXEC;
drop index ACT_IDX_TASK_CASE_DEF_ID;
drop index ACT_IDX_CASE_SENTRY_CASE_INST;
drop index ACT_IDX_CASE_SENTRY_CASE_EXEC;

alter table ACT_RU_CASE_EXECUTION
    drop CONSTRAINT ACT_FK_CASE_EXE_CASE_INST;

alter table ACT_RU_CASE_EXECUTION
    drop CONSTRAINT ACT_FK_CASE_EXE_PARENT;

alter table ACT_RU_CASE_EXECUTION
    drop CONSTRAINT ACT_FK_CASE_EXE_CASE_DEF;

alter table ACT_RU_VARIABLE
    drop CONSTRAINT ACT_FK_VAR_CASE_EXE;

alter table ACT_RU_VARIABLE
    drop CONSTRAINT ACT_FK_VAR_CASE_INST;

alter table ACT_RU_TASK
    drop CONSTRAINT ACT_FK_TASK_CASE_EXE;

alter table ACT_RU_TASK
    drop CONSTRAINT ACT_FK_TASK_CASE_DEF;

alter table ACT_RU_CASE_SENTRY_PART
    drop CONSTRAINT ACT_FK_CASE_SENTRY_CASE_INST;

alter table ACT_RU_CASE_SENTRY_PART
    drop CONSTRAINT ACT_FK_CASE_SENTRY_CASE_EXEC;

drop table ACT_RE_CASE_DEF;
drop table ACT_RU_CASE_EXECUTION;
drop table ACT_RU_CASE_SENTRY_PART;
drop index ACT_IDX_BYTEAR_DEPL ;
drop index ACT_IDX_EXE_PROCINST ;
drop index ACT_IDX_EXE_PARENT ;
drop index ACT_IDX_EXE_SUPER;
drop index ACT_IDX_EXE_PROCDEF;
drop index ACT_IDX_TSKASS_TASK;
drop index ACT_IDX_TASK_EXEC;
drop index ACT_IDX_TASK_PROCINST;
drop index ACT_IDX_TASK_PROCDEF;
drop index ACT_IDX_VAR_EXE;
drop index ACT_IDX_VAR_PROCINST;
drop index ACT_IDX_VAR_BYTEARRAY;
drop index ACT_IDX_JOB_EXCEPTION;
drop index ACT_IDX_JOB_PROCINST;
drop index ACT_IDX_INC_CONFIGURATION;
drop index ACT_IDX_AUTH_GROUP_ID;

drop index ACT_IDX_EXEC_BUSKEY;
drop index ACT_IDX_TASK_CREATE;
drop index ACT_IDX_TASK_ASSIGNEE;
drop index ACT_IDX_IDENT_LNK_USER;
drop index ACT_IDX_IDENT_LNK_GROUP;
drop index ACT_IDX_VARIABLE_TASK_ID;

-- new metric milliseconds column
DROP INDEX ACT_IDX_METER_LOG_MS;
DROP INDEX ACT_IDX_METER_LOG_NAME_MS;
DROP INDEX ACT_IDX_METER_LOG_REPORT;

-- old metric timestamp column
DROP INDEX ACT_IDX_METER_LOG_TIME;
DROP INDEX ACT_IDX_METER_LOG;

drop index ACT_IDX_EXT_TASK_TOPIC;

drop index ACT_IDX_JOB_EXECUTION_ID;
drop index ACT_IDX_JOB_HANDLER;

alter table ACT_GE_BYTEARRAY
    drop constraint ACT_FK_BYTEARR_DEPL;

alter table ACT_RU_EXECUTION
    drop constraint ACT_FK_EXE_PROCINST;

alter table ACT_RU_EXECUTION
    drop constraint ACT_FK_EXE_PARENT;

alter table ACT_RU_EXECUTION
    drop constraint ACT_FK_EXE_SUPER;

alter table ACT_RU_EXECUTION
    drop constraint ACT_FK_EXE_PROCDEF;

alter table ACT_RU_IDENTITYLINK
    drop constraint ACT_FK_TSKASS_TASK;

alter table ACT_RU_IDENTITYLINK
    drop constraint ACT_FK_ATHRZ_PROCEDEF;

alter table ACT_RU_TASK
	drop constraint ACT_FK_TASK_EXE;

alter table ACT_RU_TASK
	drop constraint ACT_FK_TASK_PROCINST;

alter table ACT_RU_TASK
	drop constraint ACT_FK_TASK_PROCDEF;

alter table ACT_RU_VARIABLE
    drop constraint ACT_FK_VAR_EXE;

alter table ACT_RU_VARIABLE
    drop constraint ACT_FK_VAR_PROCINST;

alter table ACT_RU_VARIABLE
    drop constraint ACT_FK_VAR_BYTEARRAY;

alter table ACT_RU_JOB
    drop constraint ACT_FK_JOB_EXCEPTION;

alter table ACT_RU_EVENT_SUBSCR
    drop constraint ACT_FK_EVENT_EXEC;

alter table ACT_RU_INCIDENT
    drop constraint ACT_FK_INC_EXE;

alter table ACT_RU_INCIDENT
    drop constraint ACT_FK_INC_PROCINST;

alter table ACT_RU_INCIDENT
    drop constraint ACT_FK_INC_PROCDEF;

alter table ACT_RU_INCIDENT
    drop constraint ACT_FK_INC_CAUSE;

alter table ACT_RU_INCIDENT
    drop constraint ACT_FK_INC_RCAUSE;

alter table ACT_RU_INCIDENT
    drop constraint ACT_FK_INC_JOB_DEF;

alter table ACT_RU_AUTHORIZATION
    drop constraint ACT_UNIQ_AUTH_GROUP;

alter table ACT_RU_AUTHORIZATION
    drop constraint ACT_UNIQ_AUTH_USER;

alter table ACT_RU_VARIABLE
    drop constraint ACT_UNIQ_VARIABLE;

alter table ACT_RU_EXT_TASK
    drop constraint ACT_FK_EXT_TASK_EXE;

alter table ACT_RU_BATCH
    drop constraint ACT_FK_BATCH_SEED_JOB_DEF;

alter table ACT_RU_BATCH
    drop constraint ACT_FK_BATCH_MONITOR_JOB_DEF;

alter table ACT_RU_BATCH
    drop constraint ACT_FK_BATCH_JOB_DEF;

alter table ACT_RU_EXT_TASK
    drop CONSTRAINT ACT_FK_EXT_TASK_ERROR_DETAILS;

drop index ACT_IDX_EVENT_SUBSCR_CONFIG_;
drop index ACT_IDX_EVENT_SUBSCR;
drop index ACT_IDX_ATHRZ_PROCEDEF;

-- indexes for deadlock problems - https://app.camunda.com/jira/browse/CAM-2567
drop index ACT_IDX_INC_CAUSEINCID;
drop index ACT_IDX_INC_EXID;
drop index ACT_IDX_INC_PROCDEFID;
drop index ACT_IDX_INC_PROCINSTID;
drop index ACT_IDX_INC_ROOTCAUSEINCID;
drop index ACT_IDX_INC_JOB_DEF;
drop index ACT_IDX_AUTH_RESOURCE_ID;
drop index ACT_IDX_EXT_TASK_EXEC;

drop index ACT_IDX_BYTEARRAY_NAME;
drop index ACT_IDX_DEPLOYMENT_NAME;
drop index ACT_IDX_JOBDEF_PROC_DEF_ID;
drop index ACT_IDX_JOB_HANDLER_TYPE;
drop index ACT_IDX_EVENT_SUBSCR_EVT_NAME;
drop index ACT_IDX_PROCDEF_DEPLOYMENT_ID;

drop index ACT_IDX_EXT_TASK_TENANT_ID;
drop index ACT_IDX_EXT_TASK_PRIORITY;
drop index ACT_IDX_EXT_TASK_ERR_DETAILS;
drop index ACT_IDX_INC_TENANT_ID;
drop index ACT_IDX_JOBDEF_TENANT_ID;
drop index ACT_IDX_JOB_TENANT_ID;
drop index ACT_IDX_EVENT_SUBSCR_TENANT_ID;
drop index ACT_IDX_VARIABLE_TENANT_ID;
drop index ACT_IDX_TASK_TENANT_ID;
drop index ACT_IDX_EXEC_TENANT_ID;
drop index ACT_IDX_PROCDEF_TENANT_ID;
drop index ACT_IDX_DEPLOYMENT_TENANT_ID;

drop index ACT_IDX_JOB_JOB_DEF_ID;
drop index ACT_IDX_BATCH_SEED_JOB_DEF;
drop index ACT_IDX_BATCH_MONITOR_JOB_DEF;
drop index ACT_IDX_BATCH_JOB_DEF;

drop index ACT_IDX_PROCDEF_VER_TAG;

drop table ACT_GE_PROPERTY;
drop table ACT_GE_BYTEARRAY;
drop table ACT_RE_DEPLOYMENT;
drop table ACT_RE_PROCDEF;
drop table ACT_RU_EXECUTION;
drop table ACT_RU_JOB;
drop table ACT_RU_JOBDEF;
drop table ACT_RU_TASK;
drop table ACT_RU_IDENTITYLINK;
drop table ACT_RU_VARIABLE;
drop table ACT_RU_EVENT_SUBSCR;
drop table ACT_RU_INCIDENT;
drop table ACT_RU_AUTHORIZATION;
drop table ACT_RU_FILTER;
drop table ACT_RU_METER_LOG;
drop table ACT_RU_EXT_TASK;
drop table ACT_RU_BATCH;

drop index ACT_IDX_HI_DEC_INST_ID;
drop index ACT_IDX_HI_DEC_INST_KEY;
drop index ACT_IDX_HI_DEC_INST_PI;
drop index ACT_IDX_HI_DEC_INST_CI;
drop index ACT_IDX_HI_DEC_INST_ACT;
drop index ACT_IDX_HI_DEC_INST_ACT_INST;
drop index ACT_IDX_HI_DEC_INST_TIME;
drop index ACT_IDX_HI_DEC_INST_TENANT_ID;
drop index ACT_IDX_HI_DEC_INST_ROOT_ID;
drop index ACT_IDX_HI_DEC_INST_REQ_ID;
drop index ACT_IDX_HI_DEC_INST_REQ_KEY;

drop index ACT_IDX_HI_DEC_IN_INST;
drop index ACT_IDX_HI_DEC_IN_CLAUSE;

drop index ACT_IDX_HI_DEC_OUT_INST;
drop index ACT_IDX_HI_DEC_OUT_RULE;

drop table ACT_HI_DECINST;

drop table ACT_HI_DEC_IN;

drop table ACT_HI_DEC_OUT;
drop index ACT_IDX_HI_CAS_I_CLOSE;
drop index ACT_IDX_HI_CAS_I_BUSKEY;
drop index ACT_IDX_HI_CAS_I_TENANT_ID;
drop index ACT_IDX_HI_CAS_A_I_CREATE;
drop index ACT_IDX_HI_CAS_A_I_END;
drop index ACT_IDX_HI_CAS_A_I_COMP;
drop index ACT_IDX_HI_CAS_A_I_TENANT_ID;

drop table ACT_HI_CASEINST;
drop table ACT_HI_CASEACTINST;
drop index ACT_IDX_HI_PRO_INST_END;
drop index ACT_IDX_HI_PRO_I_BUSKEY;
drop index ACT_IDX_HI_PRO_INST_TENANT_ID;
drop index ACT_IDX_HI_PRO_INST_PROC_DEF_KEY;
drop index ACT_IDX_HI_PRO_INST_PROC_TIME;
drop index ACT_IDX_HI_PI_PDEFID_END_TIME;

drop index ACT_IDX_HI_ACT_INST_START;
drop index ACT_IDX_HI_ACT_INST_END;
drop index ACT_IDX_HI_ACT_INST_PROCINST;
drop index ACT_IDX_HI_ACT_INST_COMP;
drop index ACT_IDX_HI_ACT_INST_STATS;
drop index ACT_IDX_HI_ACT_INST_TENANT_ID;
drop index ACT_IDX_HI_ACT_INST_PROC_DEF_KEY;
drop index ACT_IDX_HI_AI_PDEFID_END_TIME;

drop index ACT_IDX_HI_TASK_INST_TENANT_ID;
drop index ACT_IDX_HI_TASK_INST_PROC_DEF_KEY;
drop index ACT_IDX_HI_TASKINST_PROCINST;
drop index ACT_IDX_HI_TASKINSTID_PROCINST;

drop index ACT_IDX_HI_DETAIL_PROC_INST;
drop index ACT_IDX_HI_DETAIL_ACT_INST;
drop index ACT_IDX_HI_DETAIL_CASE_INST;
drop index ACT_IDX_HI_DETAIL_CASE_EXEC;
drop index ACT_IDX_HI_DETAIL_TIME;
drop index ACT_IDX_HI_DETAIL_NAME;
drop index ACT_IDX_HI_DETAIL_TASK_ID;
drop index ACT_IDX_HI_DETAIL_TENANT_ID;
drop index ACT_IDX_HI_DETAIL_PROC_DEF_KEY;
drop index ACT_IDX_HI_DETAIL_BYTEAR;

drop index ACT_IDX_HI_IDENT_LNK_USER;
drop index ACT_IDX_HI_IDENT_LNK_GROUP;
drop index ACT_IDX_HI_IDENT_LNK_TENANT_ID;
drop index ACT_IDX_HI_IDENT_LNK_PROC_DEF_KEY;
drop index ACT_IDX_HI_IDENT_LINK_TASK;

drop index ACT_IDX_HI_PROCVAR_PROC_INST;
drop index ACT_IDX_HI_PROCVAR_NAME_TYPE;
drop index ACT_IDX_HI_CASEVAR_CASE_INST;
drop index ACT_IDX_HI_VAR_INST_TENANT_ID;
drop index ACT_IDX_HI_VAR_INST_PROC_DEF_KEY;
drop index ACT_IDX_HI_VARINST_BYTEAR;

drop index ACT_IDX_HI_INCIDENT_TENANT_ID;
drop index ACT_IDX_HI_INCIDENT_PROC_DEF_KEY;
drop index ACT_IDX_HI_INCIDENT_PROCINST;

drop index ACT_IDX_HI_JOB_LOG_PROCINST;
drop index ACT_IDX_HI_JOB_LOG_PROCDEF;
drop index ACT_IDX_HI_JOB_LOG_TENANT_ID;
drop index ACT_IDX_HI_JOB_LOG_JOB_DEF_ID;
drop index ACT_IDX_HI_JOB_LOG_PROC_DEF_KEY;
drop index ACT_IDX_HI_JOB_LOG_EX_STACK;

drop index ACT_HI_EXT_TASK_LOG_PROCINST;
drop index ACT_HI_EXT_TASK_LOG_PROCDEF;
drop index ACT_HI_EXT_TASK_LOG_PROC_DEF_KEY;
drop index ACT_HI_EXT_TASK_LOG_TENANT_ID;
drop index ACT_IDX_HI_EXTTASKLOG_ERRORDET;

drop index ACT_IDX_HI_OP_LOG_PROCINST;
drop index ACT_IDX_HI_OP_LOG_PROCDEF;
drop index ACT_IDX_HI_OP_LOG_TASK;

drop index ACT_IDX_HI_ATTACHMENT_CONTENT;
drop index ACT_IDX_HI_ATTACHMENT_PROCINST;
drop index ACT_IDX_HI_ATTACHMENT_TASK;

drop index ACT_IDX_HI_COMMENT_TASK;
drop index ACT_IDX_HI_COMMENT_PROCINST;

drop table ACT_HI_PROCINST;
drop table ACT_HI_ACTINST;
drop table ACT_HI_VARINST;
drop table ACT_HI_TASKINST;
drop table ACT_HI_DETAIL;
drop table ACT_HI_COMMENT;
drop table ACT_HI_ATTACHMENT;
drop table ACT_HI_OP_LOG;
drop table ACT_HI_INCIDENT;
drop table ACT_HI_JOB_LOG;
drop table ACT_HI_BATCH;
drop table ACT_HI_IDENTITYLINK;
drop table ACT_HI_EXT_TASK_LOG;
