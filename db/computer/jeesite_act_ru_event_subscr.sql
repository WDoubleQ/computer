create table act_ru_event_subscr
(
    ID_            varchar(64)                               not null
        primary key,
    REV_           int                                       null,
    EVENT_TYPE_    varchar(255)                              not null,
    EVENT_NAME_    varchar(255)                              null,
    EXECUTION_ID_  varchar(64)                               null,
    PROC_INST_ID_  varchar(64)                               null,
    ACTIVITY_ID_   varchar(64)                               null,
    CONFIGURATION_ varchar(255)                              null,
    CREATED_       timestamp(3) default CURRENT_TIMESTAMP(3) not null,
    PROC_DEF_ID_   varchar(64)                               null,
    TENANT_ID_     varchar(255) default ''                   null,
    constraint ACT_FK_EVENT_EXEC
        foreign key (EXECUTION_ID_) references act_ru_execution (ID_)
)
    collate = utf8_bin;

create index ACT_IDX_EVENT_SUBSCR_CONFIG_
    on act_ru_event_subscr (CONFIGURATION_);

