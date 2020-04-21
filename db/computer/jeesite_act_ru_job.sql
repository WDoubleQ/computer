create table act_ru_job
(
    ID_                  varchar(64)             not null
        primary key,
    REV_                 int                     null,
    TYPE_                varchar(255)            not null,
    LOCK_EXP_TIME_       timestamp(3)            null,
    LOCK_OWNER_          varchar(255)            null,
    EXCLUSIVE_           tinyint(1)              null,
    EXECUTION_ID_        varchar(64)             null,
    PROCESS_INSTANCE_ID_ varchar(64)             null,
    PROC_DEF_ID_         varchar(64)             null,
    RETRIES_             int                     null,
    EXCEPTION_STACK_ID_  varchar(64)             null,
    EXCEPTION_MSG_       varchar(4000)           null,
    DUEDATE_             timestamp(3)            null,
    REPEAT_              varchar(255)            null,
    HANDLER_TYPE_        varchar(255)            null,
    HANDLER_CFG_         varchar(4000)           null,
    TENANT_ID_           varchar(255) default '' null,
    constraint ACT_FK_JOB_EXCEPTION
        foreign key (EXCEPTION_STACK_ID_) references act_ge_bytearray (ID_)
)
    collate = utf8_bin;

