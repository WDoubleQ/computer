create table act_ru_identitylink
(
    ID_           varchar(64)  not null
        primary key,
    REV_          int          null,
    GROUP_ID_     varchar(255) null,
    TYPE_         varchar(255) null,
    USER_ID_      varchar(255) null,
    TASK_ID_      varchar(64)  null,
    PROC_INST_ID_ varchar(64)  null,
    PROC_DEF_ID_  varchar(64)  null,
    constraint ACT_FK_ATHRZ_PROCEDEF
        foreign key (PROC_DEF_ID_) references act_re_procdef (ID_),
    constraint ACT_FK_IDL_PROCINST
        foreign key (PROC_INST_ID_) references act_ru_execution (ID_),
    constraint ACT_FK_TSKASS_TASK
        foreign key (TASK_ID_) references act_ru_task (ID_)
)
    collate = utf8_bin;

create index ACT_IDX_ATHRZ_PROCEDEF
    on act_ru_identitylink (PROC_DEF_ID_);

create index ACT_IDX_IDENT_LNK_GROUP
    on act_ru_identitylink (GROUP_ID_);

create index ACT_IDX_IDENT_LNK_USER
    on act_ru_identitylink (USER_ID_);

