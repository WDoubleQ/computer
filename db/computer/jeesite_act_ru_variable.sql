create table act_ru_variable
(
    ID_           varchar(64)   not null
        primary key,
    REV_          int           null,
    TYPE_         varchar(255)  not null,
    NAME_         varchar(255)  not null,
    EXECUTION_ID_ varchar(64)   null,
    PROC_INST_ID_ varchar(64)   null,
    TASK_ID_      varchar(64)   null,
    BYTEARRAY_ID_ varchar(64)   null,
    DOUBLE_       double        null,
    LONG_         bigint        null,
    TEXT_         varchar(4000) null,
    TEXT2_        varchar(4000) null,
    constraint ACT_FK_VAR_BYTEARRAY
        foreign key (BYTEARRAY_ID_) references act_ge_bytearray (ID_),
    constraint ACT_FK_VAR_EXE
        foreign key (EXECUTION_ID_) references act_ru_execution (ID_),
    constraint ACT_FK_VAR_PROCINST
        foreign key (PROC_INST_ID_) references act_ru_execution (ID_)
)
    collate = utf8_bin;

create index ACT_IDX_VARIABLE_TASK_ID
    on act_ru_variable (TASK_ID_);

