create table act_hi_actinst
(
    ID_                varchar(64)             not null
        primary key,
    PROC_DEF_ID_       varchar(64)             not null,
    PROC_INST_ID_      varchar(64)             not null,
    EXECUTION_ID_      varchar(64)             not null,
    ACT_ID_            varchar(255)            not null,
    TASK_ID_           varchar(64)             null,
    CALL_PROC_INST_ID_ varchar(64)             null,
    ACT_NAME_          varchar(255)            null,
    ACT_TYPE_          varchar(255)            not null,
    ASSIGNEE_          varchar(255)            null,
    START_TIME_        datetime(3)             not null,
    END_TIME_          datetime(3)             null,
    DURATION_          bigint                  null,
    TENANT_ID_         varchar(255) default '' null
)
    collate = utf8_bin;

create index ACT_IDX_HI_ACT_INST_END
    on act_hi_actinst (END_TIME_);

create index ACT_IDX_HI_ACT_INST_EXEC
    on act_hi_actinst (EXECUTION_ID_, ACT_ID_);

create index ACT_IDX_HI_ACT_INST_PROCINST
    on act_hi_actinst (PROC_INST_ID_, ACT_ID_);

create index ACT_IDX_HI_ACT_INST_START
    on act_hi_actinst (START_TIME_);

