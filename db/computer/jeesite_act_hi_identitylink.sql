create table act_hi_identitylink
(
    ID_           varchar(64)  not null
        primary key,
    GROUP_ID_     varchar(255) null,
    TYPE_         varchar(255) null,
    USER_ID_      varchar(255) null,
    TASK_ID_      varchar(64)  null,
    PROC_INST_ID_ varchar(64)  null
)
    collate = utf8_bin;

create index ACT_IDX_HI_IDENT_LNK_PROCINST
    on act_hi_identitylink (PROC_INST_ID_);

create index ACT_IDX_HI_IDENT_LNK_TASK
    on act_hi_identitylink (TASK_ID_);

create index ACT_IDX_HI_IDENT_LNK_USER
    on act_hi_identitylink (USER_ID_);

