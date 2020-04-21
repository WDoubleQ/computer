create table act_ru_execution
(
    ID_               varchar(64)             not null
        primary key,
    REV_              int                     null,
    PROC_INST_ID_     varchar(64)             null,
    BUSINESS_KEY_     varchar(255)            null,
    PARENT_ID_        varchar(64)             null,
    PROC_DEF_ID_      varchar(64)             null,
    SUPER_EXEC_       varchar(64)             null,
    ACT_ID_           varchar(255)            null,
    IS_ACTIVE_        tinyint                 null,
    IS_CONCURRENT_    tinyint                 null,
    IS_SCOPE_         tinyint                 null,
    IS_EVENT_SCOPE_   tinyint                 null,
    SUSPENSION_STATE_ int                     null,
    CACHED_ENT_STATE_ int                     null,
    TENANT_ID_        varchar(255) default '' null,
    NAME_             varchar(255)            null,
    LOCK_TIME_        timestamp(3)            null,
    constraint ACT_FK_EXE_PARENT
        foreign key (PARENT_ID_) references act_ru_execution (ID_),
    constraint ACT_FK_EXE_PROCDEF
        foreign key (PROC_DEF_ID_) references act_re_procdef (ID_),
    constraint ACT_FK_EXE_PROCINST
        foreign key (PROC_INST_ID_) references act_ru_execution (ID_)
            on update cascade on delete cascade,
    constraint ACT_FK_EXE_SUPER
        foreign key (SUPER_EXEC_) references act_ru_execution (ID_)
)
    collate = utf8_bin;

create index ACT_IDX_EXEC_BUSKEY
    on act_ru_execution (BUSINESS_KEY_);

