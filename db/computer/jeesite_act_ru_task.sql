create table act_ru_task
(
    ID_               varchar(64)             not null
        primary key,
    REV_              int                     null,
    EXECUTION_ID_     varchar(64)             null,
    PROC_INST_ID_     varchar(64)             null,
    PROC_DEF_ID_      varchar(64)             null,
    NAME_             varchar(255)            null,
    PARENT_TASK_ID_   varchar(64)             null,
    DESCRIPTION_      varchar(4000)           null,
    TASK_DEF_KEY_     varchar(255)            null,
    OWNER_            varchar(255)            null,
    ASSIGNEE_         varchar(255)            null,
    DELEGATION_       varchar(64)             null,
    PRIORITY_         int                     null,
    CREATE_TIME_      timestamp(3)            null,
    DUE_DATE_         datetime(3)             null,
    CATEGORY_         varchar(255)            null,
    SUSPENSION_STATE_ int                     null,
    TENANT_ID_        varchar(255) default '' null,
    FORM_KEY_         varchar(255)            null,
    constraint ACT_FK_TASK_EXE
        foreign key (EXECUTION_ID_) references act_ru_execution (ID_),
    constraint ACT_FK_TASK_PROCDEF
        foreign key (PROC_DEF_ID_) references act_re_procdef (ID_),
    constraint ACT_FK_TASK_PROCINST
        foreign key (PROC_INST_ID_) references act_ru_execution (ID_)
)
    collate = utf8_bin;

create index ACT_IDX_TASK_CREATE
    on act_ru_task (CREATE_TIME_);

