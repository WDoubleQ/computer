create table act_hi_detail
(
    ID_           varchar(64)   not null
        primary key,
    TYPE_         varchar(255)  not null,
    PROC_INST_ID_ varchar(64)   null,
    EXECUTION_ID_ varchar(64)   null,
    TASK_ID_      varchar(64)   null,
    ACT_INST_ID_  varchar(64)   null,
    NAME_         varchar(255)  not null,
    VAR_TYPE_     varchar(255)  null,
    REV_          int           null,
    TIME_         datetime(3)   not null,
    BYTEARRAY_ID_ varchar(64)   null,
    DOUBLE_       double        null,
    LONG_         bigint        null,
    TEXT_         varchar(4000) null,
    TEXT2_        varchar(4000) null
)
    collate = utf8_bin;

create index ACT_IDX_HI_DETAIL_ACT_INST
    on act_hi_detail (ACT_INST_ID_);

create index ACT_IDX_HI_DETAIL_NAME
    on act_hi_detail (NAME_);

create index ACT_IDX_HI_DETAIL_PROC_INST
    on act_hi_detail (PROC_INST_ID_);

create index ACT_IDX_HI_DETAIL_TASK_ID
    on act_hi_detail (TASK_ID_);

create index ACT_IDX_HI_DETAIL_TIME
    on act_hi_detail (TIME_);

