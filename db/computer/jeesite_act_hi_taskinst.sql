create table act_hi_taskinst
(
    ID_             varchar(64)             not null
        primary key,
    PROC_DEF_ID_    varchar(64)             null,
    TASK_DEF_KEY_   varchar(255)            null,
    PROC_INST_ID_   varchar(64)             null,
    EXECUTION_ID_   varchar(64)             null,
    NAME_           varchar(255)            null,
    PARENT_TASK_ID_ varchar(64)             null,
    DESCRIPTION_    varchar(4000)           null,
    OWNER_          varchar(255)            null,
    ASSIGNEE_       varchar(255)            null,
    START_TIME_     datetime(3)             not null,
    CLAIM_TIME_     datetime(3)             null,
    END_TIME_       datetime(3)             null,
    DURATION_       bigint                  null,
    DELETE_REASON_  varchar(4000)           null,
    PRIORITY_       int                     null,
    DUE_DATE_       datetime(3)             null,
    FORM_KEY_       varchar(255)            null,
    CATEGORY_       varchar(255)            null,
    TENANT_ID_      varchar(255) default '' null
)
    collate = utf8_bin;

create index ACT_IDX_HI_TASK_INST_PROCINST
    on act_hi_taskinst (PROC_INST_ID_);

