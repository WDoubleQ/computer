create table act_hi_attachment
(
    ID_           varchar(64)   not null
        primary key,
    REV_          int           null,
    USER_ID_      varchar(255)  null,
    NAME_         varchar(255)  null,
    DESCRIPTION_  varchar(4000) null,
    TYPE_         varchar(255)  null,
    TASK_ID_      varchar(64)   null,
    PROC_INST_ID_ varchar(64)   null,
    URL_          varchar(4000) null,
    CONTENT_ID_   varchar(64)   null,
    TIME_         datetime(3)   null
)
    collate = utf8_bin;

