create table act_hi_procinst
(
    ID_                        varchar(64)             not null
        primary key,
    PROC_INST_ID_              varchar(64)             not null,
    BUSINESS_KEY_              varchar(255)            null,
    PROC_DEF_ID_               varchar(64)             not null,
    START_TIME_                datetime(3)             not null,
    END_TIME_                  datetime(3)             null,
    DURATION_                  bigint                  null,
    START_USER_ID_             varchar(255)            null,
    START_ACT_ID_              varchar(255)            null,
    END_ACT_ID_                varchar(255)            null,
    SUPER_PROCESS_INSTANCE_ID_ varchar(64)             null,
    DELETE_REASON_             varchar(4000)           null,
    TENANT_ID_                 varchar(255) default '' null,
    NAME_                      varchar(255)            null,
    constraint PROC_INST_ID_
        unique (PROC_INST_ID_)
)
    collate = utf8_bin;

create index ACT_IDX_HI_PRO_INST_END
    on act_hi_procinst (END_TIME_);

create index ACT_IDX_HI_PRO_I_BUSKEY
    on act_hi_procinst (BUSINESS_KEY_);

