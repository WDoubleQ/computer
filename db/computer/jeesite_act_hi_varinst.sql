create table act_hi_varinst
(
    ID_                varchar(64)   not null
        primary key,
    PROC_INST_ID_      varchar(64)   null,
    EXECUTION_ID_      varchar(64)   null,
    TASK_ID_           varchar(64)   null,
    NAME_              varchar(255)  not null,
    VAR_TYPE_          varchar(100)  null,
    REV_               int           null,
    BYTEARRAY_ID_      varchar(64)   null,
    DOUBLE_            double        null,
    LONG_              bigint        null,
    TEXT_              varchar(4000) null,
    TEXT2_             varchar(4000) null,
    CREATE_TIME_       datetime(3)   null,
    LAST_UPDATED_TIME_ datetime(3)   null
)
    collate = utf8_bin;

create index ACT_IDX_HI_PROCVAR_NAME_TYPE
    on act_hi_varinst (NAME_, VAR_TYPE_);

create index ACT_IDX_HI_PROCVAR_PROC_INST
    on act_hi_varinst (PROC_INST_ID_);

create index ACT_IDX_HI_PROCVAR_TASK_ID
    on act_hi_varinst (TASK_ID_);

